
add_library(selfdrive-modeld-common STATIC
    "models/commonmodel.cc"
    "runners/snpemodel.cc"
    "transforms/loadyuv.cc"
    "transforms/transform.cc"

    "runners/onnxmodel.cc"
)
target_include_directories(selfdrive-modeld-common PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(selfdrive-modeld-common selfdrive-common selfdrive-gpucommon snpe)
target_compile_definitions(selfdrive-modeld-common PUBLIC -DUSE_ONNX_MODEL)
target_compile_definitions(selfdrive-modeld-common
    PUBLIC MODELD_OCL_DIR="${CMAKE_CURRENT_SOURCE_DIR}/transforms/runtime_ocl")


add_executable(selfdrive-modeld-dmonitoring
    "dmonitoringmodeld.cc"
    "models/dmonitoring.cc"
)
target_link_libraries(selfdrive-modeld-dmonitoring selfdrive-visionipc cereal-messaging selfdrive-modeld-common libyuv)


add_executable(selfdrive-modeld-core
    "modeld.cc"
    "models/driving.cc"
)
target_link_libraries(selfdrive-modeld-core selfdrive-visionipc cereal-messaging selfdrive-modeld-common)

target_compile_definitions(selfdrive-modeld-core
    PUBLIC OPENPILOT_ROOT="${PROJECT_SOURCE_DIR}")