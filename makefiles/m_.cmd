@ echo off
REM       "m" is for "make"
REM       usage:
REM       m myproj
REM       will compile myproj.c into myproj.exe

REM you can add the path to the present file to PATH

REM %1 is the first command line argument
SET progName=%1
SET includePath="R:/s/c/i"
SET includePathNix="~/s/cBao"

@ echo on
gcc -g0 %progName%.c -o %progName%.exe -Wall -Wextra -Wshadow -Wvla -pedantic-errors -I %includePath% -ansi