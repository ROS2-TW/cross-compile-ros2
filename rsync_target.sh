#!/bin/bash

#Copy ros2_ws
rsync -rl --delete-after --info=progress2 ./rootfs/workspace/ros2_ws ubuntu@raspi:~
#Copy resolve_target_symlink.sh
rsync -rl --delete-after --info=progress2 ./tools/resolve_target_symlink.sh ubuntu@raspi:~/ros2_ws/resolve_target_symlink.sh
