#!/bin/bash
cp /etc/hostapd/hostapdTemp.conf /etc/hostapd/_hostapdTemp.conf
read -p "Insert network name: " networkName
read -p "Insert network password (minimun 8 characters, no spaces allowed): " networkPassword
sed -i "s/nameOfNetwork/$networkName/g" "/etc/hostapd/_hostapdTemp.conf"
sed -i "s/passwordNetwork/$networkPassword/g" "/etc/hostapd/_hostapdTemp.conf"
#rm finalTemplateHost.conf
mv /etc/hostapd/_hostapdTemp.conf /etc/hostapd/hostapd.conf
read -p "You need to reboot the system. Reboot now? " -n 1 -r
echo # move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
 sudo reboot
fi
echo # move to a new line
