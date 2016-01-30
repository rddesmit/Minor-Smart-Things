#!/usr/bin/env python

import rospy
from std_msgs.msg import String


def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)


def responder():
    rospy.init_node('responder', anonymous=True)
    rospy.Subscriber('talker', String, callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        responder()
    except rospy.ROSInterruptException:
        pass