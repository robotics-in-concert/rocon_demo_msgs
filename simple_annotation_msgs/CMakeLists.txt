cmake_minimum_required(VERSION 2.8.3)
project(simple_annotation_msgs)

find_package(catkin REQUIRED COMPONENTS yocs_msgs ar_track_alvar_msgs message_generation)

add_service_files(
  FILES
  SaveTables.srv
  SaveColumns.srv
  SaveWalls.srv
  SaveARMarkers.srv
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES yocs_msgs ar_track_alvar_msgs 
)

catkin_package(
  CATKIN_DEPENDS yocs_msgs ar_track_alvar_msgs message_runtime
)
