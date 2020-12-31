
add_library(selfdrive-gpucommon SHARED
    buffering.c
    clutil.cc
    efd.c
    glutil.c
    visionbuf_cl.c
    visionimg.cc
    "include/selfdrive/common/gpucommon/buffering.h"
    "include/selfdrive/common/gpucommon/clutil.h"
    "include/selfdrive/common/gpucommon/efd.h"
    "include/selfdrive/common/gpucommon/glutil.h"
    "include/selfdrive/common/gpucommon/visionbuf.h"
    "include/selfdrive/common/gpucommon/visionimg.h"
)
target_include_directories(selfdrive-gpucommon PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(selfdrive-gpucommon selfdrive-common GL OpenCL) 
