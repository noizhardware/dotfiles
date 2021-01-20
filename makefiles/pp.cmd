@ echo off
REM       "pp" is for "PreProcessor only"
REM       usage:
REM       pp myproj
REM       will run preprocessor on myproj.c and output it into myproj_pp.c

REM you can add the path to the present file to PATH

REM %1 is the first command line argument
SET progName=%1
SET includePath="R:/s/c/i"
SET includePathNix="~/s/cBao"

@ echo on
gcc -E -g0 %progName%.c -o %progName%_pp.c -Wall -Wextra -Wshadow -Werror=implicit-int -Werror=incompatible-pointer-types -Werror=int-conversion -Wvla -pedantic-errors -Werror=stack-usage=65536 -Werror=frame-larger-than=65536 -I %includePath% -ansi