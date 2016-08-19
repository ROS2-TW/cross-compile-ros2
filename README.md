# ROS2 cross compiling for raspberry pi3

##Environment requirement
* Ubuntu 16.04
* GCC 5.4 cross compiler

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
