

add_executable(selfdrive-loggerd
    logger.cc
    loggerd.cc
)
target_link_libraries(selfdrive-loggerd cereal-messaging selfdrive-common selfdrive-visionipc libyuv selfdrive-camerad-libs BZip2::BZip2)
