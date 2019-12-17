# https://stackoverflow.com/questions/2033997/how-to-compile-for-windows-on-linux-with-gcc-g
sudo apt-get install mingw-w64
sudo apt-get update

# For 64-bit use: x86_64-w64-mingw32-g++ << tested WORKING!!!!
# For 32-bit use: i686-w64-mingw32-g++


# Install a cross compiler, like mingw64 from your package manager. Then compile in the following way: instead of simply calling gcc call i686-w64-mingw32-gcc for 32-bit Windows or x86_64-w64-mingw32-gcc" for 64-bit Windows. I would also use the --static option, as the target system may not have all the libraries.
# 
# If you want to compile other language, like Fortran, replace -gcc with -gfortran in the previous commands.