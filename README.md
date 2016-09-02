# ROS2 cross compiling for raspberry pi3

##Tested environment
* Host system: Ubuntu 16.04
* Target system: Ubuntu mate 16.04
* Cross compiler: Linaro GNU toolchain 5.31

## Insturctions

### 1.Install Linaro GNU toolchain
### 2.Prepare target root files system
### 3.Do cross compiling and have fun!

sh ./setup.sh

cd ros2_ws

make cross-compile

##Issue

###Can only compile without test functions and examples

##Reference

### Linaro toolchain

* https://releases.linaro.org/components/toolchain/binaries/5.3-2016.05/arm-linux-gnueabihf/
* https://releases.linaro.org/components/toolchain/binaries/5.3-2016.05/

###Cross Compiler

C++11 requirescompiler architecture level higher than "armv6":

* https://blog.kitware.com/cross-compiling-for-raspberry-pi/

###Debian/Ubuntu multi-arch issue

* https://www.raspberrypi.org/forums/viewtopic.php?f=33&t=123177
* https://github.com/raspberrypi/tools/issues/42

###Copy target root file system

Copy the root file system directly from SD card may break the symbolic link of your copied root file system, please check this Stack Overflow thread to see how to deal with this problem by using "rsync" command:

* http://stackoverflow.com/questions/19162072/installing-raspberry-pi-cross-compiler/19269715#19269715

###pkg-config wrapper for cross compiling

* http://stackoverflow.com/questions/38038490/cmake-cross-compile-cant-find-library?answertab=active#tab-top 
* https://autotools.io/pkgconfig/cross-compiling.html

###Fixing -rpath-link issues with cross-compilers

* https://sysprogs.com/w/fixing-rpath-link-issues-with-cross-compilers/

###Else

* http://stackoverflow.com/questions/22255975/cross-compile-opencv-project-on-ubuntu-for-raspberry-pi
