
# Cereal cython code
add_cython_target(clock
    clock.pyx CXX PY3
)
add_library(clock MODULE ${clock})
target_link_libraries(clock Python::Python )
set_target_properties(clock PROPERTIES PREFIX "")


add_cython_target(params_pyx
    params_pyx.pyx CXX PY3
)
add_library(params_pyx MODULE ${params_pyx})
target_link_libraries(params_pyx Python::Python selfdrive-common)
target_include_directories(params_pyx PRIVATE ${PROJECT_SOURCE_DIR}/selfdrive/common)
target_include_directories(params_pyx PRIVATE ${PROJECT_SOURCE_DIR}/selfdrive)
set_target_properties(params_pyx PROPERTIES PREFIX "")

add_subdirectory(kalman)
add_subdirectory(transformations)