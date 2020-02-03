# this is where the installers are stored:
cd /var/cache/apt/archives/

## something like -S to save installer in local folder

#to save installers without installing:
sudo apt-get install --download-only <package_name>

# to install a downloaded package, go in the folder where you saved 'em:
sudo dpkg -i <packege_name>
# to install the whole content of the folder:
sudo dpkg -i *

