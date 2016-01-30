FILE(REMOVE_RECURSE
  "CMakeFiles/hello_world_generate_messages_py"
  "/home/rddesmit/catkin_ws/devel/lib/python2.7/dist-packages/hello_world/msg/_HelloWorld.py"
  "/home/rddesmit/catkin_ws/devel/lib/python2.7/dist-packages/hello_world/srv/_HelloWorldService.py"
  "/home/rddesmit/catkin_ws/devel/lib/python2.7/dist-packages/hello_world/msg/__init__.py"
  "/home/rddesmit/catkin_ws/devel/lib/python2.7/dist-packages/hello_world/srv/__init__.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/hello_world_generate_messages_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
