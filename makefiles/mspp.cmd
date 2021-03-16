@ echo off
REM       "ms" is for "make SDL" pp for C++
REM       usage:
REM       ms myproj
REM       will compile myproj.c into myproj.exe, and run it if the compile process was successful

REM you can add the path to the present file to PATH

REM %1 is the first command line argument
SET progName=%1
SET includePath="R:/s/c/i"
SET sdlPath="R:/s/c/i/sdl2-mingw/sdl/SDL2-2.0.10/i686-w64-mingw32/include/SDL2"
SET sdlLib="R:/s/c/i/sdl2-mingw/sdl/SDL2-2.0.10/i686-w64-mingw32/lib"
SET sdlImgLib="R:/s/c/i/SDL2_image-devel-2.0.5-mingw/SDL2_image-2.0.5/x86_64-w64-mingw32/lib"
SET sdlTtfLib="R:/s/c/i/SDL2_ttf-2.0.15/x86_64-w64-mingw32/lib"
SET glewLib="R:/s/c/i/glew-2.1.0-win32/glew-2.1.0/lib/Release/x64"
SET includePathNix="~/s/cBao"

@ echo on
gcc -g0 %progName%.cpp -o %progName%.exe -Wall -Wextra -Wshadow -Werror=implicit-int -Werror=incompatible-pointer-types -Werror=int-conversion -Wvla -pedantic-errors -I %sdlPath% -I %includePath% -L %sdlLib% -L %sdlImgLib% -L %sdlTtfLib% -L %glewLib%-lmingw32 -lSDL2main -lSDL2 -lSDL2_image -lSDL2_ttf -lopengl32 -lglew32 -lglu32 -mwindows && %progName%.exe