# ROS2 Cross compiling

##Tested environment
* Host system: Ubuntu 16.04
* Target system: Ubuntu mate 16.04
* Cross compiler: Linaro GNU toolchain 5.31

## How to

### Setup rootfs and cross compiler

Download rootfs from here:

* https://drive.google.com/uc?export=download&id=0B2DQhcp-s6aobGhJX0NnU25VZm8

> mv $DOWNLOAD_PATH/rootfs.zip cross-compile-ros2/

> sh ./setup.sh

### Do cross compile (with ros1_bridge)

#### Setup environment

> cd tools/

> source set_ros1_env.sh

#### Build 

> cd ros2_ws

> make cross-compile

##Trobleshotting

####1. fatal error: sensor_msgs/msg/XXX: No such file or directory

> make sensor_msgs

> make cross-compile

##Issues

Can only compile without test code and examples

##References

### Linaro toolchain

* https://releases.linaro.org/components/toolchain/binaries/5.3-2016.05/arm-linux-gnueabihf/
* https://releases.linaro.org/components/toolchain/binaries/5.3-2016.05/

###Cross Compiler

C++11 requires compiler architecture level higher than "armv6":

* https://blog.kitware.com/cross-compiling-for-raspberry-pi/

###Debian/Ubuntu multi-arch issue

* https://www.raspberrypi.org/forums/viewtopic.php?f=33&t=123177
* https://github.com/raspberrypi/tools/issues/42

###Root file system

After copy the rootfs, you will need to fix the broken symlink, execute the shell script "fixQualifiedLibraryPaths" after copy the rootfs will help you solve the problem:

* http://stackoverflow.com/questions/19162072/installing-raspberry-pi-cross-compiler/19269715#19269715

###pkg-config wrapper

* http://stackoverflow.com/questions/38038490/cmake-cross-compile-cant-find-library?answertab=active#tab-top 
* https://autotools.io/pkgconfig/cross-compiling.html

###Fixing -rpath-link issues with cross-compilers

* https://sysprogs.com/w/fixing-rpath-link-issues-with-cross-compilers/

###ROS1 Bridge

* https://github.com/ros2/ros1_bridge

###Modify ros1's cmake shared library path

* http://stackoverflow.com/questions/6758963/find-and-replace-with-sed-in-directory-and-sub-directories

###Else

* http://stackoverflow.com/questions/22255975/cross-compile-opencv-project-on-ubuntu-for-raspberry-pi
* https://gist.github.com/esteve/a2955dc681c46ac9f8a9222adb239284
