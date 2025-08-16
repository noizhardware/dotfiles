# usage: put `source /media/nff/RED/Work/git/dotfiles/linuxMint/alias01.sh` in `~/.bashrc` (and `~/.profile`) ; use `cd $HOME to go there`
echo the Ghostless Shell
echo alias01.sh - 2025h16-1310

alias lsa='ls -a'
alias lsd='ls -d */'
#alias disk='df -h | grep Size && df -h | grep sda1'
alias disk='df -h'
alias siz='du -sbh *'
alias here='pwd'

alias version='lsb_release -a'

# GIT
alias gsta='git status'
alias glog='git log'
alias gpul='git pull origin master'
alias gpus='git add --all && git commit -m "nm" && git push origin master'

#SYSTEM
alias sys='inxi -Fxxxrzc0 --usb' # show all system info
## POWER
alias off='poweroff'
alias sus='systemctl suspend'
alias slp='systemctl suspend'
alias hib='systemctl hibernate'
alias rst='systemctl reboot'

# META
alias refresh='source ~/.bashrc'
alias hh='cat /media/nff/RED/Work/git/dotfiles/linuxMint/alias01.sh'
alias eda='nano /media/nff/RED/Work/git/dotfiles/linuxMint/alias01.sh'


# sudo apt install lm-sensors
alias temp='sensors'
alias qq='exit'

# PROGRAMS quick launch
alias kan='sudo ~/apps/kanata --cfg /media/nff/RED/Work/git/dotfiles/kanata/kanata00.kbd'
alias ka='/media/nff/RED/s/c/kalk/kalk'
alias kri='~/apps/krita-5.2.11-x86_64.AppImage'

# PATHs quick CD
alias src='cd /media/nff/RED/s/c/'
alias log='cd /media/nff/HOTdata/LOGS'
alias dot='cd /media/nff/RED/Work/git/dotfiles'
alias root='cd /'

# night light
alias lic='gsettings set org.cinnamon.settings-daemon.plugins.color night-light-enabled false'
alias liw='gsettings set org.cinnamon.settings-daemon.plugins.color night-light-enabled true'


# opening folders in file manager window
alias dld='xdg-open ~/Downloads'
alias uu='xdg-open /media/nff/RED/uu'

# opening files
alias oge='xdg-open /media/nff/HOTdata/LOGS/GELD.ods'
alias ost='xdg-open /media/nff/RED/Work/minijack/mmix/BOMs/_stock.ods'
alias wlo='xdg-open /media/nff/RED/MUCKE/focus/whitenoiseLow.mp3'
