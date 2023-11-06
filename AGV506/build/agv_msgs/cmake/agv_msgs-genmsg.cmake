# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "agv_msgs: 8 messages, 6 services")

set(MSG_I_FLAGS "-Iagv_msgs:/home/agv506/AGV506/src/agv_msgs/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(agv_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg" ""
)

get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg" NAME_WE)
add_custom_target(_agv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_msgs" "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)
_generate_msg_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)
_generate_msg_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)
_generate_msg_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)
_generate_msg_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)
_generate_msg_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)
_generate_msg_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)
_generate_msg_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)

### Generating Services
_generate_srv_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)
_generate_srv_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)
_generate_srv_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)
_generate_srv_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)
_generate_srv_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)
_generate_srv_cpp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
)

### Generating Module File
_generate_module_cpp(agv_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(agv_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(agv_msgs_generate_messages agv_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_cpp _agv_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agv_msgs_gencpp)
add_dependencies(agv_msgs_gencpp agv_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agv_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)
_generate_msg_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)
_generate_msg_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)
_generate_msg_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)
_generate_msg_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)
_generate_msg_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)
_generate_msg_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)
_generate_msg_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)

### Generating Services
_generate_srv_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)
_generate_srv_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)
_generate_srv_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)
_generate_srv_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)
_generate_srv_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)
_generate_srv_eus(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
)

### Generating Module File
_generate_module_eus(agv_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(agv_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(agv_msgs_generate_messages agv_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_eus _agv_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agv_msgs_geneus)
add_dependencies(agv_msgs_geneus agv_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agv_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)
_generate_msg_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)
_generate_msg_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)
_generate_msg_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)
_generate_msg_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)
_generate_msg_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)
_generate_msg_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)
_generate_msg_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)

### Generating Services
_generate_srv_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)
_generate_srv_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)
_generate_srv_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)
_generate_srv_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)
_generate_srv_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)
_generate_srv_lisp(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
)

### Generating Module File
_generate_module_lisp(agv_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(agv_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(agv_msgs_generate_messages agv_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_lisp _agv_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agv_msgs_genlisp)
add_dependencies(agv_msgs_genlisp agv_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agv_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)
_generate_msg_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)
_generate_msg_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)
_generate_msg_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)
_generate_msg_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)
_generate_msg_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)
_generate_msg_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)
_generate_msg_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)

### Generating Services
_generate_srv_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)
_generate_srv_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)
_generate_srv_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)
_generate_srv_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)
_generate_srv_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)
_generate_srv_nodejs(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
)

### Generating Module File
_generate_module_nodejs(agv_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(agv_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(agv_msgs_generate_messages agv_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_nodejs _agv_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agv_msgs_gennodejs)
add_dependencies(agv_msgs_gennodejs agv_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agv_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)
_generate_msg_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)
_generate_msg_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)
_generate_msg_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)
_generate_msg_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)
_generate_msg_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)
_generate_msg_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)
_generate_msg_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)

### Generating Services
_generate_srv_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)
_generate_srv_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)
_generate_srv_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)
_generate_srv_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)
_generate_srv_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)
_generate_srv_py(agv_msgs
  "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
)

### Generating Module File
_generate_module_py(agv_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(agv_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(agv_msgs_generate_messages agv_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/direction.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/ultrasonicRadar.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Gear.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Brake.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Light.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Fight.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/steerangle.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Arm.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/srv/Dmode.srv" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/lightbuzzer.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/p_dmode.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/actionlimit.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/accelerator.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agv506/AGV506/src/agv_msgs/msg/gearbrake.msg" NAME_WE)
add_dependencies(agv_msgs_generate_messages_py _agv_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agv_msgs_genpy)
add_dependencies(agv_msgs_genpy agv_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agv_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(agv_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(agv_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(agv_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(agv_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(agv_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(agv_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(agv_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(agv_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(agv_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(agv_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(agv_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(agv_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(agv_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(agv_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(agv_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
