apt install openssh-server &&
systemctl status ssh && ## q to quit
ufw allow ssh

##start:
##systemctl start ssh

##stop:
##systemctl stop ssh

##boottime:
##systemctl disable ssh
##systemctl enable ssh
