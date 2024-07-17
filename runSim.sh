#!/bin/sh
catkin_make
source devel/setup.bash
rosrun ohm_mecanum_sim ohm_mecanum_sim_node.py &
rosrun ohm_reactive_rll wall_follow_node.py &
roscore



