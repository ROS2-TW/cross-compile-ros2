#!/bin/bash
#This script is ugly, feel free to fix it

INITIAL_DIR=$PWD

ROS2_WS=$(realpath ./ros2_ws)

function adjust_symlinks
{
    echo "Adjusting the symlinks in $1"
    cd $1

    ls -la | grep -E "^l.*?-> \/" | while read i;
    do
    
    file_name=$(echo "$i" | awk '{print $9}')
    link_to=$(echo "$i" | awk '{print $11}')

    #Replace the symlink path
    spilt_path=${link_to##*ros2_ws/}
    new_path=$ROS2_WS/$spilt_path
    echo $new_path

    sudo rm $file_name
    sudo ln -s $new_path $file_name

    done

    cd $INITIAL_DIR
}

adjust_symlinks $ROS2_WS/install
adjust_symlinks $ROS2_WS/install/lib
adjust_symlinks $ROS2_WS/install/bin
