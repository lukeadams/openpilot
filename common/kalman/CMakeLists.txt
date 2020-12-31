
add_cython_target(common-simple-kalman-impl
    simple_kalman_impl.pyx CXX PY3
)
add_library(common-simple-kalman-impl MODULE ${common-simple-kalman-impl})
target_link_libraries(common-simple-kalman-impl Python::Python )
# target_include_directories(common-simple-kalman-impl PRIVATE ${PROJECT_SOURCE_DIR}/selfdrive/common)
# target_include_directories(common-simple-kalman-impl PRIVATE ${PROJECT_SOURCE_DIR}/selfdrive)
