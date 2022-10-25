#!/usr/bin/env python3
import rospy
from std_msgs.msg import Float32MultiArray
from temperature_sensor import Temperature_sensor


if __name__ == "__main__":
    rospy.init_node("temperature_sensor")
    rate = rospy.Rate(10)
    temperature_pub = rospy.Publisher(
        "Temperature_array", Float32MultiArray, queue_size=10
    )
    _temperature_sensor = Temperature_sensor(True)

    while not rospy.is_shutdown():
        temp = Float32MultiArray()
        temp.data = _temperature_sensor.grab_temperature()
        temperature_pub.publish(temp)
        rate.sleep()
