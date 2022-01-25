@echo off

:: Temporary system path at cmd startup

set PATH=%PATH%;"R:\s\c\kalk\"

:: Add to path by command
::DOSKEY add_python26=set PATH=%PATH%;"C:\Python26\"
::DOSKEY add_python33=set PATH=%PATH%;"C:\Python33\"

:: Commands : $T is the command separator, like &&

DOSKEY lsd=ls -d */
DOSKEY lsa=ls -a

:: size of all files in current dir
DOSKEY lss=find -maxdepth 1 -type f -printf "%%s\t%%f\n"

DOSKEY qq=exit

DOSKEY src=R: $T cd s $T cd c
DOSKEY mr=R: $T cd s $T cd c $T cd 666 $T cd vm $T cd 666MR

DOSKEY gits=git status


:: Common directories

::DOSKEY dropbox=cd "%USERPROFILE%\Dropbox\$*"
::DOSKEY research=cd %USERPROFILE%\Dropbox\Research\