* copy a folder `sudo cp -aR orig/ dest/`

* delete a directory and its contents `sudo rm -r dirname/`

* copy contents of a folder into another folder `scp -r /home/user/bla/origin_folder /home/user/bla/destination_folder`

* rename folder: `mv original_foldername new_foldername`

* rename or move a file: `mv -v original_filename new_filename ##the -v is just "verbose"`

* append a file(or more files)  to another, and write it to another file `cat file1 file2 file3 > destinationfile`

* append text to a file:
  echo "this is a new line" >> file.txt
  you can also print newlines with the -e option:
  echo -e "this is a new line \nthis is another new line" >> file.txt
  OR use printf for more complex stuff:
  printf "Hello, I'm %s.\n" $USER >> file.txt

* show files and sizes `sudo du -sh *`

* clean up some shit `sudo apt autoremove`
