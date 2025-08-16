apt install x11-repo
dpkg --configure -a
apt install x11-repo   << again to verify successful installation
apt install tigervnc fluxbox
apt-get update
apt-get upgrade
apt install tigervnc fluxbox    << again
apt install tigervnc fluxbox    << and again to verify successful installation

on android install https://play.google.com/store/apps/details?id=com.realvnc.viewer.android
it's a vnc client

apt install sdl2
git clone https://git.sr.ht/~rabbits/uxn
cd uxn
./build.sh
