- change 1005ha bios battery 2025w09-1751
- keyboard tasto `G`

## specs
- Asus Eee PC x101ch
- 1GB ram
- single 250GB hard drive
LED Backlit 10.1" LCD Display
WSVGA 1024 x 600 Resolution
Intel Atom N2600 Dual-Core 1.6 GHz CPU
10.1" screen
1.6 GHz Intel Atom Cedar Trail N2600 processor and 1GB DDR3
With an affordable design that's also slim and lightweight, the ASUS 320GB Eee PC X101CH-EU17 10.1" Netbook (Matte Black) affords ultra-fast computing and multitasking - thanks to its 1.6 GHz Intel Atom Cedar Trail N2600 processor and 1GB DDR3 onboard internal memory. It also features a Genuine Windows 7 Starter (32-bit) operating system, as well as a compact netbook-style keyboard for fast typing and computing. For storing all your media and documents, the netbook is equipped with a 5400RPM hard drive with 320GB of storage capacity.

For wireless connectivity, the X101CH affords WiFi 802.11 b/g/n communication. For wired connectivity, the netbook boasts dual USB 2.0 ports, a network 10/100 Ethernet RJ-45 jack, a VGA port and an HDMI output - as well as an integrated headphone/microphone combo audio jack, built-in high-quality speaker, 0.3-megapixel VGA webcam and even a 3-in-1 memory card reader that supports SD, SDHC and MMC type memory cards. For added convenience, the device is equipped with 3GB of web storage as well.

The 10.1" LCD WSVGA 1024 x 600 LED backlit screen makes computing a breeze and it also offers spectacular graphics. The 3-cell battery supports up to five hours of continuous use and even with the battery installed - the netbook only weighs about one kilogram. All in all, this netbook offers everything you might need if you're looking for a portable, multitasking device with a compact keyboard and HDMI connectivity for enjoying movies and video in full HD on your larger HDTV screen.

## access bios:
bash F2 at boot

## to boot from usb:
- **wipe the USB key with Aomei**
- etch the ISO on the USB key (Win32DiskImager)
- insert USB key in **LEFT USB port**
- hold `ESC` while powering up the computer
- choose **NOT** UEFI from the menu

## lubuntu
- choose "install lubuntu"
     - if it's freezing on "installation type" and the "install now" button is grayed out, click "back" and then again "continue"
- sound:
     `sudo apt install gnome-alsamixer`
     `gnome-alsamixer` >> raise all volumes, especially "headphones"(it's actually the speakers' volume LoL)
     `speaker-test`
  - laptop lid behavior
  nano /etc/systemd/logind.conf
  and search for "lid"   

## lubuntu (lubuntu-16.04.1-alternate-i386.iso)
installed this older version hoping for the touchpad to work...lol NOPE

but now it works:

`sudo apt-get purge xserver-xorg-input-synaptics`
`sudo apt update`
`sudo apt-get install xserver-xorg-input-synaptics`
`sudo reboot`
-- touchpad worked after a reboot
`synclient`
to veriyf it's working, should get you a list of settings
otherwise it'll just say synclient is not present

on next reboot, I was back to square one, not working
`sudo apt install xserver-xorg-input-all xserver-xorg-input-synaptics`
`sudo reboot`
now looks like it did the trick (xserver-xorg-input-all did it?)


`poweroff` to power off like a pro LoL

## tinycore
choose "Boot Core with X/Gui (TinyCore) + Installation Extension"
- on the desktop bar at the bottom, you have "tc-install". run it
- path to core >> "/mnt/sdb1/boot/core.gz"
- [frugal] [whole disk]
- select disk for core [sda]
- [install boot loader] and then click ">"
- formatting options: ext4
- boot options: "kmap=it waitusb=5" (key"=" is mapped to "ì", no shift)
- select "core and xgui" and below: "wifi support" "wireless firmware" "remaster tool" and "non US keyboard layout support"
- eventually it'll say "installation has completed"
- close the installer, remove the USB stick and reboot
- enjoy.

