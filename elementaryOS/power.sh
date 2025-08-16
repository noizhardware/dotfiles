#settings>>power (select "when plugged in" or "battery")
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target &&
sudo reboot
