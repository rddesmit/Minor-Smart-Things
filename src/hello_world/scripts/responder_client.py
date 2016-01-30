#!/usr/bin/env python

import rospy
from hello_world.srv import *


def responder_client():
    rospy.wait_for_service('greeter_service')

    try:
        service_proxy = rospy.ServiceProxy('greeter_service', HelloWorldService)
        result = service_proxy("say hello")
        print result
    except rospy.ServiceException, e:
        print "Service call failed: %s" % e

if __name__ == "__main__":
    try:
        responder_client()
    except rospy.ROSInterruptException:
        pass
