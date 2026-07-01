#!/usr/bin/env bash
#
# tai-clock.sh — show approximate International Atomic Time (TAI) with
# rolling milliseconds.
#
# How it works:
#   1. Query an NTP server ONCE to learn how far your system clock is off
#      from true time (the "offset"). We don't re-query every frame — that
#      would spam the server and NTP isn't built for it.
#   2. Roll the local high-resolution clock (date +%s.%N), applying:
#         true_time = local_time + ntp_offset
#         TAI       = true_time  + OFFSET_SECONDS   (37 = UTC + 37)
#
# Press Ctrl-C to quit.

set -euo pipefail

NTP_SERVER="pool.ntp.org"
OFFSET_SECONDS=0        # TAI = UTC + 37. Set to 0 to show plain UTC.
                         # (Note: ADD 37 for TAI. To go the other way, use -37.)
FPS=20                   # display refreshes per second
RESYNC_SECONDS=62       # re-query NTP every N seconds (0 = never re-query)

# ---- one-shot NTP query -> prints offset in seconds (local+offset = true) ----
get_ntp_offset() {
  # Preferred: zero-dependency SNTP via python3
  if command -v python3 >/dev/null 2>&1; then
    python3 - "$NTP_SERVER" <<'PY' && return 0
import socket, struct, sys, time
host = sys.argv[1]
pkt  = b'\x1b' + 47 * b'\0'
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.settimeout(5)
t0 = time.time(); s.sendto(pkt, (host, 123))
data, _ = s.recvfrom(48); t3 = time.time()
secs, frac = struct.unpack('!12I', data)[10:12]
server = (secs - 2208988800) + frac / 2**32
print("%.6f" % (server - (t0 + t3) / 2))   # offset to add to local clock
PY
  fi
  # Fallbacks if python3 is missing
  if command -v sntp >/dev/null 2>&1; then
    sntp "$NTP_SERVER" 2>/dev/null | grep -Eo '^[+-]?[0-9]+\.[0-9]+' | head -1 && return 0
  fi
  if command -v ntpdate >/dev/null 2>&1; then
    ntpdate -q "$NTP_SERVER" 2>/dev/null \
      | grep -Eo 'offset [+-]?[0-9.]+' | tail -1 | awk '{print $2}' && return 0
  fi
  return 1
}

printf 'Querying %s ...\n' "$NTP_SERVER" >&2
if ! NTP_OFFSET="$(get_ntp_offset)" || [[ -z "${NTP_OFFSET:-}" ]]; then
  printf 'WARNING: could not reach NTP; using uncorrected local clock.\n' >&2
  NTP_OFFSET=0
fi

TOTAL=$(awk -v a="$NTP_OFFSET" -v b="$OFFSET_SECONDS" 'BEGIN{printf "%.6f", a+b}')
printf 'NTP offset: %ss  |  +%ss for TAI  =>  total correction %ss\n\n' \
       "$NTP_OFFSET" "$OFFSET_SECONDS" "$TOTAL" >&2

trap 'printf "\n"; exit 0' INT
SLEEP=$(awk -v f="$FPS" 'BEGIN{printf "%.4f", 1/f}')
last_sync=$(date +%s)

while true; do
  # periodic re-sync so the displayed time can't slowly drift
  if (( RESYNC_SECONDS > 0 )) && (( $(date +%s) - last_sync >= RESYNC_SECONDS )); then
    if NEW="$(get_ntp_offset)" && [[ -n "$NEW" ]]; then
      TOTAL=$(awk -v a="$NEW" -v b="$OFFSET_SECONDS" 'BEGIN{printf "%.6f", a+b}')
    fi
    last_sync=$(date +%s)
  fi

  now=$(date +%s.%N)
  tai=$(awk -v n="$now" -v o="$TOTAL" 'BEGIN{printf "%.3f", n + o}')
  secs=${tai%.*}; ms=${tai#*.}
  stamp=$(date -u -d "@$secs" +"%Y-%m-%d %H:%M:%S" 2>/dev/null \
          || date -u -r "$secs" +"%Y-%m-%d %H:%M:%S")   # macOS fallback
  printf '\r  TAI  %s.%s  ' "$stamp" "$ms"
  sleep "$SLEEP"
done
