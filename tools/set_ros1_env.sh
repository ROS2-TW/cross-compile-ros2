#!/bin/bash

ROOTFS=$(realpath ../rootfs)

export CMAKE_PREFIX_PATH="$ROOTFS/opt/ros/kinetic"
export PKG_CONFIG_PATH="$ROOTFS/opt/ros/kinetic/lib/pkgconfig"
export PYTHONPATH="$ROOTFS/opt/ros/kinetic/lib/python2.7/dist-packages"

export ROSLISP_PACKAGE_DIRECTORIES=""
export ROS_DISTRO="kinetic"
export ROS_ETC_DIR="$ROOTFS/opt/ros/kinetic/etc/ros"
export ROS_MASTER_URI="http://localhost:11311"
export ROS_PACKAGE_PATH="$ROOTFS/opt/ros/kinetic/share:$ROOTFS/opt/ros/kinetic/stacks"
export ROS_ROOT="$ROOTFS/opt/ros/kinetic/share/ros"
