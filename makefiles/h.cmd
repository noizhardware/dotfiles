@ echo off
REM       "h" is for "haskell"
REM       usage:
REM       h myproj
REM       will compile myproj.hs into myproj.exe, clean .hi and .o, and run it if the compile process was successful

REM you can add the path to the present file to PATH

REM %1 is the first command line argument
SET progName=%1

REM @ echo on
ghc %progName%.hs -no-keep-hi-files -no-keep-o-files -O2 && echo ==Compilation was successful, now running... && %progName%.exe