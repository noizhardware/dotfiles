@echo off

:: R:\Work\git\dotfiles\win10\alias.cmd
:: Temporary system path at cmd startup

set PATH=%PATH%;"R:\Work\git\dotfiles\win10\"
set PATH=%PATH%;"R:\s\c\kalk\"
set PATH=%PATH%;"R:\s\c\crow\"
set PATH=%PATH%;"R:\s\c\dok\"
set PATH=%PATH%;"R:\s\c\uxnBao\bin\"
set PATH=%PATH%;"R:\s\c\666\vr\666MR\bin\"
set PATH=%PATH%;"R:\Programzz\coding\lite\"
set PATH=%PATH%;"C:\Program Files\LOVE\"
set PATH=%PATH%;"C:\Program Files\NASM\"
set PATH=%PATH%;"C:\Users\ninja\J903\bin\"
set PATH=%PATH%;"R:\s\c\alk\"
set PATH=%PATH%;"R:\s\upx-4.0.2-win64"
set PATH=%PATH%;"R:\s\kkrunchy"
set PATH=%PATH%;"R:\s\crinkler23\Win32"
set PATH=%PATH%;"R:\s\crinkler23\Win64"
set PATH=%PATH%;"R:\s\squishy-0.2.0"
set PATH=%PATH%;"R:\s\squishy-0.1.3"
set PATH=%PATH%;"C:\Program Files\Python311"
set PATH=%PATH%;"R:\Programzz\coding\shader\glslViewer-3.2.2-win64-AMD64\bin"
set PATH=%PATH%;"C:\Program Files\AutoHotkey"
set PATH=%PATH%;"R:\Programzz\utilities\ytdlp"
set PATH=%PATH%;"C:\msys64\mingw64\include\gtk-3.0\gtk"
set PATH=%PATH%;"C:\msys64\mingw64\include\gtk-3.0\gdk"
set PATH=%PATH%;"C:\msys64\mingw64\include\gtk-3.0"
set PATH=%PATH%;"C:\Users\ninja\AppData\Roaming\Python\Python311\Scripts"
set PATH=%PATH%;"R:\Programzz\utilities\ytdlp\ffmpeg-2025-01-13-git-851a84650e-full_build\bin"
:: Add to path by command
::DOSKEY add_python26=set PATH=%PATH%;"C:\Python26\"
::DOSKEY add_python33=set PATH=%PATH%;"C:\Python33\"

:: Commands : $T is the command separator, like &&

DOSKEY lsd=ls -d */
DOSKEY lsa=ls -a

:: size of all files in current dir
DOSKEY lss=find -maxdepth 1 -type f -printf "%%s\t%%f\n"

DOSKEY deldir=rm -r $*

DOSKEY qq=exit

DOSKEY src=R: $T cd s $T cd c
DOSKEY log=H: $T cd LOGS
DOSKEY mr=R: $T cd s $T cd c $T cd 666 $T cd vm $T cd 666MR
DOSKEY site=R: $T cd Work $T cd git $T cd noizhardware.github.io

:: GIT
DOSKEY gsta=git status
DOSKEY glog=git log
DOSKEY gpul=git pull origin master
DOSKEY gpus=git add --all $T git commit -m "nj" $T git push origin master

:: other
DOSKEY wea=curl wttr.in/milan
DOSKEY speed=R:\Programzz\utilities\ookla-speedtest-1.2.0-win64\speedtest.exe
DOSKEY pin=ping example.com
DOSKEY typ=R: $T cd s $T cd C $T cd TypingTest $T typ.exe
DOSKEY autohot=R:\Work\git\dotfiles\win10\autohot00.cmd
::DOSKEY yt3=R:\Programzz\utilities\ytdlp\yt-dlp.exe -f 140 --ffmpeg-location R:\Programzz\utilities\YoutubeDownloader\ffmpeg.exe -o "~/YouTube/" --print after_move:filepath $*
DOSKEY yt3=R: $T cd __ytmp3 $T R:\Programzz\utilities\ytdlp\yt-dlp.exe -f 140 --ffmpeg-location R:\Programzz\utilities\YoutubeDownloader\ffmpeg.exe --print after_move:filepath $*
::DOSKEY yt3=ytmp3 $*

:: DOSKEY tapc=R:\s\c\tapCounter\tapcounter.exe
:: $* represents user command parameters
DOSKEY tw=cd .. $T cd .. $T cd .. $T cd .. $T cd .. $T R: $T cd s $T cd c $T cd twBao $T twbao nj $*
DOSKEY twsh=curl "https://www.noizhardware.com/etc/tw.txt" --ssl-no-revoke
DOSKEY twnews=curl "https://registry.twtxt.org/api/plain/tweets" --ssl-no-revoke

:: Common directories

::DOSKEY dropbox=cd "%USERPROFILE%\Dropbox\$*"
::DOSKEY research=cd %USERPROFILE%\Dropbox\Research\

:: META
DOSKEY hh=cat R:\Work\git\dotfiles\win10\alias.cmd
DOSKEY eda=nano R:\Work\git\dotfiles\win10\alias.cmd
