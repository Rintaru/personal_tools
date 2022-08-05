#! /usr/bin/env python
# http://docs.ros.org/en/melodic/api/rospy/html/ contains docs for rospy
import rospy
from std_msgs.msg import String
from beginner_tutorials.srv import AddTwoInts, AddTwoIntsResponse


def handle_add_two_ints(req):
    print("Returning [%s + %s = %s]" % (req.a, req.b, (req.a + req.b)))
    return AddTwoIntsResponse(req.a + req.b)


def add_two_ints_client(x, y):
    rospy.wait_for_service("add_two_ints")
    try:
        add_two_ints = rospy.ServiceProxy("add_two_ints", AddTwoInts)
        resp1 = add_two_ints(x, y)
        return resp1.sum
    except rospy.ServiceException as e:
        print("Service call failed: %s" % e)


if __name__ == "__main__":
    rospy.init_node(
        "name",
        argv=None,
        anonymous=False,
        log_level=None,
        disable_rostime=False,
        disable_rosout=False,
        disable_signals=False,
        xmlrpc_port=0,
        tcpros_port=0,
    )
    # ros publisher
    rospy.Publisher(
        "name",
        String,
        subscriber_listener=None,
        tcp_nodelay=False,
        latch=False,
        headers=None,
        queue_size=None,
    )
    # ros subscriber
    rospy.Subscriber(
        "name",
        String,
        cb,
        callback_args=None,
        queue_size=None,
        buff_size=65536,
        tcp_nodelay=False,
    )
    # ros service server
    s = rospy.Service("name", AddTwoInts, handle_add_two_ints)
    # ros service client
    print(add_two_ints_client(1, 20))
