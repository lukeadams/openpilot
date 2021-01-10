
add_library(selfdrive-gpucommon SHARED
    clutil.cc
    glutil.c
    visionimg.cc
)
target_include_directories(selfdrive-gpucommon PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(selfdrive-gpucommon selfdrive-common visionipc GL OpenCL) 
# fixing visionimg for v2 stuff that was merged