things you can download with tce-load (tinycore's package manager):
http://distro.ibiblio.org/tinycorelinux/7.x/x86/tcz/

tce-load -wi nano
tce-load -wi gcc
tce-load -wi compiletc
tce-load -wi kmaps
exit and choose "exit to prompt"
sudo loadkmap < /usr/share/kmap/qwerty/it.kmap
startx
cpanel >> Wallpaper >> choose solid color



## Damn Small Linux (DSL)
  - http://www.damnsmalllinux.org/
  - flash usbKey con UNetbootin
  - nammerda lol, faila e ti manda a un terminale inutile (non ha manco ls hahaha)

## 9front
- irc.freenode.net #cat-v
- metti 9front-8357.61c6d95c8810.386.iso su USB usando Win32DiskImager
- bash spacebar all'inizio per preventare il boot
     dovrei rimanere con un prompt >
     scrivi `*acpi=` >> `ENTER`
     `boot` >> `ENTER`
- bootargs: lascia il default
- quando prompta per "vgasize" dagli: 640x480x8
- quando prompta per "monitor is" dagli: vesa
- parte rio(il desktop gui), quando chiede il mouse >> puoi lasciare il default(ps2), o se vuoi `ps2intellimouse`
- (se all'avvio si impalla con un terminal col nulla, prova `boot` e dovrebbe partire)

- `@{rfork n; aux/realemu; aux/vga −m vesa −l 800x600x32}` per cambiare risoluzione dello schermo
### install:
- `inst/start`, e da li vedi come si chiama l'HDD sul quale vuoi installare >> HDDNAME (di solito è "sdE0" o una roba simile...)
- prepara disk:
~~~~
disk/mbr –m /386/mbr /dev/HDDNAME/data
disk/fdisk –baw /dev/HDDNAME/data
disk/prep –bw –a^(9fat nvram fossil cache swap) /dev/HDDNAME/plan9
disk/format –b /386/pbs –d –r 2 /dev/HDDNAME/9fat
/386/9load /386/9pcf /tmp/plan9.ini
~~~~
l'ultima riga se non la prende è OK
- ora puoi rifare `inst/start`
Install mbr or gpt (mbr, gpt)[no default]: `mbr`
`w q`
**prepdisk** >> ok col default
-> `w q` per accettare altri defaults
**mountfs** >> ok con tutti e 3 i defaults
ream: YES
**configdist** >> lascia default "local"
**confignet** >> lascia default -> faila perchè non ho cavo ethernet collegato, ma sticazzi
**mountdist** >> lascia default per tutte e 2 le robe che ti chiede
**copydist** >> premi enter, e inizia a copiare tutto sul disco
     ACHTUNG! Currently, there is no progress meter. For systems without DMA, the
copydist task may exceed one hour in duration. Disk activity may be verified by
inspecting the stats(8) window.
[s] e [c] dovrebbero indicare l'accesso al disco
poi a na certa ti dice _file system made_, poi passiamo a:
**tzsetup** >> Poland - loooool è uguale a quella italiana
**bootsetup** >> accetta il default
     Install the Plan 9 master boot record (y, n)[no default]: yes
     Mark the Plan 9 partition active (y, n)[no default]: yes
**finish**
E N J O I


**ACHTUNG** devo fare la roba nel manuale 4.3.6.1
devo trovare un modo di collegarmi a internet per scaricare quello script per evitare che succeda: "... /srv/cwfs.newfs.cmd file already exists"
lo script è questo: http://a-b.xyz/23/666a
lo trovi anche in R:\Programzz\OS\p9\9front\666a.rc

## plan9
- metti R:/Programzz/OS/p9/plan9/plan9.iso su USB usando Win32DiskImager
- nada - quando lo seleziono al boot, boota cmq con quello che ho gia sul pc MAH

## 9atom
  - R:/Programzz/OS/p9/9atom.iso con win32imager
  - nada - quando lo seleziono al boot faila e poi boota con quello che ho gia sul pc

## memory consumption:
free -m
lubuntu-16.04.2-desktop-i386: 132mb used
tinycore: 157mb used

,,hardware
,,computer
,,util
