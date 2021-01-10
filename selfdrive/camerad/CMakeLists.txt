
add_library(selfdrive-camerad-libs STATIC 
    main.cc
    cameras/camera_common.cc
    cameras/camera_webcam.cc
    transforms/rgb_to_yuv.cc
    imgproc/utils.cc
)
target_include_directories(selfdrive-camerad-libs PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_include_directories(selfdrive-camerad-libs PRIVATE ${OpenCV_INCLUDE_DIRS} ${OpenCL_INCLUDE_DIRS})
target_link_libraries(selfdrive-camerad-libs ${OpenCV_LIBS} )
target_link_libraries(selfdrive-camerad-libs  visionipc selfdrive-gpucommon cereal-messaging libzmq jpeg ${OpenCL_LIBRARY})

add_executable(selfdrive-camerad 
    main.cc
)
target_compile_definitions(selfdrive-camerad-libs
    PUBLIC CAMERAD_OCL_DIR="${CMAKE_CURRENT_SOURCE_DIR}/cameras/runtime_ocl"
    PUBLIC CAMERAD_TRANSFORMS_OCL_DIR="${CMAKE_CURRENT_SOURCE_DIR}/transforms/runtime_ocl")
target_link_libraries(selfdrive-camerad selfdrive-camerad-libs)
# Check if webcam is to be used
if(${OPENPILOT_OPT_USE_WEBCAM})
    target_compile_definitions(selfdrive-camerad-libs
      PUBLIC OPENPILOT_OPT_USE_WEBCAM)
endif()

