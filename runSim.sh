#!/bin/sh
catkin_make
source devel/setup.bash
rosrun ohm_mecanum_sim ohm_mecanum_sim_node.py &
roscore
