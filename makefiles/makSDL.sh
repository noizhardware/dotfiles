#!/bin/bash
# makSDL.sh 2026a10-1159
sdlPathNix=/media/nff/RED/s/c/i/sdl-nix/SDL2-2.0.12/include
sdlLib=R:/s/c/i/sdl2-mingw/sdl/SDL2-2.0.10/i686-w64-mingw32/lib
includePathNix=~/media/nff/RED/s/c/i
sdlLibNix=/media/nff/RED/s/c/i/sdl-nix/SDL2-2.0.12/build/.libs
name=$1

#gcc -g0 $name.c -o $name -Wall -Wextra -Wshadow -Werror=implicit-int -Werror=incompatible-pointer-types -Werror=int-conversion -Wvla -pedantic-errors -L $sdlLibNix -I $sdlPathNix -I $includePathNix -lSDL2main -lSDL2 -ldl -lm -lpthread -ansi && ./$name
gcc -g0 $name.c -o $name -Wall -Wextra -Wshadow -Werror=implicit-int -Werror=incompatible-pointer-types -Werror=int-conversion -Wvla -pedantic-errors -I $includePathNix `sdl2-config --cflags --libs` -lSDL2 -lSDL2_mixer -lSDL2main -ldl -lm -lpthread -ansi && ./$name
