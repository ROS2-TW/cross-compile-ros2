set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
#set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(BUILD_TESTING 0)
set(CMAKE_VERBOSE_MAKEGILE ON)

#Get parent directory
#set(PROJECT_ROOT ${CMAKE_CURRENT_LIST_DIR})
#get_filename_component(PROJECT_ROOT ${PROJECT_ROOT} DIRECTORY)
set(PROJECT_ROOT /home/shengwen-asus/cross-compile-ros2)

set(CMAKE_C_COMPILER ${PROJECT_ROOT}/gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER  ${PROJECT_ROOT}/gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-g++)

set(TARGET_ROOT ${PROJECT_ROOT}/rootfs)
set(CROSS_COMPILER_SYSROOT ${PROJECT_ROOT}/sysroot-linaro-glibc-gcc5.3-2016.02-arm-linux-gnueabihf)

set(PKG_CONFIG_EXECUTABLE ${PROJECT_ROOT}/tools/arm-unknown-linux-gnueabihf-pkg-config)

set(CMAKE_SYSROOT ${TARGET_ROOT})

set(
  CMAKE_FIND_ROOT_PATH
  ${TARGET_ROOT}
#  ${CROSS_COMPILER_SYSROOT}
)

set(BOOST_INCLUDEDIR ${TARGET_ROOT}/usr/include/boost/)
set(BOOST_LIBRARYDIR ${TARGET_ROOT}/usr/lib/arm-linux-gnueabihf/)

#set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${TARGET_ROOT}/opt/ros/kinetic/share/roscpp)
#set(roscpp_PREFIX ${TARGET_ROOT}/opt/ros/kinetic/share/roscpp)
#et(roscpp_INCLUDEDIR ${TARGET_ROOT}/opt/ros/kinetic/include/roscpp)
#set(roscpp_LIBDIR ${TARGET_ROOT}/opt/ros/kinetic/lib)

#cmake --help-module FindPythonLibs | tail -10
set(PYTHON_LIBRARY ${TARGET_ROOT}/usr/lib/python3.5/config-3.5m-arm-linux-gnueabihf/)
set(
  PYTHON_INCLUDE_DIRS
  ${TARGET_ROOT}/usr/include/arm-linux-gnueabihf/python3.5m/
  ${TARGET_ROOT}/usr/include/python3.5m/
)

include_directories(${TARGET_ROOT}/usr/include/python3.5m/)

set(PYTHON_MULTIARCH arm-linux-gnueabihf)

SET(FLAGS "-Wl,-rpath-link,${TARGET_ROOT}/opt/vc/lib -Wl,-rpath-link,${TARGET_ROOT}/lib/arm-linux-gnueabihf -Wl,-rpath-link,${TARGET_ROOT}/usr/lib/arm-linux-gnueabihf -Wl,-rpath-link,${TARGET_ROOT}/usr/local/lib")

UNSET(CMAKE_C_FLAGS CACHE)
UNSET(CMAKE_CXX_FLAGS CACHE)

SET(CMAKE_CXX_FLAGS ${FLAGS} CACHE STRING "" FORCE)
SET(CMAKE_C_FLAGS ${FLAGS} CACHE STRING "" FORCE)
