- use `lsb_release -a` to check your ubuntu version
- check here https://wiki.ubuntu.com/Releases if your version is listed under **End Of Life**

- open the file **/etc/apt/sources.list**
- edit it so all the non-commented addresses point to http://old-releases.ubuntu.com/ubuntu
- `sudo apt update`
- `sudo apt upgrade`
- if "configuring grub pc" blue menu pops up, select the first one using **SPACEBAR**, then **ENTER**
