cmake_minimum_required(VERSION 2.8.3)
project(simple_delivery_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation std_msgs actionlib_msgs
)

## Generate actions in the 'action' folder
add_action_files(
  DIRECTORY action
  FILES
  DeliverOrder.action
)

generate_messages(
  DEPENDENCIES
  std_msgs  # Or other packages containing msgs
  actionlib_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs actionlib_msgs
)
