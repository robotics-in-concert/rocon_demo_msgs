cmake_minimum_required(VERSION 2.8.3)
project(simple_delivery_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation std_msgs actionlib_msgs
)

## Generate actions in the 'action' folder
add_action_files(
  DIRECTORY action
  FILES
  RobotDeliveryOrder.action
  P2PDeliveryOrder.action
)

## Generate msgs in the 'msg' folder
add_message_files(
  DIRECTORY msg
  FILES
  Receiver.msg
  DeliveryOrder.msg
  DeliveryStatus.msg
  Order.msg
  OrderList.msg
  RobotStatus.msg
  P2PDeliveryOrder4UI.msg
  P2PDeliveryStatus.msg
  )

generate_messages(
  DEPENDENCIES
  std_msgs  # Or other packages containing msgs
  actionlib_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs actionlib_msgs
)
