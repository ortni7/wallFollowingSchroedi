import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
import math

class WallFollower:
    def __init__(self):
        # Initialize the node
        rospy.init_node('wall_follower', anonymous=True)
        
        # Create a publisher to publish Twist messages to control the robot
        self.cmd_vel_pub = rospy.Publisher('/robot1/cmd_vel', Twist, queue_size=10)
        
        # Create a subscriber to the laser scanner data
        self.laser_sub = rospy.Subscriber('/robot1/laser', LaserScan, self.laser_callback)

        self.speed = 1

        self.distance_forward           = None
        self.distance_30_degrees_right  = None
        self.distance_right_wall        = None
        self.distance_betweenLasers     = None
        self.angle_wall_Rlaser          = None

        self.angle_wall_Rlaser_desired  = self.deg_to_rad(90)
        self.distance_right_wall

        # PID constants (start with small values and adjust as needed)
        self.kp = 1
        self.ki = 0.01
        self.kd = 0.1

        # PID state variables
        self.previous_error = 0.0
        self.integral = 0.0
        
        # Set the rate at which to run the loop
        self.rate = rospy.Rate(10)  # 10 Hz

    def deg_to_rad(self, deg):
        return deg * (3.14159 / 180)

    def calculate_control_effort(self, error, integral, previous_error, kp, ki, kd):
        integral += error
        integral = max(min(integral, 10), -10)  # Clamp the integral term to avoid windup

        derivative = error - previous_error

        control_effort = kp * error + ki * integral + kd * derivative
        control_effort = max(min(control_effort, 1.0), -1.0)  # Clamp control effort

        return control_effort, integral

    def laser_callback(self, data):
        self.distance_forward = data.ranges[len(data.ranges) // 2]

        index_30_degrees_right = int((self.deg_to_rad(-30) - data.angle_min) / data.angle_increment)
        self.distance_30_degrees_right = data.ranges[index_30_degrees_right]
        
        index_90_degrees_right = int((self.deg_to_rad(-90) - data.angle_min) / data.angle_increment)
        self.distance_right_wall = data.ranges[index_90_degrees_right]
        
        #rospy.loginfo("Forward Distance: %f, 30 Degrees Right Distance: %f, Right Wall Distance: %f",
        #              self.distance_forward, self.distance_30_degrees_right, self.distance_right_wall)
        
        self.distance_betweenLasers =  math.sqrt(   self.distance_right_wall**2 
                                                  + self.distance_30_degrees_right**2 
                                                  - 2 * self.distance_right_wall * self.distance_30_degrees_right * math.cos(self.deg_to_rad(60))
                                                )

        self.angle_wall_Rlaser      =  math.acos(   (self.distance_30_degrees_right**2 - self.distance_betweenLasers**2 - self.distance_right_wall**2)
                                                   /(-2 * self.distance_betweenLasers * self.distance_right_wall)
                                                )

        rospy.loginfo("angle_wall_Rlaser: %f, distance_betweenLasers: %f", math.degrees(self.angle_wall_Rlaser), self.distance_betweenLasers)


        # REGELUNG            
        error = self.angle_wall_Rlaser_desired - self.angle_wall_Rlaser
        # error > 0: robot moves to wall
        # error < 0: robot moves away from wall
        
        self.integral += error
        self.integral = max(min(self.integral, 10), -10)  # Clamp the integral term to avoid windup
        
        # Calculate derivative
        derivative = error - self.previous_error
        
        # Calculate control effort
        control_effort = self.kp * error + self.ki * self.integral + self.kd * derivative
        
        # Clamp control effort to reasonable limits
        control_effort = max(min(control_effort, 1.0), -1.0)

        self.previous_error = error

        twist = Twist()
        twist.linear.x = self.speed
        twist.angular.z = control_effort
        self.cmd_vel_pub.publish(twist)
    
    def run(self):
        rospy.spin()

if __name__ == '__main__':
    try:
        wall_follower = WallFollower()
        wall_follower.run()
    except rospy.ROSInterruptException:
        pass
