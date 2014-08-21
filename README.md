rocon_demo_msgs
===============

it contains demo related messages.

## Simple Delivery Message
### Message
* simple_delivery_msgs/Receiver.msg
  ```
  int8 DELIVERY_IDLE                = 1
  int8 GO_TO_RECEIVER               = 2
  int8 ARRIVAL_AT_RECEIVER          = 3
  int8 WAITING_CONFRIM_RECEIVER    = 4
  int8 CONFRIM_RECEIVER             = 5
  int8 COMPLETE_DELIVERY            = 6
  
  string location
  int16 qty
  int8 order_status
  ```
* simple_delivery_msgs/DeliveryOrder.msg
  ```
  int16 id
  Receiver[] receivers
  ```

### Action
* simple_delivery_msgs/RobotDeliveryOrder.action
  ```
  #Action Goal
  
  string location
  ---
  #Action Result
  
  bool success
  string message
  ---
  #Action Feedback
  
  int8 ROBOT_IDLE = 10
  int8 ARRIVAL_AT_FRONT = 20
  int8 START_DELIVERY = 30
  int8 ON_DELIVER = 40
  int8 COMPLETE_ALL_DELIVERY = 50
  int8 RETURN_TO_DOCK = 60
  int8 COMPELTE_RETURN = 70
  
  int8 order_status
  int8 robot_status
  ```
