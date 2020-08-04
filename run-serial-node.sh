#!/bin/sh

PORT=/dev/ttyUSB0
echo "Running serial node on $PORT"
source "~/catkin_ws/devel/setup.bash"
rosrun rosserial_python serial_node.py "$PORT"
