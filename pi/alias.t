sudo nano ~/.bashrc
# alias alias_name='original_command'
exec bash

# alias for all users:
sudo nano /etc/profile.d/nameofmyaliasscript.sh
# put the aliases in the script, like
alias ciccio='./ciccio'
# save, exit and re-enter the terminal. profit.