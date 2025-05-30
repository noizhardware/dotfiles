# usage: put 'source $HOME/path/to/this/alias.sh' in $HOME/.bashrc

alias lsa='ls -a'
alias lsd='ls -d'
killdir(){
	rm -r "$1"
}

alias vol='gnome-alsamixer'

alias disk='df -h | grep Size && df -h | grep sda1'
alias version='lsb_release -a'

alias todo='cat $HOME/s/TODO.txt'
alias tode='nano $HOME/s/TODO.txt'
alias toad='$HOME/s/toad.sh'

alias lite='$HOME/s/lite/lite ./'

alias gsta='git status'
alias glog='git log'
alias gpul='git pull origin master'
alias gpus='git add --all && git commit -m "nb" && git push origin master'

alias siz='du -sbh *'

#alias off='sudo shutdown -P now'
alias off='poweroff'
alias sus='systemctl suspend'
alias sleep='systemctl suspend'
alias hib='systemctl hibernate'

alias refresh='source $HOME/.bashrc'
alias hh='cat $HOME/s/dotfiles/alianew.sh'
alias eda='nano $HOME/s/dotfiles/alianew.sh'

# sudo apt install speedtest-cli
alias speed='speedtest-cli --secure'
# sudo apt install lm-sensors
alias temp='sensors'

alias qq='exit'

# export PATH=$PATH:/path/to/my/file
