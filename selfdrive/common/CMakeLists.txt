
add_library(selfdrive-common SHARED
    "include/selfdrive/common/cqueue.h"
    "include/selfdrive/common/gpio.h"
    "include/selfdrive/common/i2c.h"
    "include/selfdrive/common/mat.h"
    "include/selfdrive/common/modeldata.h"
    "include/selfdrive/common/mutex.h"
    "include/selfdrive/common/params.h"
    "include/selfdrive/common/swaglog.h"
    "include/selfdrive/common/timing.h"
    "include/selfdrive/common/util.h"
    "include/selfdrive/common/utilpp.h"
    "include/selfdrive/common/version.h"
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
add_subdirectory(visionipc)
