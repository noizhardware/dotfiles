#!/bin/bash
# mak.sh 2025j25-1024
SRC=zk0.c
DEST=zk0
includePath=/media/nff/RED/s/c/i
CC=gcc
$CC -g0 $SRC -o $DEST -lasan -ldl -lm -lpthread -Wall -Wextra -Wshadow -Werror=implicit-int -Werror=incompatible-pointer-types -Werror=int-conversion -Wvla -pedantic-errors -Werror=stack-usage=65536 -Werror=frame-larger-than=65536 -I $includePath -ansi && ./$DEST
