
add_executable(selfdrive-clocksd
    clocksd.cc
)
target_link_libraries(selfdrive-clocksd cereal-messaging selfdrive-common)
