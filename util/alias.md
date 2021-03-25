`sudo nano ~/.bashrc`
`alias alias_name='original_command'` use single quotes around the original command!
`sudo source ~/.bashrc` to make the changes effective immediately, withour logging out and back in

run a specific program with an alias:
`alias dive='cd /home/ghost/; ./dive'`

bho
~~~~~~
sudo nano ~/.bashrc
# alias alias_name='original_command'
exec bash
source bash
source ~/.bashrc
~~~~~~

alias for all users:
`sudo nano /etc/profile.d/nameofmyaliasscript.sh`
put the aliases in the script, like
`alias ciccio='./ciccio'`
save, exit and re-enter the terminal. profit.
