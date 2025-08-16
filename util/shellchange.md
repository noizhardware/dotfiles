to change shell for a particular user
useful if you want an user to log cirectly into your program in ssh

`grep username /etc/passwd` ## check the user exists-check their current shell
`sudo usermod --shell /path_to_my_custom_program username`
`grep username /etc/passwd` to check the change was successfull
`cd /home/username` go into the user's home directory 
`sudo touch .hushlogin` create this file to suppress the ssh greeting message