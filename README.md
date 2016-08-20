# ROS2 cross compiling for raspberry pi3

##Environment requirement
* Host system: Ubuntu 16.04
* Target system: Ubuntu mate 16.04

## Installation

### 1.Install cross compiler
### 2.Clone the repo
### 3.Get pi image (Ubuntu Mate 16.04)
### 4.Cross compile ROS2

cd ros2_ws

make cross-compile

#Issue

###1. Can't build FastRTPS examples

Comment out all examples in "src/eProsima/Fast-RTPS/examples/CMakeLists.txt"

###2. Can only compile without test functions

##Reference

In order to fully enable the C++11 functionality, we decide to compile the cross compiler. The following article will help you very much if you also want to do this: 

* https://blog.kitware.com/cross-compiling-for-raspberry-pi/

Remeber to set the "Architecture level" to "armv7-a", or otherwise you may lost some C++11 abilities.
