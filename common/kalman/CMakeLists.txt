
add_cython_target(simple_kalman_impl
    simple_kalman_impl.pyx CXX PY3
)
add_library(simple_kalman_impl MODULE ${simple_kalman_impl})
target_link_libraries(simple_kalman_impl Python::Python )
set_target_properties(simple_kalman_impl PROPERTIES PREFIX "")
