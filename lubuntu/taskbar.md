if the taskbar disappears:
- use `Ctrl + Alt + T` to bring up a terminal
- `sudo nano ~/.config/user-dirs.dirs`
- change the line `XDG_TEMPLATES_DIR="$HOME/"` into `XDG_TEMPLATES_DIR="$HOME/Documents"`
- if the directory `~/Documents` doesn't exist, create it
- `sudo lxpanel` 
