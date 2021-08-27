## Win10
- https://libsdl.org/release/SDL2-devel-2.0.16-mingw.tar.gz
- untar somewhere

- copy ...\SDL2-2.0.16\i686-w64-mingw32\include\SDL2 >> C:\MinGW\include\SDL2
- copy all files(not the folders) from ...\SDL2-2.0.16\i686-w64-mingw32\lib >> C:\MinGW\lib
- copy ...\SDL\SDL2-2.0.16\i686-w64-mingw32\bin\SDL2.dll >> C:\MinGW\bin\SDL2.dll
- in your C programs use `#include <SDL2/SDL.h>`
- and compile with `-lmingw32 -lSDL2main -lSDL2` (gcc)

## Linux
- `sudo apt install libsdl2-dev`
- LoL