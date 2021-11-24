cmake_minimum_required(VERSION 3.0.2)
project(pkg_name)

find_package(catkin REQUIRED COMPONENTS
  actionlib
  sensor_msgs
  actionlib_msgs
  geometry_msgs
  sensor_msgs${${PROJECT_NAME}_EXPORTED_TARGETS}
  move_base_msgs
  rospy
  tf
  tf2
)


add_message_files(DIRECTORY msg FILES 
  GpsPath.msg
  NavigatorStatus.msg
  WaypointMsg.msg
  MissionMsg.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs  
  sensor_msgs
  pkg_name
)

catkin_package(
  CATKIN_DEPENDS 
  message_runtime
  std_msgs
  sensor_msgs
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)
