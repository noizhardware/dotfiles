@ echo off
REM       "h" is for "haskell"
REM       usage:
REM       h myproj
REM       will compile myproj.hs into myproj.exe, clean .hi and .o, and run it if the compile process was successful

REM you can add the path to the present file to PATH

REM %1 is the first command line argument
SET progName=%1

@ echo on
ghc %progName%.hs && rm %progName%.hi && rm %progName%.o && echo ==Compilation was successful, now running... && %progName%.exe