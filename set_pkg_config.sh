#!/bin/bash

ROOTFS=/home/shengwen-asus/cross-compile-ros2/rootfs

export PKG_CONFIG_DIR=${ROOTFS}/usr/lib/arm-linux-gnueabihf/pkgconfig:${ROOTFS}/opt/ros/kinetic/lib/pkgconfig
export PKG_CONFIG_LIBDIR=${ROOTFS}/usr/lib/arm-linux-gnueabihf/pkgconfig:${ROOTFS}/opt/ros/kinetic/lib/pkgconfig

pkg-config --cflags glib-2.0
pkg-config --cflags --libs roscpp
