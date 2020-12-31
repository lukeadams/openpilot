
add_executable(selfdrive-locationd-ubloxd 
    ublox_msg.cc
    ubloxd_main.cc
    ubloxd.cc
)

target_link_libraries(selfdrive-locationd-ubloxd selfdrive-common cereal-messaging)
