cmake_minimum_required(VERSION 3.0.2)
project(asv_temperature_sensor)


find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
)

catkin_package(

)


include_directories(

)

catkin_install_python(PROGRAMS src/temperature_sensor_node.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})