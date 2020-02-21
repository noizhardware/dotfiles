sudo nano ~/.bashrc
# alias alias_name='original_command'
sudo source ~/.bashrc ## to make the changes effective immediately, withour log-out-in

## exec a specific program:
## alias dive="cd /home/ghost/; ./dive"sudo nano ~/.bashrc
# alias alias_name='original_command'
exec bash
source bash
source ~/.bashrc

# alias for all users:
sudo nano /etc/profile.d/nameofmyaliasscript.sh
# put the aliases in the script, like
alias ciccio='./ciccio'
# save, exit and re-enter the terminal. profit.
