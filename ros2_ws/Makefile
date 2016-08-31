C_COMPILER_PATH=${PWD}/../cross_compiler/arm-unknown-linux-gnueabihf/bin/arm-unknown-linux-gnueabihf-gcc
CXX_COMPILER_PATH=${PWD}/../cross_compiler/arm-unknown-linux-gnueabihf/bin/arm-unknown-linux-gnueabihf-g++

CMAKE_FLAGS=-DCMAKE_TOOLCHAIN_FILE=${PWD}/rostoolchain.cmake \
	-DCMAKE_CROSSCOMPILING=1 \
	-DCOMPILE_EXAMPLES=OFF \
	-DCMAKE_C_COMPILER=${C_COMPILER_PATH} \
	-DCMAKE_CXX_COMPILER=${CXX_COMPILER_PATH}

cross-compile: pkg_config
	src/ament/ament_tools/scripts/ament.py build --symlink-install --cmake-args ${CMAKE_FLAGS}

intra: pkg_config
	src/ament/ament_tools/scripts/ament.py build --symlink-install --only-package intra_process_demo --cmake-args -DCMAKE_TOOLCHAIN_FILE=$(PWD)/rostoolchain.cmake -DCMAKE_CROSSCOMPILING=1

bridge: pkg_config
	src/ament/ament_tools/scripts/ament.py build --symlink-install --only-package ros1_bridge --cmake-args -DCMAKE_TOOLCHAIN_FILE=$(PWD)/rostoolchain.cmake -DCMAKE_CROSSCOMPILING=1

pkg_config:
	@sh ../tools/set_pkg_config.sh
