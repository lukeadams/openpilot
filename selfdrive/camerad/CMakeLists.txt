
add_library(selfdrive-camerad-libs STATIC 
    main.cc
    cameras/camera_common.cc
    cameras/camera_webcam.cc
    transforms/rgb_to_yuv.cc
    imgproc/utils.cc
    "include/selfdrive/camerad/imgproc/utils.h"
)
target_include_directories(selfdrive-camerad-libs PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_include_directories(selfdrive-camerad-libs PRIVATE ${OpenCV_INCLUDE_DIRS} ${OpenCL_INCLUDE_DIRS})
target_link_libraries(selfdrive-camerad-libs ${OpenCV_LIBS} )
target_link_libraries(selfdrive-camerad-libs  selfdrive-visionipc selfdrive-gpucommon cereal-messaging libzmq jpeg ${OpenCL_LIBRARY})

add_executable(selfdrive-camerad 
    main.cc
)

target_link_libraries(selfdrive-camerad selfdrive-camerad-libs)
# Check if webcam is to be used
if(${OPENPILOT_OPT_USE_WEBCAM})

endif()

