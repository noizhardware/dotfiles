# usage: put 'source $HOME/path/to/this/alias.sh' in $HOME/.bashrc ; use `cd $HOME to go there`
# this file cannot have empty lines
# nope! 2025g19-1344 il problema sono i carriage returns di win10 / sticazzi, usa alias01.sh
echo porcodio!
alias lsa='ls -a'
alias lsd='ls -d'
#killdir(){
#	rm -r "$1"
#}
#
alias vol='gnome-alsamixer'
#
alias disk='df -h | grep Size && df -h | grep sda1'
alias version='lsb_release -a'
#
alias todo='cat $HOME/s/TODO.txt'
alias tode='nano $HOME/s/TODO.txt'
alias toad='$HOME/s/toad.sh'
#
alias lite='$HOME/s/lite/lite ./'
#
alias gsta='git status'
alias glog='git log'
alias gpul='git pull origin master'
alias gpus='git add --all && git commit -m "nm" && git push origin master'
#
alias siz='du -sbh *'
#
#alias off='sudo shutdown -P now'
alias off='poweroff'
alias sus='systemctl suspend'
alias sleep='systemctl suspend'
alias hib='systemctl hibernate'
#
alias refresh='source ~/.bashrc'
alias hh='cat /media/nff/RED/Work/git/dotfiles/linuxMint/alias00.sh'
alias eda='nano /media/nff/RED/Work/git/dotfiles/linuxMint/alias00.sh'
#
# sudo apt install speedtest-cli
alias speed='speedtest-cli --secure'
# sudo apt install lm-sensors
alias temp='sensors'
#
alias qq='exit'
#
# export PATH=$PATH:/path/to/my/file
