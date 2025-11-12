# usage: put `source /media/nff/RED/Work/git/dotfiles/linuxMint/alias01.sh` in `~/.bashrc` (and `~/.profile`) ; use `cd $HOME to go there`
echo the Ghostless Shell
echo $BASH_SOURCE
echo 2025k12-2128

## file system
	alias lsa='ls -a'
	alias lsd='ls -d */'
	#alias disk='df -h | grep Size && df -h | grep sda1'
	alias disk='df -h'
	alias siz='du -sbh *'
	alias sizd='du -sh' # size Directory
	alias here='pwd'
	killdir(){
		rm -r "$1"
	}

## PATH
	export PATH="$PATH:/home/nff"
	#export PYTHONHOME="/usr/bin"
	#unset PYTHONHOME

## GIT
	alias gsta='git status'
	alias glog='git log'
	alias gpul='git pull origin master'
	alias gpus='git add --all && git commit -m "nm" && git push origin master'

## SYSTEM
	alias version='lsb_release -a'
	alias term='echo $TERM'
	alias sys='inxi -Fxxxrzc0 --usb ; mokutil --sb-state ' # show all system info
	alias temp='sensors'
		# sudo apt install lm-sensors
	alias pin='ping example.com'
	#alias speed='speedtest-cli | grep -e Download -e Upload -e ms'
	#alias speed='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3'
	alias speed='python3 /media/nff/RED/Work/git/dotfiles/py/speedtest.py'
	alias usbs='/media/nff/RED/Work/git/dotfiles/linuxMint/usbserial.sh'

## POWER
	alias off='poweroff'
	alias sus='systemctl suspend'
	alias slp='systemctl suspend'
	alias hib='sudo systemctl hibernate'
	alias rst='systemctl reboot'

## META
	alias refresh='source ~/.bashrc'
	alias hh='cat /media/nff/RED/Work/git/dotfiles/linuxMint/alias01.sh'
	alias eda='nano /media/nff/RED/Work/git/dotfiles/linuxMint/alias01.sh'
	alias qq='exit'
	alias cls='clear'


## PROGRAMS quick launch
	alias nano="cp /media/nff/RED/Work/git/dotfiles/nano/.nanorc $HOME/.nanorc;nano"
	alias kan='sudo ~/apps/kanata --cfg /media/nff/RED/Work/git/dotfiles/kanata/kanata00.kbd'
	alias ka='/media/nff/RED/s/c/kalk/kalk'
	alias kri='~/apps/krita-5.2.11-x86_64.AppImage'
	alias mass='/media/nff/RED/s/c/mass/mass'
	alias alk='/media/nff/RED/s/c/alk/alk /media/nff/HOTdata/LOGS/alc.MASS'
	alias sz='/media/nff/RED/s/c/alk/alk /media/nff/HOTdata/LOGS/alc.MASS -sz 240'
	alias kg='/media/nff/RED/s/c/alk/alk /media/nff/HOTdata/LOGS/alc.MASS -kg 720'
	alias bonzo='/media/nff/HOTdata/shaderz/Bonzomatic/bonzomatic /media/nff/HOTdata/shaderz/Bonzomatic/config.json'
	alias bf='(cd /opt/betaflight/betaflight-configurator && exec sudo ./betaflight-configurator)'
	alias eth='python3 /media/nff/RED/s/py/eth/eth.py'

## ZK0
	alias zk='/media/nff/RED/s/c/zk0/zk0 /media/nff/HOTdata/LOGS/zet'
		alias zkk='cd /media/nff/HOTdata/LOGS/zet'
		# alias tt='nano template.md'
		alias fle='nano /media/nff/HOTdata/LOGS/zet/fleeting.txt'
		alias nn='/media/nff/HOTdata/LOGS/zet/new.sh'

## PATHs quick CD
	alias src='cd /media/nff/RED/s/c/'
	alias log='cd /media/nff/HOTdata/LOGS'
	alias dot='cd /media/nff/RED/Work/git/dotfiles'
	alias site='cd /media/nff/RED/Work/git/noizhardware.github.io'
	alias root='cd /'


## night light
	alias lic='gsettings set org.cinnamon.settings-daemon.plugins.color night-light-enabled false'
	alias liw='gsettings set org.cinnamon.settings-daemon.plugins.color night-light-enabled true'


## opening folders in file manager window
	alias dld='xdg-open ~/Downloads'
	alias uu='xdg-open /media/nff/RED/uu'
	alias muk='xdg-open /media/nff/RED/MUCKE'
	alias dat='xdg-open /media/nff/RED/Work/electronics/datasheet/_components'
	alias apn='xdg-open /media/nff/RED/Work/git/electronics-app-notes'
	alias scr='xdg-open /media/nff/RED/screens'

## opening files
	alias opn='xdg-open'
	alias oge='xdg-open /media/nff/HOTdata/LOGS/GELD.ods'
	alias oin='xdg-open /media/nff/RED/!documents/contabilita/acc_2025/incoming.ods'
	alias oacc='xdg-open /media/nff/RED/!documents/contabilita/acc_2025/income2025.ods'
	alias ofor='xdg-open /media/nff/RED/!documents/contabilita/forfettaria2025.ods'
	alias ost='xdg-open /media/nff/RED/Work/minijack/mmix/BOMs/_stock.ods'
	alias oml='xdg-open /media/nff/RED/Work/minijack/mailinglist.ods'
	alias opri='xdg-open /media/nff/RED/Work/minijack/mmix/prices.ods'
	alias omod='xdg-open /media/nff/RED/Work/minijack/mmix/BOMs/_module_addup_02.ods'
	alias wlo='xdg-open /media/nff/RED/MUCKE/focus/whitenoiseLow.mp3'
	alias wno='xdg-open /media/nff/RED/MUCKE/focus/whitenoise.mp3'
	alias wha='xdg-open /media/nff/RED/MUCKE/focus/whitenoiseHarsh.mp3'
	alias obom='xdg-open /media/nff/HOTdata/EAGLE/BRD/JLCPCB/example-assembly/example-BOM.csv'
	alias oass='xdg-open /media/nff/HOTdata/EAGLE/BRD/JLCPCB/example-assembly/example-assembly.csv'
