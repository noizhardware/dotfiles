# usage: put `source /media/nff/RED/Work/git/dotfiles/linuxMint/alias01.sh` in `~/.bashrc` (and `~/.profile`) ; use `cd $HOME to go there`
echo the Ghostless Shell
echo $BASH_SOURCE
echo 2026c01-1428

#dircolors  --print-ls-colors
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=00:tw=30;42:ow=30;43:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.avif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*~=00;90:*#=00;90:*.bak=00;90:*.crdownload=00;90:*.dpkg-dist=00;90:*.dpkg-new=00;90:*.dpkg-old=00;90:*.dpkg-tmp=00;90:*.old=00;90:*.orig=00;90:*.part=00;90:*.rej=00;90:*.rpmnew=00;90:*.rpmorig=00;90:*.rpmsave=00;90:*.swp=00;90:*.tmp=00;90:*.ucf-dist=00;90:*.ucf-new=00;90:*.ucf-old=00;90:';
export LS_COLORS


## file system
	alias lsa='ls -a'
	alias lsd='ls -d */'
	alias lst='ls -t'
	alias lsr='ls -t -r'
	#alias disk='df -h | grep Size && df -h | grep sda1'
	alias dsk='df -h'
	alias siz='du -sbh *'
	alias sid='du -sh' # size Directory
	alias hre='pwd'
	kdr(){ # killdir
		rm -r "$1"
	}
	alias rmd=kdr

## misc
	alias rme='less README.md'

## PATH
	export PATH="$PATH:/home/nff"
	#export PYTHONHOME="/usr/bin"
	#unset PYTHONHOME

## GIT
	alias gsta='git status'
	alias glog='git log'
	alias gpul='git pull origin master'
	alias gpus='git add --all && git commit -m "nm" && git push origin master'
	gpux(){ #for a single file
		git add "$1" && git commit -m "nm" && git push origin master
	}

## SYSTEM
	alias version='lsb_release -a'
	alias term='echo $TERM'
	alias sys='inxi -Fxxxrzc0 --usb ; mokutil --sb-state ' # show all system info
	alias temp='sensors'
	# alias temp='xsensors'
		# sudo apt install lm-sensors
	alias gpu='nvidia-smi'
	alias pin='ping example.com'
	#alias speed='speedtest-cli | grep -e Download -e Upload -e ms'
	#alias speed='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3'
	alias speed='python3 /media/nff/RED/Work/git/dotfiles/py/speedtest.py'
	alias usbs='/media/nff/RED/Work/git/dotfiles/linuxMint/usbserial.sh'
	#alias read='xrandr --output HDMI-0 --gamma 1:1:1 --brightness 0.27 --set CTM '1431655765,0,1431655765,0,1431655765,0,1431655765,0,1431655765,0,1431655765,0,1431655765,0,1431655765,0,1431655765,0'' # reading light brightness
	# alias read='xrandr --output HDMI-0 --brightness 0.27' # reading light brightness
	alias rea='nvidia-settings -a '[DPY:HDMI-0]/DigitalVibrance=-1024' && xrandr --output HDMI-0 --brightness 0.32'
	alias ren='nvidia-settings -a '[DPY:HDMI-0]/DigitalVibrance=0' && xrandr --output HDMI-0 --brightness 1 ; lic ; lic ; sleep .5 ; liw ; liw'
	alias bip='aplay /media/nff/RED/s/c/stopwatch/1024hz.raw -N --disable-softvol'

## POWER
	alias off='poweroff'
	alias sus='systemctl suspend'
	alias slp='systemctl suspend'
	alias hib='sudo systemctl hibernate'
	alias rst='systemctl reboot'

## META
	alias rld='source ~/.bashrc'
	alias rrr='rld'
	alias hh='cat /media/nff/RED/Work/git/dotfiles/linuxMint/alias01.sh'
	alias eda='nano /media/nff/RED/Work/git/dotfiles/linuxMint/alias01.sh'
