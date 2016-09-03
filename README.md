# ROS2 Cross compiling

##Tested environment
* Host system: Ubuntu 16.04
* Target system: Ubuntu mate 16.04
* Cross compiler: Linaro GNU toolchain 5.31

## Instructions

### 1.Install Linaro GNU toolchain
### 2.Prepare target root files system
### 3.Do cross compile and have fun!

sh ./setup.sh

cd ros2_ws

make cross-compile

###Hack ROS1 bridge

####Modify ros1 pkg-config path

cd ${ROOTFS}/opt/ros/kinetic/lib/

cp -r pkgconfig/ pkgconfig-bak/

cd pkgconfig/

sudo grep -rl "\-l:\/usr\/lib\/arm-linux-gnueabihf\/" * | sudo xargs sed -i 's/\/usr\/lib\/arm-linux-gnueabihf\///g'

###Modify ros1 cmake shared library path

* http://stackoverflow.com/questions/6758963/find-and-replace-with-sed-in-directory-and-sub-directories

##Issues

###Can only compile without test code and examples

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

###Else

* http://stackoverflow.com/questions/22255975/cross-compile-opencv-project-on-ubuntu-for-raspberry-pi
