2025k04-0945 ; https://docs.arduino.cc/arduino-cli/getting-started/?_gl=1*3n4gqm*_up*MQ..*_ga*ODkyMTM0MzY5LjE3NjIyNDQ4MTU.*_ga_NEXN8H46L5*czE3NjIyNDQ4MTMkbzEkZzEkdDE3NjIyNDU1NTgkajYwJGwwJGg5OTA0MTAwNzM.
- `curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=/home/nff sh`
- `export PATH="$PATH:/home/nff"`
- `arduino-cli core update-index`
- see connected arduino boards, and the ports they're connected to `arduino-cli board list`
	- see the column "core" (for Arduino Micro it's `arduino:avr`)
- install the core you need `arduino-cli core install arduino:avr`
- see all installed cores `arduino-cli core list`
- see all installed boards `arduino-cli board listall`
- install a library; `arduino-cli lib install Keyboard`

- compile a sketch; `arduino-cli compile --fqbn arduino:avr:micro /media/nff/RED/s/avr/nyx_wryte/nyx_wryte.ino --verbose`
- upload a sketch; `arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:avr:micro /media/nff/RED/s/avr/nyx_wryte/nyx_wryte.ino --verbose`



---

install Arduino IDE on linux;
sudo apt update
sudo apt install arduino
sudo usermod -a -G dialout $USER
exit
logout / log back in
;; now you have Arduino IDE installed :))

created: 2025f25-1736
