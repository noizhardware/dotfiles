to add a directory to the PATH permanently:

nano $HOME/.bashrc

add line:
export PATH="/path/to/dir:$PATH"

save, exit and then apply with:
source $HOME/.bashrc
