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

        # Speed controll constants
        self.speed_default                  = 1
        self.speed_damping_threshhold       = 2 # distance in meters
        self.speed_stop_threshhold          = 1

        # geometry vars for PID calculation input
        self.distance_forward               = None  # distance to the wall
        self.distance_30_degrees_right      = None  # distance to the wall
        self.distance_right_wall            = None  # distance of laser 90 deg to the right
        self.distance_betweenLasers         = None  # distance between 30_degrees_right laser and right_wall (side of the triangle on the wall)
        self.angle_wall_Rlaser              = None  # angle between dis_betweenLasers and dis_right_wall

        self.angle_wall_Rlaser_desired      = self.deg_to_rad(90)
        self.distance_right_wall_desired    = 1.0

        # PID constants for angle
        self.kp_angle = 1.0
        self.ki_angle = 0.01
        self.kd_angle = 0.05

        # PID state variables for angle
        self.previous_error_angle = 0.0
        self.integral_angle = 0.0

        # PID constants for distance
        self.kp_distance = 0.1
        self.ki_distance = 0.0
        self.kd_distance = 0.0

        # PID state variables for distance
        self.previous_error_distance = 0.0
        self.integral_distance = 0.0
        
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
    
    def compute_pid_control(self, control_type):
        if control_type == 'angle':
            error = self.angle_wall_Rlaser_desired - self.angle_wall_Rlaser
            control_effort, self.integral_angle = self.calculate_control_effort(
                error, self.integral_angle, self.previous_error_angle, 
                self.kp_angle, self.ki_angle, self.kd_angle
            )
            self.previous_error_angle = error
        elif control_type == 'distance':
            error = self.distance_right_wall_desired - self.distance_right_wall
            control_effort, self.integral_distance = self.calculate_control_effort(
                error, self.integral_distance, self.previous_error_distance, 
                self.kp_distance, self.ki_distance, self.kd_distance
            )
            self.previous_error_distance = error
        else:
            raise ValueError("Unknown control type")
        
        return control_effort

    def calculate_speed(self):
        if self.distance_forward is None:
            return self.speed_default
        
        if   self.distance_forward > self.speed_damping_threshhold:
            return self.speed_default

        elif self.distance_forward < self.speed_stop_threshhold:
            return 0.0
        else:
            speed = self.speed_default * self.distance_forward / self.speed_damping_threshhold
            return speed


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

        # rospy.loginfo("angle_wall_Rlaser: %f, distance_betweenLasers: %f", math.degrees(self.angle_wall_Rlaser), self.distance_betweenLasers)

        # Compute control efforts
        control_effort_angle = self.compute_pid_control('angle')
        control_effort_distance = self.compute_pid_control('distance')

        # Combine control efforts
        combined_control_effort = control_effort_angle + control_effort_distance
        combined_control_effort = max(min(combined_control_effort, 1.0), -1.0)  # Clamp combined control effort

        twist = Twist()
        twist.linear.x = self.calculate_speed()
        twist.angular.z = combined_control_effort
        self.cmd_vel_pub.publish(twist)
        rospy.loginfo("dist2Wall: %f, distForward: %f, speed: %f", self.distance_right_wall, self.distance_forward, self.calculate_speed())
    
    def run(self):
        rospy.spin()

if __name__ == '__main__':
    try:
        wall_follower = WallFollower()
        wall_follower.run()
    except rospy.ROSInterruptException:
        pass
