apt install openssh-server &&
systemctl status ssh && ## q to quit
ufw allow ssh

## need to open router's port 22

##start:
##systemctl start ssh

##stop:
##systemctl stop ssh

##boottime:
##systemctl disable ssh
##systemctl enable ssh

## remote:
## ssh username@ipaddr
## ssh username@machinename