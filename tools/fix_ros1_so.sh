#!/bin/bash

ROOTFS=$(realpath ../rootfs)

PWD_SAVE=$PWD

cd ${PWD_SAVE}/../rootfs/opt/ros/kinetic/share

#Replace "/usr/lib/arm-linux/gnueabihf" with "$ROOTFS/usr/lib/arm-linux/gnueabihf"
sudo grep -rl "/usr/lib/arm-linux-gnueabihf/" * | sudo xargs sed -i "s|/usr/lib/arm-linux-gnueabihf/|$ROOTFS/usr/lib/arm-linux-gnueabihf/|g"

#Replace "/opt" with "$ROOTFS/opt"
sudo grep -rl "/opt/" * | sudo xargs sed -i "s|/opt/|$ROOTFS/opt/|g"

#Replace "/usr/include" with "$ROOTFS/usr/include"
sudo grep -rl "/usr/include" | sudo xargs sed -i "s|/usr/include|$ROOTFS/usr/include|g"

cd ${PWD_SAVE}/../rootfs/opt/ros/kinetic/lib/pkgconfig

#Replace "/usr/lib/arm-linux/gnueabihf" with "$ROOTFS/usr/lib/arm-linux/gnueabihf"
sudo grep -rl "\-l:/usr/lib/arm-linux-gnueabihf/" * | sudo xargs sed -i "s|/usr/lib/arm-linux-gnueabihf/|$ROOTFS/usr/lib/arm-linux-gnueabihf/|g"

#Replace "/opt" with "$ROOTFS/opt"
sudo grep -rl "/opt/" * | sudo xargs sed -i "s|/opt/|$ROOTFS/opt/|g"

#Replace "/usr/include" with "$ROOTFS/usr/include"
sudo grep -rl "/usr/include" * | sudo xargs sed -i "s|/usr/include|$ROOTFS/usr/include|g"
