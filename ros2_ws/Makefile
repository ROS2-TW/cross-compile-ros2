CMAKE_FLAGS=-DCOMPILE_EXAMPLES=OFF \
	-DCMAKE_TOOLCHAIN_FILE=${PWD}/rostoolchain.cmake \
	-DCMAKE_CROSSCOMPILING=1

cross-compile:
	src/ament/ament_tools/scripts/ament.py build --symlink-install --cmake-args ${CMAKE_FLAGS}

bridge:
	src/ament/ament_tools/scripts/ament.py build --symlink-install --only-package ros1_bridge --cmake-args ${CMAKE_FLAGS} 

sensor_msgs:
	src/ament/ament_tools/scripts/ament.py build --symlink-install --only-package sensor_msgs --cmake-args ${CMAKE_FLAGS}

bot:
	src/ament/ament_tools/scripts/ament.py build --symlink-install --only-package ros2_bot --cmake-args ${CMAKE_FLAGS}
