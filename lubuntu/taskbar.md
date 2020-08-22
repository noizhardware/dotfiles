sudo apt install --reinstall lxpanel
- `which lxpanel` to locate the program (should be /usr/bin/lxpanel)
- menu:applications - destop settings - lxqt settings - session settings - autostart - add - and in "command" paste that thing you found before
- `sudo reboot`





if the taskbar disappears:
- use `Ctrl + Alt + T` to bring up a terminal
- `sudo nano ~/.config/user-dirs.dirs`
- change the line `XDG_TEMPLATES_DIR="$HOME/"` into `XDG_TEMPLATES_DIR="$HOME/Documents"`
- if the directory `~/Documents` doesn't exist, create it
- `sudo lxpanel` 
- remove the file `~/.config/lxqt/panel.conf`
- `sudo reboot`
