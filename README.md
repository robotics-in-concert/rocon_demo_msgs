rocon_demo_msgs
===============

it contains demo related messages.

## Simple Delivery Message
### Message
* simple_delivery_msgs/Receiver.msg
  
  ```
  string location
  int16 qty
  ```
  
* simple_delivery_msgs/DeliveryOrder.msg
  
  ```
  int16 id
  Receiver[] receivers
  ```

* simple_delivery_msgs/DeliveryStatus.msg
  
  ```
  int8 IDLE = 10
  int8 GO_TO_FRONTDESK = 20
  int8 ARRIVAL_AT_FRONTDESK = 30
  int8 WAITING_FOR_FRONTDESK = 40
  int8 GO_TO_RECEIVER = 51
  int8 ARRIVAL_AT_RECEIVER = 52
  int8 WAITING_CONFIRM_RECEIVER = 53
  int8 COMPLETE_DELIVERY = 54
  int8 COMPLETE_ALL_DELIVERY = 60
  int8 RETURN_TO_DOCK = 70
  int8 COMPELTE_RETURN = 80
  int8 ERROR = -10
  
  string order_id
  string target_goal
  int8 status
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
  
  DeliveryStatus delivery_status
  ```
