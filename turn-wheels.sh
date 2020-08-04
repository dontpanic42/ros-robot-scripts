#!/bin/bash

rostopic pub --once /lwheel_desired_rate std_msgs/Int32 $1 &
rostopic pub --once /rwheel_desired_rate std_msgs/Int32 $1 &

sleep 3
