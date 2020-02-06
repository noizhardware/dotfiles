#dpkg --list ## see all installed packages
apt update &&
apt --fix-broken install &&
apt install midori &&
apt remove firefox
