@echo off

:: Temporary system path at cmd startup

:: set PATH=%PATH%;"C:\Program Files\Sublime Text 2\"

:: Add to path by command

::DOSKEY add_python26=set PATH=%PATH%;"C:\Python26\"
::DOSKEY add_python33=set PATH=%PATH%;"C:\Python33\"

:: Commands : $T is the command separator, like &&

DOSKEY lsd=ls -d */
DOSKEY lsa=ls -a
DOSKEY qq=exit
DOSKEY src=R: $T cd s $T cd c


:: Common directories

::DOSKEY dropbox=cd "%USERPROFILE%\Dropbox\$*"
::DOSKEY research=cd %USERPROFILE%\Dropbox\Research\