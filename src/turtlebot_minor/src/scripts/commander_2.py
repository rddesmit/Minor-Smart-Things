#!/usr/bin/env python

import rospy
from actionlib import *
from geometry_msgs.msg import Point
from geometry_msgs.msg import PoseWithCovarianceStamped
from sensor_msgs.msg import Image
from motion_detector import MotionDetector
from navigator import Navigator
import random


class Commander:
    last_pose = None
    last_image = None
    new_image = None

    should_detect_motion = False
    state_counter = 0

    def __init__(self):
        # init node
        rospy.init_node('commander_2')
        rospy.Subscriber('amcl_pose', PoseWithCovarianceStamped, self.new_pose_callback)
        rospy.Subscriber('camera/rgb/image_raw', Image, self.new_image_callback)

        rate = rospy.Rate(1)
        motion_detector = MotionDetector()

        while not rospy.is_shutdown():
            self.state_counter += 1
            self.should_detect_motion = self.state_counter > 3

            if self.should_detect_motion:
                # motion detection
                if self.last_image is not None and self.new_image is not None:
                    rospy.loginfo("Detecting motion")
                    motion_detector.show_diff(self.last_image, self.new_image)
            else:
                # navigate
                if self.last_pose is not None:
                    rospy.loginfo("Navigating")
                    self.navigate_commander()
                    self.last_image=None
                    self.new_image=None
                else:
                    rospy.logwarn("Current pose is None")
                    rospy.loginfo("Recovering")
                    self.recover_commander()
                    self.last_image=None
                    self.new_image=None

            self.state_counter %= 10
            rate.sleep()

    def navigate_commander(self):
        point = Point()
        point.x = random.random()
        point.y = .0
        point.z = .0

        orientation = Navigator.angle_to_quaternion(random.randint(0, 360))

        position_delta = Navigator.position_delta(self.last_pose.position, point)
        orientation_delta = Navigator.orientation_delta(self.last_pose.orientation, orientation)
        Navigator.navigate(position_delta, orientation_delta)

    def recover_commander(self):
        point = Point()
        point.x = random.uniform(.0, .9)
        point.y = .0
        point.z = .0

        orientation = Navigator.angle_to_quaternion(0)

        rospy.loginfo("Execution recovery behavior")
        Navigator.navigate(point, orientation)

    def new_pose_callback(self, new_pose):
        self.last_pose = new_pose.pose.pose

    def new_image_callback(self, new_image):
        self.last_image = self.new_image
        self.new_image = new_image


if __name__ == '__main__':
    try:
        Commander()
    except rospy.ROSInterruptException:
        pass

