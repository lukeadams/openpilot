add_library(selfdrive-visionipc SHARED
    "include/selfdrive/common/visionipc/ipc.h"
    "include/selfdrive/common/visionipc/visionipc.h"
    ipc.c
    visionipc.c
)
target_include_directories(selfdrive-visionipc PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
