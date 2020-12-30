
add_executable(selfdrive-camerad 
    main.cc
    cameras/camera_common.cc
    cameras/camera_webcam.cc
    transforms/rgb_to_yuv.cc
    imgproc/utils.cc
    "include/selfdrive/camerad/imgproc/utils.h"
)
target_include_directories(selfdrive-camerad PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)



target_include_directories(selfdrive-camerad PRIVATE ${OpenCV_INCLUDE_DIRS})
target_link_libraries(selfdrive-camerad ${OpenCV_LIBS} )


target_link_libraries(selfdrive-camerad  selfdrive-visionipc selfdrive-gpucommon cereal-messaging libzmq OpenCL jpeg)
# Check if webcam is to be used
if(${OPENPILOT_OPT_USE_WEBCAM})

endif()

