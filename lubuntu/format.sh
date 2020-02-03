fdisk -l #this will show you the name of the main partition, among others
parted dev/sda1 mkpart primary ext4 # dev/sda1 is the name here
#you gonya be asked start and end, do 0 - max