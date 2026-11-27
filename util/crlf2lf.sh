#!/usr/bin/env bash
# 2026k24-1149
# crlf2lf.sh - convert CRLF and lone CR line endings to LF (Linux style)
# usage: crlf2lf.sh A B    reads A, writes B (asks first if A and B are the same file)
# keywords; mandare a capo, carriage return, windows, linux, convert

set -eu

me=${0##*/}
tmp=

if [ $# -ne 2 ]; then
	echo "usage: $me A B" >&2
	exit 1
fi

if [ ! -r "$1" ] || [ -d "$1" ]; then
	echo "$me: cannot read '$1'" >&2
	exit 1
fi

out=$2

# same file: confirm, then go through a temp file
# (writing B directly would truncate A before sed reads it)
if [ "$1" -ef "$2" ]; then
	printf '%s: A and B are the same file, convert in place? [y/N] ' "$me" >&2
	read -r ans || ans=
	case $ans in
	[yY] | [yY][eE][sS]) ;;
	*)
		echo "$me: aborted" >&2
		exit 1
		;;
	esac
	tmp=$(mktemp)
	trap 'rm -f "$tmp"' EXIT
	out=$tmp
fi

# -z: whole file is one record, so a CR at EOF and CRLF pairs are both seen
# CR with optional following LF -> LF
sed -Ez 's/\r\n?/\n/g' < "$1" > "$out"

# copy back with cat, not mv, to keep the file's inode, permissions and links
if [ -n "$tmp" ]; then
	cat "$tmp" > "$2"
fi
