# Install script for directory: /home/agv506/AGV506/src/agv_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/agv506/AGV506/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/msg" TYPE FILE FILES
    "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg"
    "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg"
    "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg"
    "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg"
    "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg"
    "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg"
    "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg"
    "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/srv" TYPE FILE FILES
    "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv"
    "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv"
    "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv"
    "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv"
    "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv"
    "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/cmake" TYPE FILE FILES "/home/agv506/AGV506/build/agv_msgs/catkin_generated/installspace/agv_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/agv506/AGV506/devel/include/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/agv506/AGV506/devel/share/roseus/ros/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/agv506/AGV506/devel/share/common-lisp/ros/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/agv506/AGV506/devel/share/gennodejs/ros/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/agv506/AGV506/devel/lib/python2.7/dist-packages/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/agv506/AGV506/devel/lib/python2.7/dist-packages/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/agv506/AGV506/build/agv_msgs/catkin_generated/installspace/agv_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/cmake" TYPE FILE FILES "/home/agv506/AGV506/build/agv_msgs/catkin_generated/installspace/agv_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/cmake" TYPE FILE FILES
    "/home/agv506/AGV506/build/agv_msgs/catkin_generated/installspace/agv_msgsConfig.cmake"
    "/home/agv506/AGV506/build/agv_msgs/catkin_generated/installspace/agv_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs" TYPE FILE FILES "/home/agv506/AGV506/src/agv_msgs/package.xml")
endif()

