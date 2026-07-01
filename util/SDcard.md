- format microSD in FAT32 from terminal;
	- `lsblk -p` ; to find device name
	- `sudo umount /dev/sdd1`
	- `sudo mkfs.vfat -F 32 -n DSTT /dev/sdd1`

- to try repair corrupted SD (non-destructive); `sudo fsck.vfat -a /dev/sdd1`


- dump microSD card to .img file;
	- `lsblk -p` ; to find device name
	- `sudo umount` all partitions present on the microSD card
	- NOW ; use the whole disk device (/dev/sdb), not a partition (/dev/sdb1), for both dump and restore, this captures/restores the partition table too
	- dump to .img file ; `sudo dd if=/dev/sdX of=~/sdcard_backup.img bs=4M status=progress conv=fsync`
	- check they are the same;
		- `sha256sum ~/sdcard_backup.img`
		- `sudo dd if=/dev/sdX bs=4M | sha256sum`
- to copy .img file to microSD;
	- `sudo dd if=~/sdcard_backup.img of=/dev/sdX bs=4M status=progress conv=fsync`


- delete partitions
	- unmount all available partitions on the device ; `sudo umount /dev/sdd1 /dev/sdd2`
	- wipe partition table ; `sudo wipefs -a /dev/sdd`
	- create a MBR partition table (use gpt instead if you specifically need GPT, but for SD cards MBR/msdos is the standard/most compatible choice) `sudo parted /dev/sdd --script mklabel msdos`
	- create one partition using the entire dissk `sudo parted /dev/sdd --script mkpart primary ext4 0% 100%`
	- verify with `lsblk -p`
	- format
		- fat32 `sudo mkfs.vfat -F 32 -n myPartitonName /dev/sdd1`
		- exFAT, for large files + cross-platform `sudo mkfs.exfat /dev/sdd1`
		- Linux filesystem `sudo mkfs.ext4 /dev/sdd1`















created: 2026g01-1325
