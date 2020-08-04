#!/bin/sh

set -x

# Generates arduino libraries/headers for custom messages.
# First we need the arduino ide's "libraries" directory:

# "Do not use ~ here!"
ADLIBS="/home/osboxes/Downloads/arduino-1.8.11-linux64/arduino-1.8.11/libraries"
ROLIBS="$ADLIBS/ros_lib"


# Move to the catkin workspace
cd catkin_ws

catkin_make

# If the libraries already exist, delete the old ones first
if [ -d "$ROLIBS" ]; then
	rm -r "$ROLIBS"
fi

# Create the libs
rosrun rosserial_arduino make_libraries.py "$ADLIBS"
