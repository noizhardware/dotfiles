## Win10
- regedit in `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor`
- add a _String Value_ entry with the name `AutoRun` and as value, the full path of your `alias.cmd` file.
	This way, every time cmd is run, the aliases are loaded.
- in your `alias.cmd` use `DOSKEY` bindings. see `dotfiles/win10/alias.cmd`

## Linux
`sudo nano ~/.bashrc` or `sudo nano $HOME/.bashrc` (same effect)
`alias alias_name='original_command'` use single quotes around the original command!
`sudo source ~/.bashrc` to make the changes effective immediately, withour logging out and back in

run a specific program with an alias:
`alias dive='cd /home/ghost/; ./dive'`

alias for all users:
`sudo nano /etc/profile.d/nameofmyaliasscript.sh`
put the aliases in the script, like
`alias ciccio='./ciccio'`
save, exit and re-enter the terminal. profit.
