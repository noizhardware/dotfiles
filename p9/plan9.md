## 9front on rPi3 (build-7408)
boots on plan 9 console, asks for bootarg:
  - `local!/dev/sdM0/fs`
  - asks for user -- type `glenda`
rio (the gui OS) is launched

- setup the keyboard:
  + `kbmap`
  + right click (button3) on desired locality
  + hit `Q` to save and quit

- `touch filename` to create a file
- `acme filename` to edit it

### acme:
- use center mouse button (button2) to click menu items
- so save a file, use `Put` (if the file isn't changed, `Put` is not present)

### shutdown:
- `fshalt` in any terminal
- `Ctrl + Alt + Del` will take you back to the plan 9 console, now you can safely turn off the computer

### plan9 C
each compiler-linker has a letter or number, will be x from now on.
eg - ARM64 compiler is 7c, the linker is 7l (works for the rPi3)
- to compile: `xc mysource.c`
- then link: `xl mysource.5`
- run the program: x.out (it's the default output file name)


#plan9
