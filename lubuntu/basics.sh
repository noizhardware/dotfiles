#dpkg --list ## see all installed packages
apt update &&
apt --fix-broken install &&
#apt install midori &&
apt install chromium-browser &&
apt remove firefox &&
##apt install net-tools
apt install curl
