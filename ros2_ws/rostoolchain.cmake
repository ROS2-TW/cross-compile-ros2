set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_C_COMPILER  /usr/bin/arm-linux-gnueabi-gcc-5) 
set(CMAKE_CXX_COMPILER /usr/bin/arm-linux-gnueabi-g++-5)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(BUILD_TESTING 0)

set(TARGET_ROOT /home/shengwen-asus/ros2_linux_root)
set(CROSS_COMPILE_ROOT /usr/arm-linux-gnueabi/)

set(
  CMAKE_FIND_ROOT_PATH
  ${TARGET_ROOT}
  ${CROSS_COMPILE_ROOT}
)

#set(BOOST_ROOT ${TARGET_ROOT}/usr/include/boost)
set(BOOST_INCLUDEDIR ${TARGET_ROOT}/usr/include/)
set(BOOST_LIBRARYDIR ${TARGET_ROOT}/usr/lib/arm-linux-gnueabihf/)

#cmake --help-module FindPythonLibs | tail -10
set(PYTHON_LIBRARY ${TARGET_ROOT}/usr/lib/python3.5/config-3.5m-arm-linux-gnueabihf/)
set(
  PYTHON_INCLUDE_DIRS
  ${TARGET_ROOT}/usr/include/arm-linux-gnueabihf/python3.5m/
  ${TARGET_ROOT}/usr/include/python3.5m/
)

include_directories(${TARGET_ROOT}/usr/include/arm-linux-gnueabihf/python3.5m/)
