#!/bin/bash

#Download Linaro gnu toolchain 5.31
wget -nc  https://releases.linaro.org/components/toolchain/binaries/5.3-2016.05/arm-linux-gnueabihf/gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf.tar.xz

#Compress the toolchain
tar xvf gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf.tar.xz
mv gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf cross_compiler

#Copy ros2_ws
mkdir -p rootfs/workspace
mv ros2_ws rootfs/workspace

#Create symbolic link
ln -s rootfs/workspace/ros2_ws/ ros2_ws
