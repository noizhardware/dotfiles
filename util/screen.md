systemd-inhibit --list
lists all things that inhibit;
- idle
- sleep
- shutdown

same, with session-manager;
```bash
for i in $(gdbus call --session --dest org.gnome.SessionManager --object-path /org/gnome/SessionManager --method org.gnome.SessionManager.GetInhibitors | grep -o "/org/gnome/SessionManager/Inhibitor[0-9]*"); do gdbus call --session --dest org.gnome.SessionManager --object-path $i --method org.gnome.SessionManager.Inhibitor.GetAppId; gdbus call --session --dest org.gnome.SessionManager --object-path $i --method org.gnome.SessionManager.Inhibitor.GetReason; done
```

created: 2026k25-1304
