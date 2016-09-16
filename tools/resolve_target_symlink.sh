#!/bin/bash
#This script is ugly, feel free to fix it

INITIAL_DIR=$PWD

ROS2_WS=$(realpath ../ros2_ws)

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

for enum_dir in $ROS2_WS/install/share/*
do
    adjust_symlinks $enum_dir/resource_index/parent_prefix_path
    adjust_symlinks $enum_dir/resource_index/
    adjust_symlinks $enum_dir/resource/
    adjust_symlinks $enum_dir/
    adjust_symlinks $enum_dir/cmake
    adjust_symlinks $enum_dir/environment
    adjust_symlinks $enum_dir/msg
    adjust_symlinks $enum_dir/msg/dds_opensplice
    adjust_symlinks $enum_dir/srv
    adjust_symlinks $enum_dir/srv/dds_opensplice
done

for enum_dir in $ROS2_WS/install/include/*
do
    adjust_symlinks $enum_dir/
    adjust_symlinks $enum_dir/msg
    adjust_symlinks $enum_dir/msg/dds_opensplice_c
    adjust_symlinks $enum_dir/msg/dds_opensplice
    adjust_symlinks $enum_dir/srv
    adjust_symlinks $enum_dir/srv/dds_opensplice_c
    adjust_symlinks $enum_dir/srv/dds_opensplice
    adjust_symlinks $enum_dir/imp
done
