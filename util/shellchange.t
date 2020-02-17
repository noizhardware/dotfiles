grep username /etc/passwd ## check the user exists-check their current shell
sudo usermod --shell /path_to_my_custom_program username
grep username /etc/passwd ## to check the change
cd /home/username ## then go into the user home directory 
sudo touch .hushlogin ## create this file, so no shitty greeting ssh message