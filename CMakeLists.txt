project(Openpilot)
cmake_minimum_required(VERSION 3.18)


add_subdirectory(./cereal)


add_custom_target(graphviz ALL
    COMMAND ${CMAKE_COMMAND} "--graphviz=foo.dot" .
    COMMAND dot -Tpng foo.dot -o foo.png
    WORKING_DIRECTORY "${CMAKE_BINARY_DIR}"
)
