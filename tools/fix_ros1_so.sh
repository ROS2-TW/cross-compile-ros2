#!/bin/bash

ROOTFS=$(realpath $1)

PWD_SAVE=$PWD

#Check if backup directory exist
if ! [ -d $ROOTFS/opt/ros/kinetic/share-bak/ ]; then
    cp -r $ROOTFS/opt/ros/kinetic/share $ROOTFS/opt/ros/kinetic/share-bak

    cd $ROOTFS/opt/ros/kinetic/share

    #Replace "/usr/lib/arm-linux/gnueabihf" with "$ROOTFS/usr/lib/arm-linux/gnueabihf"
    sudo grep -rl "/usr/lib/arm-linux-gnueabihf/" * | sudo xargs sed -i "s|/usr/lib/arm-linux-gnueabihf/|$ROOTFS/usr/lib/arm-linux-gnueabihf/|g"

    #Replace "/opt" with "$ROOTFS/opt"
    sudo grep -rl "/opt/" * | sudo xargs sed -i "s|/opt/|$ROOTFS/opt/|g"

    #Replace "/usr/include" with "$ROOTFS/usr/include"
    sudo grep -rl "/usr/include" | sudo xargs sed -i "s|/usr/include|$ROOTFS/usr/include|g"
fi

if ! [ -d $ROOTFS/opt/ros/kinetic/lib/pkgconfig-bak/ ]; then
    cp -r $ROOTFS/opt/ros/kinetic/lib/pkgconfig $ROOTFS/opt/ros/kinetic/lib/pkgconfig-bak

    cd $ROOTFS/opt/ros/kinetic/lib/pkgconfig

    #Replace "/usr/lib/arm-linux/gnueabihf" with "$ROOTFS/usr/lib/arm-linux/gnueabihf"
    sudo grep -rl "\-l:/usr/lib/arm-linux-gnueabihf/" * | sudo xargs sed -i "s|/usr/lib/arm-linux-gnueabihf/|$ROOTFS/usr/lib/arm-linux-gnueabihf/|g"

    #Replace "/opt" with "$ROOTFS/opt"
    sudo grep -rl "/opt/" * | sudo xargs sed -i "s|/opt/|$ROOTFS/opt/|g"

    #Replace "/usr/include" with "$ROOTFS/usr/include"
    sudo grep -rl "/usr/include" * | sudo xargs sed -i "s|/usr/include|$ROOTFS/usr/include|g"
fi

cd $PWD_SAVE
