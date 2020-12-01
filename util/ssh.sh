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
## ssh username@machinename -p[portnumber]
##  example: ciccio@porco.dio -p666

###### file transfer via ssh:
## on receiving machine, the user must own the destination folder
## sudo chown username foldername

## scp local_origin_file username@machine_address:/destination_path/

## for a folder . local -> ssh
## scp -r /local_folder/ username@machine_address:/destination_folder

## for a folder
## scp -r username@machine_address:/path/to/foo /home/user/Desktop/