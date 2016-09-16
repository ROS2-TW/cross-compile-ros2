#!/bin/bash

#Download Linaro gnu toolchain 5.31
wget -nc  https://releases.linaro.org/components/toolchain/binaries/5.3-2016.05/arm-linux-gnueabihf/gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf.tar.xz

#Compress the toolchain
tar xvf gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf.tar.xz
mv gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf cross_compiler

#decompress rootfs
tar Jxvf rootfs.tar.xz
cd tools
sh fix_ros1_so.sh
cd ..

#Copy ros2_ws
mkdir -p rootfs/workspace
cd ros2_ws
mkdir src
wget -N https://raw.githubusercontent.com/ros2/ros2/release-latest/ros2.repos
vcs import ./src < ros2.repos
cd ..
mv ros2_ws rootfs/workspace
