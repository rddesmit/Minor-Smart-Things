#!/usr/bin/env python

import rospy
from hello_world.srv import *


def callback(request):
    message = "hello world %s" % rospy.get_time()
    rospy.loginfo(message)
    return HelloWorldServiceResponse(message)


def greeter_service():
    rospy.init_node('greeter_service')
    service = rospy.Service('greeter_service', HelloWorldService, callback)
    rospy.spin()


if __name__ == '__main__':
    try:
        greeter_service()
    except rospy.ROSInterruptException:
        pass
