#!/bin/bash
# maki.sh 2026c06-1100
# mak Ino for Arduino sketches
SRC=blink.ino
BOARD=nano
PORT=/dev/ttyACM0

arduino-cli compile --fqbn arduino:avr:$BOARD $SRC --verbose && arduino-cli upload -p $PORT --fqbn arduino:avr:$BOARD $SRC --verbose