#	alias eda='nano $BASH_SOURCE'
	alias qq='exit'
	alias cls='clear'


## PROGRAMS quick launch
	alias nano="cp /media/nff/RED/Work/git/dotfiles/nano/.nanorc $HOME/.nanorc;nano"
	alias kan='sudo ~/apps/kanata --cfg /media/nff/RED/Work/git/dotfiles/kanata/kanata00.kbd'
	alias kal='/media/nff/RED/s/c/kalk/kalk'
	alias kri='~/apps/krita-5.2.11-x86_64.AppImage'
	alias mass='/media/nff/RED/s/c/mass/mass'
	alias alk='/media/nff/RED/s/c/alk/alk /media/nff/HOTdata/LOGS/alc.MASS'
	alias sz='/media/nff/RED/s/c/alk/alk /media/nff/HOTdata/LOGS/alc.MASS -sz 240'
	alias kg='/media/nff/RED/s/c/alk/alk /media/nff/HOTdata/LOGS/alc.MASS -kg 720'
	alias bonzo='/media/nff/HOTdata/shaderz/Bonzomatic/bonzomatic /media/nff/HOTdata/shaderz/Bonzomatic/config.json'
	alias bf='(cd /opt/betaflight/betaflight-configurator && exec sudo ./betaflight-configurator)'
	alias eth='python3 /media/nff/RED/s/py/eth/eth.py'
	alias plan='/media/nff/RED/s/bash/plan.sh'
	alias wea='curl wttr.in/bedogno'
	alias wec='curl wttr.in/~castelnovo+ne+monti'
	yt3(){ #youtube to mp3
		# num=${1:-5} #uses the first argument, with a default value of 5 if it isn't provided
		#python3 /home/nff/Downloads/yt-dlp.py "$1" -t mp3 -P "~/Downloads"
		/home/nff/Downloads/yt-dlp_linux/yt-dlp_linux "$1" -t mp3 -P "~/Downloads" --yes-playlist -o "%(playlist_index&{} - |)s%(title)s.%(ext)s"
	}
	# sea(){ #search ; usage; sea [filematch][searchterm] ; eg; `sea "*.md" porcodio`
	# 	find . -type f -name "$1" -print0 | xargs -0 grep --color -H -i "$2"
	# }
	# sea(){ # usage: sea [filematch] [searchterm] ; eg; `sea "*.md" porcodio`
	# 	find . -type f -name "$1" -print0 |
	# 	while IFS= read -r -d '' f; do
	# 		# match filename/path
	# 		if printf '%s\n' "$f" | grep -i --color=always -H "$2" >/dev/null; then
	# 			printf '%s\n' "$f"
	# 		fi
	# 		# match file contents
	# 		grep --color -H -i "$2" "$f"
	# 	done
	# }
	sea(){ # usage: sea [filematch] [searchterm] ; eg; `sea "*.md" porcodio`
		find . -type f -name "$1" -print0 |
		xargs -0 grep --color -H -i "$2" &&
		find . -type f -name "$1" | grep --color -i "$2"
	}
	sef(){ # search filenames ; usage: sef [filematch] [searchterm] ; eg; `sef "*.md" porcodio`
		find . -type f -name "$1" | grep --color -i "$2"
	}


	# sem(){ #search .md files ; usage; sem [searchterm] ; eg; `sem porcodio`
	# 	find . -type f -name "*.md" -print0 | xargs -0 grep --color -H -i "$1"
	# }
	sem(){ # usage: sem [searchterm] ; eg; `sem porcodio`
		sea "*.md" "$1"
	}

	# alias tor='/home/nff/Downloads/tor-browser/Browser/start-tor-browser'
	# alias tor='(/home/nff/Downloads/tor-browser/Browser/start-tor-browser &) && exit'
	alias tor='(/home/nff/Downloads/tor-browser/Browser/start-tor-browser &)'
	alias qbi='(/home/nff/Downloads/qbittorrent-5.1.2_x86_64.AppImage &)'
	alias sw='/media/nff/RED/s/c/stopwatch/sw'

