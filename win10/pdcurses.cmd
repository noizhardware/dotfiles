:: this will install pdcurses

mingw-get install mingw32-pdcurses && mingw-get install mingw32-libpdcurses

:: then you need to use:
:: gcc mysource.c -o outputexecutable.exe -lpdcurses