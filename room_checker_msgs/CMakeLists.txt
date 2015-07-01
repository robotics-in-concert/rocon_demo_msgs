cmake_minimum_required(VERSION 2.8.3)
project(room_checker_msgs)

find_package(catkin REQUIRED std_msgs diagnostic_msgs actionlib_msgs message_generation)

## Generate actions in the 'action' folder
add_action_files(
  DIRECTORY action
  FILES
  CheckEmptyRoom.action
)

generate_messages(
  DEPENDENCIES std_msgs diagnostic_msgs actionlib_msgs
)


catkin_package(
  CATKIN_DEPENDS std_msgs  diagnostic_msgs actionlib_msgs message_runtime
)
