#@ echo off
# "m" is for "make"
# usage:
# m myproj
# will compile myproj.c into myproj, and run it if the compile process was successful

# you can add the path to the present file to PATH
# then you can use it:
# m.sh blabla >> will compile blabla.c into binary blabla
# $1 is the first command line argument
progName=$1
includePath="R:/s/c/i"
includePathNix=~/s/cBao

#@ echo on
#gcc -g0 $progName.c -o $progName -Wall -Wextra -Wshadow -Werror=implicit-int -Werror=incompatible-pointer-types -Werror=int-conversion -Wvla -pedantic-errors -Werror=stack-usage=65535 -Werror=frame-larger-than=65535 -I $includePathNix -ansi && ./$progName
gcc -g0 $progName.c -o $progName -lm -Wall -Wextra -Wshadow -Werror=implicit-int -Werror=incompatible-pointer-types -Werror=int-conversion -Wvla -pedantic-errors -I $includePathNix -ansi && ./$progName
