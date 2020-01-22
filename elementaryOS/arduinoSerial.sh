#to enable arduino serial port to upload sketches
sudo chmod 666 ttyACM0 &&
sudo usermod -a -G dialout $USER &&
sudo reboot
