#!/usr/bin/env python

import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist

class WallFollower:
    def __init__(self):
        # Initialize the node
        rospy.init_node('wall_follower', anonymous=True)
        
        # Create a publisher to publish Twist messages to control the robot
        self.cmd_vel_pub = rospy.Publisher('/robot1/cmd_vel', Twist, queue_size=10)
        
        # Create a subscriber to the laser scanner data
        self.laser_sub = rospy.Subscriber('/robot1/laser', LaserScan, self.laser_callback)
        
        # Define the distance to the wall we want to maintain
        self.desired_distance_to_wall = 1.0  # meters
        self.kp = 1.0  # Proportional control constant
        
        # Set the rate at which to run the loop
        self.rate = rospy.Rate(10)  # 10 Hz
    
    def laser_callback(self, data):
        # Get the distance to the closest object in front of the robot
        front_distance = min(min(data.ranges[0:10]), min(data.ranges[-10:]))  # Front distance
        
        # Calculate error
        error = self.desired_distance_to_wall - front_distance
        
        # Calculate control effort
        control_effort = self.kp * error
        
        # Create Twist message
        twist = Twist()
        
        # Set forward speed
        twist.linear.x = 0.5  # Constant forward speed
        
        # Set angular speed to correct error
        twist.angular.z = control_effort
        
        # Publish the Twist message
        self.cmd_vel_pub.publish(twist)
    
    def run(self):
        rospy.spin()

if __name__ == '__main__':
    try:
        wall_follower = WallFollower()
        wall_follower.run()
    except rospy.ROSInterruptException:
        pass