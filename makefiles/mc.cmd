@ echo off
REM       "mc" is for "make curses"
REM       usage:
REM       m myproj
REM       will compile myproj.c into myproj.exe, and run it if the compile process was successful

REM you can add the path to the present file to PATH

REM %1 is the first command line argument
SET progName=%1
SET includePath="R:/s/c/i"
SET includePathNix="~/s/cBao"

@ echo on
gcc -g0 %progName%.c -o %progName%.exe -l pdcurses -Wall -Wextra -Wshadow -Werror=implicit-int -Werror=incompatible-pointer-types -Werror=int-conversion -Wvla -pedantic-errors -Werror=stack-usage=65536 -Werror=frame-larger-than=65536 -I %includePath% -ansi && %progName%.exe