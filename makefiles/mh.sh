# "mh" is for "make Haskell"
# usage:
# m myproj
# will compile myproj.hs into myproj,
# clean up muproj.o and myproj.hi,
# and run it if the compile process was successful

# you can add the path to the present file to PATH
# then you can use it:
# mh.sh blabla >> will compile blabla.hs into binary blabla
# $1 is the first command line argument
progName=$1
ghc --make $progName.hs && rm $progName.o && rm $progName.hi && ./$progName
