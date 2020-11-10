@ echo off
REM       "ms" is for "make SDL"
REM       usage:
REM       ms myproj
REM       will compile myproj.c into myproj.exe, and run it if the compile process was successful

REM you can add the path to the present file to PATH

REM %1 is the first command line argument
SET progName=%1
SET includePath="R:/s/c/i"
SET sdlPath="R:/s/c/i/sdl2-mingw/sdl/SDL2-2.0.10/i686-w64-mingw32/include/SDL2"
SET sdlLib="R:/s/c/i/sdl2-mingw/sdl/SDL2-2.0.10/i686-w64-mingw32/lib"
SET includePathNix="~/s/cBao"

@ echo on
gcc -g0 %progName%.c -o %progName%.exe -Wall -Wextra -Wshadow -Wvla -pedantic-errors -I %sdlPath% -L %sdlLib% -lmingw32 -lSDL2main -lSDL2 -mwindows -ansi && %progName%.exe