## ZK0
	alias zk='/media/nff/RED/s/c/zk0/bin/zk0 /media/nff/HOTdata/LOGS/zet'
		alias zkk='cd /media/nff/HOTdata/LOGS/zet'
		# alias tt='nano template.md'
		alias fle='nano /media/nff/HOTdata/LOGS/zet/fleeting.txt'
		alias nn='/media/nff/HOTdata/LOGS/zet/new.sh'

## PATHs quick CD
	alias src='cd /media/nff/RED/s/c/'
	alias log='cd /media/nff/HOTdata/LOGS'
	alias eag='cd /media/nff/HOTdata/EAGLE'
	alias spi='cd /media/nff/HOTdata/SPICE'
	alias dof='cd /media/nff/RED/Work/git/dotfiles'
	alias site='cd /media/nff/RED/Work/git/noizhardware.github.io'
	alias root='cd /'
	alias gvi='cd /media/nff/HOTdata/graphViz'


## night light
	alias lic='gsettings set org.cinnamon.settings-daemon.plugins.color night-light-enabled false'
	alias liw='gsettings set org.cinnamon.settings-daemon.plugins.color night-light-enabled true'


## opening folders in file manager window
	alias ofo='xdg-open .'
	alias dld='xdg-open ~/Downloads'
	alias uu='xdg-open /media/nff/RED/uu'
	alias muk='xdg-open /media/nff/RED/MUCKE'
	alias ele='xdg-open /media/nff/RED/Work/electronics'
	alias dat='xdg-open /media/nff/RED/Work/electronics/datasheet/_components'
	alias apn='xdg-open /media/nff/RED/Work/git/electronics-app-notes'
	alias scr='xdg-open /media/nff/RED/screens'
	alias rec='xdg-open mtp://Google_Pixel_2_HT79P1A02452/Internal%20shared%20storage/SmartMob/SmartRecorder'
	alias arc='xdg-open /media/nff/C2E0E61BE0E61587/Users/nff/Videos/NVIDIA/Arc\ Raiders'

## opening files
	alias opn='xdg-open'
	alias oge='(xdg-open /media/nff/HOTdata/LOGS/GELD.ods &)'
	alias oin='xdg-open /media/nff/RED/!documents/contabilita/acc_2025/incoming.ods'
	alias oacc='xdg-open /media/nff/RED/!documents/contabilita/acc_2026/income2026.ods'
	alias ofor='xdg-open /media/nff/RED/!documents/contabilita/forfettaria2026.ods'
	alias ost='xdg-open /media/nff/RED/Work/minijack/mmix/BOMs/_stock.ods'
	alias oml='xdg-open /media/nff/RED/Work/minijack/mailinglist.ods'
	alias opri='xdg-open /media/nff/RED/Work/minijack/mmix/prices.ods'
	alias omod='xdg-open /media/nff/RED/Work/minijack/mmix/BOMs/_module_addup_02.ods'
	alias wlo='xdg-open /media/nff/RED/MUCKE/focus/whitenoiseLow.mp3'
	alias wno='xdg-open /media/nff/RED/MUCKE/focus/whitenoise.mp3'
	alias wha='xdg-open /media/nff/RED/MUCKE/focus/whitenoiseHarsh.mp3'
	alias ave='xdg-open /media/nff/RED/MUCKE/ost/Ave\ Maria\ -\ Hitman_\ Blood\ Money\ \ mp3.mp3'
	alias des='xdg-open /media/nff/RED/MUCKE/Red\ Hot\ Chili\ Peppers-Discography/2006\ -\ Stadium\ Arcadium\ -\ Mars/01\ -\ Desecration\ Smile.mp3'
	alias obom='xdg-open /media/nff/HOTdata/EAGLE/BRD/JLCPCB/example-assembly/example-BOM.csv'
	alias oass='xdg-open /media/nff/HOTdata/EAGLE/BRD/JLCPCB/example-assembly/example-assembly.csv'
