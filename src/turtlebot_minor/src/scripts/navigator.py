#!/usr/bin/env python

import rospy
from move_base_msgs.msg import *
from actionlib import *
from tf.transformations import quaternion_from_euler
from geometry_msgs.msg import Quaternion
from geometry_msgs.msg import Point


class Navigator:

    def __init__(self):
        rospy.init_node('navigator')

    @staticmethod
    def angle_to_quaternion(angle):
        quat_vector = quaternion_from_euler(0., 0., angle)
        quat = Quaternion(*quat_vector.tolist())
        return quat

    @staticmethod
    def position_delta(current_position, new_position):
        delta_x_position = new_position.x - current_position.x
        delta_y_position = new_position.y - current_position.y
        delta_z_position = new_position.z - current_position.z

        position_delta = Point()
        position_delta.x = delta_x_position
        position_delta.y = delta_y_position
        position_delta.z = delta_z_position

        rospy.logdebug("Current position xx{0.x} y{0.y} z{0.z}".format(current_position))
        rospy.logdebug("New position x{0.x} y{0.y} z{0.z}".format(new_position))
        rospy.logdebug("Position delta x{0.x} y{0.y} z{0.z}".format(position_delta))

        return position_delta

    @staticmethod
    def orientation_delta(current_orientation, new_orientation):
        delta_x_orientation = new_orientation.x - current_orientation.x
        delta_y_orientation = new_orientation.y - current_orientation.y
        delta_z_orientation = new_orientation.z - current_orientation.z
        delta_w_orientation = new_orientation.w - current_orientation.w

        orientation_delta = Quaternion()
        orientation_delta.x = delta_x_orientation
        orientation_delta.y = delta_y_orientation
        orientation_delta.z = delta_z_orientation
        orientation_delta.w = delta_w_orientation

        rospy.logdebug("Current orientation x{0.x} y{0.y} z{0.z} w{0.w}".format(current_orientation))
        rospy.logdebug("New orientation x{0.x} y{0.y} z{0.z} w{0.w}".format(new_orientation))
        rospy.logdebug("Position orientation x{0.x} y{0.y} z{0.z} w{0.w}".format(orientation_delta))

        return orientation_delta

    @staticmethod
    def navigate(new_position, new_orientation):
        # init client
        rospy.loginfo("Connecting to move_base action server")
        client = SimpleActionClient('move_base', MoveBaseAction)
        connected = client.wait_for_server(timeout=rospy.Duration(10))

        if not connected:
            rospy.logwarn("Could not connect to move_base action server")
            return
        rospy.loginfo("Connected to move_base action server")

        # create goal
        goal = MoveBaseGoal()
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.header.frame_id = "base_link"
        goal.target_pose.pose.position = new_position
        goal.target_pose.pose.orientation = new_orientation

        # execute
        rospy.loginfo("Sending goal with position x{0.x} y{0.y} z{0.z}".format(goal.target_pose.pose.position))
        rospy.loginfo("Sending goal with orientation x{0.x} y{0.y} z{0.z} w{0.w}".format(goal.target_pose.pose.orientation))
        client.send_goal(goal)
        client.wait_for_result()

        # result
        result = client.get_state()
        rospy.loginfo("Goal executed with result {0}".format(result))