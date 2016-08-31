set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
#set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(BUILD_TESTING 0)
add_definitions(-DCOMPILE_EXAMPLES=OFF)

set(CMAKE_VERBOSE_MAKEGILE ON)

set(
  CMAKE_FIND_ROOT_PATH
  ${CROSS_COMPILE_ROOT}
  ${TARGET_ROOT}
)

set(BOOST_INCLUDEDIR ${TARGET_ROOT}/usr/include/)
set(BOOST_LIBRARYDIR ${TARGET_ROOT}/usr/lib/arm-linux-gnueabihf/)

#set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${TARGET_ROOT}/opt/ros/kinetic/share/roscpp)
#set(roscpp_PREFIX ${TARGET_ROOT}/opt/ros/kinetic/share/roscpp)
#set(roscpp_INCLUDEDIR ${TARGET_ROOT}/opt/ros/kinetic/include/roscpp)
#set(roscpp_LIBDIR ${TARGET_ROOT}/opt/ros/kinetic/lib)

#cmake --help-module FindPythonLibs | tail -10
set(PYTHON_LIBRARY ${TARGET_ROOT}/usr/lib/python3.5/config-3.5m-arm-linux-gnueabihf/)
set(
  PYTHON_INCLUDE_DIRS
  ${TARGET_ROOT}/usr/include/arm-linux-gnueabihf/python3.5m/
  ${TARGET_ROOT}/usr/include/python3.5m/
)

include_directories(${TARGET_ROOT}/usr/include/python3.5m/)
