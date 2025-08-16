#dpkg --list ## see all installed packages
sudo apt update &&
sudo apt --fix-broken install &&
sudo apt upgrade &&
#apt install midori &&
apt install chromium-browser &&
apt remove firefox &&
##apt install net-tools
apt install curl
## cd to atom installer directory (atom-amd64.deb)
#sudo dpkg -i atom-amd64.deb
#sudo apt -f install
