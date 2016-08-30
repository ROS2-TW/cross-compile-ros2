#!/bin/bash

USER=ubuntu
HOST=raspi #e.g: 192.168.X.X

#Step.1: Copy files
rsync -rl --delete-after --info=progress2  ubuntu@raspi:/{lib,usr,opt,etc} $PWD/rootfs/\

#Step.2: Replace rootfs abosulted path to related path
tools/fixQualifiedLibraryPaths rootfs cross_compiler/arm-unknown-linux-gnueabihf/bin/arm-unknown-linux-gnueabihf-gcc
