#!/usr/bin/env python

import rospy
from std_msgs.msg import String


def greeter():
    rospy.init_node('greeter', anonymous=True)
    pub = rospy.Publisher('talker', String, queue_size=10)
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        message = "hello world %s" % rospy.get_time()
        rospy.loginfo(message)
        pub.publish(message)
        rate.sleep()

if __name__ == '__main__':
    try:
        greeter()
    except rospy.ROSInterruptException:
        pass
