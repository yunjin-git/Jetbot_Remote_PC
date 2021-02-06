# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jetbot: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ijetbot:/home/yunjin/catkin_ws/src/jetbot/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jetbot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yunjin/catkin_ws/src/jetbot/msg/keycon.msg" NAME_WE)
add_custom_target(_jetbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbot" "/home/yunjin/catkin_ws/src/jetbot/msg/keycon.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(jetbot
  "/home/yunjin/catkin_ws/src/jetbot/msg/keycon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbot
)

### Generating Services

### Generating Module File
_generate_module_cpp(jetbot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jetbot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jetbot_generate_messages jetbot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yunjin/catkin_ws/src/jetbot/msg/keycon.msg" NAME_WE)
add_dependencies(jetbot_generate_messages_cpp _jetbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetbot_gencpp)
add_dependencies(jetbot_gencpp jetbot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetbot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(jetbot
  "/home/yunjin/catkin_ws/src/jetbot/msg/keycon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbot
)

### Generating Services

### Generating Module File
_generate_module_eus(jetbot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(jetbot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(jetbot_generate_messages jetbot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yunjin/catkin_ws/src/jetbot/msg/keycon.msg" NAME_WE)
add_dependencies(jetbot_generate_messages_eus _jetbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetbot_geneus)
add_dependencies(jetbot_geneus jetbot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetbot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(jetbot
  "/home/yunjin/catkin_ws/src/jetbot/msg/keycon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbot
)

### Generating Services

### Generating Module File
_generate_module_lisp(jetbot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jetbot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jetbot_generate_messages jetbot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yunjin/catkin_ws/src/jetbot/msg/keycon.msg" NAME_WE)
add_dependencies(jetbot_generate_messages_lisp _jetbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetbot_genlisp)
add_dependencies(jetbot_genlisp jetbot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetbot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(jetbot
  "/home/yunjin/catkin_ws/src/jetbot/msg/keycon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(jetbot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(jetbot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(jetbot_generate_messages jetbot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yunjin/catkin_ws/src/jetbot/msg/keycon.msg" NAME_WE)
add_dependencies(jetbot_generate_messages_nodejs _jetbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetbot_gennodejs)
add_dependencies(jetbot_gennodejs jetbot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetbot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(jetbot
  "/home/yunjin/catkin_ws/src/jetbot/msg/keycon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbot
)

### Generating Services

### Generating Module File
_generate_module_py(jetbot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jetbot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jetbot_generate_messages jetbot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yunjin/catkin_ws/src/jetbot/msg/keycon.msg" NAME_WE)
add_dependencies(jetbot_generate_messages_py _jetbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetbot_genpy)
add_dependencies(jetbot_genpy jetbot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetbot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(jetbot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(jetbot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(jetbot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(jetbot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(jetbot_generate_messages_py std_msgs_generate_messages_py)
endif()
