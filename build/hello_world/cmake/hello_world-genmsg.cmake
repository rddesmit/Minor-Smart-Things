# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hello_world: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ihello_world:/home/rddesmit/catkin_ws/src/hello_world/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hello_world_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rddesmit/catkin_ws/src/hello_world/srv/HelloWorldService.srv" NAME_WE)
add_custom_target(_hello_world_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_world" "/home/rddesmit/catkin_ws/src/hello_world/srv/HelloWorldService.srv" ""
)

get_filename_component(_filename "/home/rddesmit/catkin_ws/src/hello_world/msg/HelloWorld.msg" NAME_WE)
add_custom_target(_hello_world_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_world" "/home/rddesmit/catkin_ws/src/hello_world/msg/HelloWorld.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hello_world
  "/home/rddesmit/catkin_ws/src/hello_world/msg/HelloWorld.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_world
)

### Generating Services
_generate_srv_cpp(hello_world
  "/home/rddesmit/catkin_ws/src/hello_world/srv/HelloWorldService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_world
)

### Generating Module File
_generate_module_cpp(hello_world
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_world
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hello_world_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hello_world_generate_messages hello_world_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rddesmit/catkin_ws/src/hello_world/srv/HelloWorldService.srv" NAME_WE)
add_dependencies(hello_world_generate_messages_cpp _hello_world_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rddesmit/catkin_ws/src/hello_world/msg/HelloWorld.msg" NAME_WE)
add_dependencies(hello_world_generate_messages_cpp _hello_world_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_world_gencpp)
add_dependencies(hello_world_gencpp hello_world_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_world_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hello_world
  "/home/rddesmit/catkin_ws/src/hello_world/msg/HelloWorld.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_world
)

### Generating Services
_generate_srv_lisp(hello_world
  "/home/rddesmit/catkin_ws/src/hello_world/srv/HelloWorldService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_world
)

### Generating Module File
_generate_module_lisp(hello_world
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_world
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hello_world_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hello_world_generate_messages hello_world_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rddesmit/catkin_ws/src/hello_world/srv/HelloWorldService.srv" NAME_WE)
add_dependencies(hello_world_generate_messages_lisp _hello_world_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rddesmit/catkin_ws/src/hello_world/msg/HelloWorld.msg" NAME_WE)
add_dependencies(hello_world_generate_messages_lisp _hello_world_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_world_genlisp)
add_dependencies(hello_world_genlisp hello_world_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_world_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hello_world
  "/home/rddesmit/catkin_ws/src/hello_world/msg/HelloWorld.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_world
)

### Generating Services
_generate_srv_py(hello_world
  "/home/rddesmit/catkin_ws/src/hello_world/srv/HelloWorldService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_world
)

### Generating Module File
_generate_module_py(hello_world
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_world
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hello_world_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hello_world_generate_messages hello_world_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rddesmit/catkin_ws/src/hello_world/srv/HelloWorldService.srv" NAME_WE)
add_dependencies(hello_world_generate_messages_py _hello_world_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rddesmit/catkin_ws/src/hello_world/msg/HelloWorld.msg" NAME_WE)
add_dependencies(hello_world_generate_messages_py _hello_world_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_world_genpy)
add_dependencies(hello_world_genpy hello_world_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_world_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_world)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_world
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(hello_world_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_world)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_world
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(hello_world_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_world)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_world\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_world
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(hello_world_generate_messages_py std_msgs_generate_messages_py)
