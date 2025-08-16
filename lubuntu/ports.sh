# to list used ports
netstat -nl

netstat -tulpn | grep :80
netstat -tulpn | grep :23
netstat -tulpn | grep LISTEN

lsof -i -P -n | grep LISTEN
lsof -i:23 ##for a specific port##

ss -t ##all TCP ports##


# firewall status
ufw stats


# netstat -tulpn
# netstat -t
