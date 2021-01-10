
add_library(selfdrive-common SHARED
    cqueue.c
    gpio.cc
    i2c.cc
    params.cc
    swaglog.cc
    util.c
)
target_link_libraries(selfdrive-common json11 libzmq)
target_include_directories(selfdrive-common PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

add_subdirectory(gpucommon)
add_subdirectory(testparams)
