@echo off

:: Temporary system path at cmd startup

set PATH=%PATH%;"R:\s\c\kalk\"
set PATH=%PATH%;"R:\s\c\crow\"
set PATH=%PATH%;"R:\s\c\dok\"
set PATH=%PATH%;"R:\s\c\uxnBao\bin\"
set PATH=%PATH%;"R:\s\c\666\vr\666MR\bin\"
set PATH=%PATH%;"R:\Programzz\coding\lite\"

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
DOSKEY mr=R: $T cd s $T cd c $T cd 666 $T cd vm $T cd 666MR
DOSKEY site=R: $T cd Work $T cd git $T cd noizhardware.github.io

:: GIT
DOSKEY gsta=git status
DOSKEY glog=git log
DOSKEY gpul=git pull origin master
DOSKEY gpus=git add --all $T git commit -m "nj" $T git push origin master

:: other
DOSKEY wea=curl wttr.in/milan

:: DOSKEY tapc=R:\s\c\tapCounter\tapcounter.exe
DOSKEY tw=R: $T cd s $T cd c $T cd twBao $T twbao nj $*

:: Common directories

::DOSKEY dropbox=cd "%USERPROFILE%\Dropbox\$*"
::DOSKEY research=cd %USERPROFILE%\Dropbox\Research\

:: META
DOSKEY hh=cat R:\Work\git\dotfiles\win10\alias.cmd
DOSKEY eda=nano R:\Work\git\dotfiles\win10\alias.cmd
