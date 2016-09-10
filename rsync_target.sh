#!/bin/bash

USER=ubuntu
HOSTNAME=raspi

#Copy ros2_ws
rsync -rl --delete-after --info=progress2 ./rootfs/workspace/ros2_ws $USER@$HOSTNAME:~
#Copy resolve_target_symlink.sh
rsync -rl --delete-after --info=progress2 ./tools/resolve_target_symlink.sh $USER@$HOSTNAME:~/ros2_ws/resolve_target_symlink.sh
