CMAKE_FLAGS=-DCOMPILE_EXAMPLES=OFF \
	-DCMAKE_TOOLCHAIN_FILE=${PWD}/rostoolchain.cmake \
	-DCMAKE_CROSSCOMPILING=1

cross-compile:
	src/ament/ament_tools/scripts/ament.py build --symlink-install --cmake-args ${CMAKE_FLAGS}

bridge:
	src/ament/ament_tools/scripts/ament.py build --symlink-install --only-package ros1_bridge --cmake-args -DCMAKE_TOOLCHAIN_FILE=$(PWD)/rostoolchain.cmake -DCMAKE_CROSSCOMPILING=1
