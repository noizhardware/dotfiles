2023a07-1307
appena avviato, nella schermata di login, in alto a SX, "Session" dropdown menu >> lXQt Desktop
cosi il Suspend funziona!


2023a05-1528 ALL FAIL


uname -r
lspci | grep -i vga
sudo apt purge nvidia*
sudo apt install --install-recommends linux-generic
sudo apt autoremove
Now reboot, and select kernel 5.4 at grub menu.
uname -r >> now should be 5.4.0-135-generic
sudo apt remove --purge linux-generic-hwe-20.04 linux-hwe-* linux-modules-5.11* linux-modules-extra-5.11*
sudo ubuntu-drivers autoinstall
sudo reboot

sudo apt install intel-microdcode

schedavideo
sudo purge nvidia*
sudo ubuntu-drivers autoinstall
sudo apt update
sudo apt clean
sudo apt autoremove
sudo apt update
sudo apt upgrade
sudo apt reboot

sudo nano /etc/default/grub
change GRUB_CMDLINE_LINUX="" to GRUB_CMDLINE_LINUX="nouveau.modeset=0"
sudo update-grub && reboot