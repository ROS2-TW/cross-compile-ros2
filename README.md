# ROS2 cross compiling for raspberry pi3

##Environment requirement
* Host system: Ubuntu 16.04
* Target system: Ubuntu mate 16.04

## Installation

### 1.Install cross compiler
### 2.Clone the repo
### 3.Get pi image (Ubuntu Mate 16.04)
### 4.Cross compile ROS2

cd ros2_ws

make cross-compile

#Issue

###1. Can't build FastRTPS examples

Comment out all examples in "src/eProsima/Fast-RTPS/examples/CMakeLists.txt"

###2. Can only compile without test functions

###3. Need to modify "pyconfig.h"

sudo vi ${rootfs}/usr/include/python3.5m/pyconfig.h

change "#include <arm-linux-gnueabihf/python3.5m/pyconfig.h>"

to "#include <../arm-linux-gnueabihf/python3.5m/pyconfig.h>"

##Reference

###Build custom cross compiler
In order to fully enable the C++11 functionality, we decide to compile the cross compiler. The following article could help you if you need to do so: 

* https://blog.kitware.com/cross-compiling-for-raspberry-pi/

Remeber to set the "Architecture level" to "armv7-a", or otherwise you may lost some C++11 abilities.

###Copy target root file system

Copy the root file system directly from SD card may break the symbolic link of your copied root file system, please check this Stack Overflow thread to see how to deal with this problem by using "rsync" command:

* http://stackoverflow.com/questions/19162072/installing-raspberry-pi-cross-compiler/19269715#19269715
