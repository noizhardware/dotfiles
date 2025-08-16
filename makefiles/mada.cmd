@ echo off
REM       "m" is for "make", ADA programs
REM       usage:
REM       mada myproj
REM       will compile myproj.adb into myproj.exe, and run it if the compile process was successful

REM you can add the path to the present file to PATH

REM %1 is the first command line argument
SET progName=%1
REM SET includePath="R:/s/c/i"
REM SET includePathNix="~/s/cBao"

@ echo on
gcc -c %progName%.adb && gnatbind %progName%.ali && gnatlink %progName% && rm %progName%.ali && rm %progName%.o && %progName%.exe
REM gnatmake %progName%.adb
