#!/bin/bash

ROOTFS=$(realpath ../rootfs)

cd ../rootfs/opt/ros/kinetic/share

#Replace "/usr/lib/arm-linux/gnueabihf" with "$ROOTFS/usr/lib/arm-linux/gnueabihf"
sudo grep -rl "/usr/lib/arm-linux-gnueabihf/" * | sudo xargs sed -i "s|/usr/lib/arm-linux-gnueabihf/|$ROOTFS/usr/lib/arm-linux-gnueabihf/|g"

#Replace "/opt" with "$ROOTFS/opt"
sudo grep -rl "/opt/" * | sudo xargs sed -i "s|/opt/|$ROOTFS/opt/|g"
