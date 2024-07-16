# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ohm_mecanum_sim: 1 messages, 2 services")

set(MSG_I_FLAGS "-Iohm_mecanum_sim:/home/nick/catkin_ws/src/ohm_mecanum_sim/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ohm_mecanum_sim_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/msg/WheelSpeed.msg" NAME_WE)
add_custom_target(_ohm_mecanum_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ohm_mecanum_sim" "/home/nick/catkin_ws/src/ohm_mecanum_sim/msg/WheelSpeed.msg" ""
)

get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Spawn.srv" NAME_WE)
add_custom_target(_ohm_mecanum_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ohm_mecanum_sim" "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Spawn.srv" ""
)

get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Kill.srv" NAME_WE)
add_custom_target(_ohm_mecanum_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ohm_mecanum_sim" "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Kill.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/msg/WheelSpeed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ohm_mecanum_sim
)

### Generating Services
_generate_srv_cpp(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ohm_mecanum_sim
)
_generate_srv_cpp(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ohm_mecanum_sim
)

### Generating Module File
_generate_module_cpp(ohm_mecanum_sim
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ohm_mecanum_sim
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ohm_mecanum_sim_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ohm_mecanum_sim_generate_messages ohm_mecanum_sim_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/msg/WheelSpeed.msg" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_cpp _ohm_mecanum_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Spawn.srv" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_cpp _ohm_mecanum_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Kill.srv" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_cpp _ohm_mecanum_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ohm_mecanum_sim_gencpp)
add_dependencies(ohm_mecanum_sim_gencpp ohm_mecanum_sim_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ohm_mecanum_sim_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/msg/WheelSpeed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ohm_mecanum_sim
)

### Generating Services
_generate_srv_eus(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ohm_mecanum_sim
)
_generate_srv_eus(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ohm_mecanum_sim
)

### Generating Module File
_generate_module_eus(ohm_mecanum_sim
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ohm_mecanum_sim
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ohm_mecanum_sim_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ohm_mecanum_sim_generate_messages ohm_mecanum_sim_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/msg/WheelSpeed.msg" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_eus _ohm_mecanum_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Spawn.srv" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_eus _ohm_mecanum_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Kill.srv" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_eus _ohm_mecanum_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ohm_mecanum_sim_geneus)
add_dependencies(ohm_mecanum_sim_geneus ohm_mecanum_sim_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ohm_mecanum_sim_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/msg/WheelSpeed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ohm_mecanum_sim
)

### Generating Services
_generate_srv_lisp(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ohm_mecanum_sim
)
_generate_srv_lisp(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ohm_mecanum_sim
)

### Generating Module File
_generate_module_lisp(ohm_mecanum_sim
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ohm_mecanum_sim
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ohm_mecanum_sim_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ohm_mecanum_sim_generate_messages ohm_mecanum_sim_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/msg/WheelSpeed.msg" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_lisp _ohm_mecanum_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Spawn.srv" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_lisp _ohm_mecanum_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Kill.srv" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_lisp _ohm_mecanum_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ohm_mecanum_sim_genlisp)
add_dependencies(ohm_mecanum_sim_genlisp ohm_mecanum_sim_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ohm_mecanum_sim_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/msg/WheelSpeed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ohm_mecanum_sim
)

### Generating Services
_generate_srv_nodejs(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ohm_mecanum_sim
)
_generate_srv_nodejs(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ohm_mecanum_sim
)

### Generating Module File
_generate_module_nodejs(ohm_mecanum_sim
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ohm_mecanum_sim
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ohm_mecanum_sim_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ohm_mecanum_sim_generate_messages ohm_mecanum_sim_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/msg/WheelSpeed.msg" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_nodejs _ohm_mecanum_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Spawn.srv" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_nodejs _ohm_mecanum_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Kill.srv" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_nodejs _ohm_mecanum_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ohm_mecanum_sim_gennodejs)
add_dependencies(ohm_mecanum_sim_gennodejs ohm_mecanum_sim_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ohm_mecanum_sim_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/msg/WheelSpeed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ohm_mecanum_sim
)

### Generating Services
_generate_srv_py(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ohm_mecanum_sim
)
_generate_srv_py(ohm_mecanum_sim
  "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ohm_mecanum_sim
)

### Generating Module File
_generate_module_py(ohm_mecanum_sim
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ohm_mecanum_sim
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ohm_mecanum_sim_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ohm_mecanum_sim_generate_messages ohm_mecanum_sim_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/msg/WheelSpeed.msg" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_py _ohm_mecanum_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Spawn.srv" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_py _ohm_mecanum_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/catkin_ws/src/ohm_mecanum_sim/srv/Kill.srv" NAME_WE)
add_dependencies(ohm_mecanum_sim_generate_messages_py _ohm_mecanum_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ohm_mecanum_sim_genpy)
add_dependencies(ohm_mecanum_sim_genpy ohm_mecanum_sim_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ohm_mecanum_sim_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ohm_mecanum_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ohm_mecanum_sim
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ohm_mecanum_sim_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ohm_mecanum_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ohm_mecanum_sim
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ohm_mecanum_sim_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ohm_mecanum_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ohm_mecanum_sim
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ohm_mecanum_sim_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ohm_mecanum_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ohm_mecanum_sim
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ohm_mecanum_sim_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ohm_mecanum_sim)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ohm_mecanum_sim\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ohm_mecanum_sim
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ohm_mecanum_sim")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ohm_mecanum_sim
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ohm_mecanum_sim_generate_messages_py std_msgs_generate_messages_py)
endif()
