

# envCython.Program('clock.so', 'clock.pyx')
# envCython.Program('params_pyx.so', 'params_pyx.pyx')
# Cereal cython code
add_cython_target(common-clock-pyx
    clock.pyx CXX PY3
)
add_library(common-clock-pyx MODULE ${common-clock-pyx})
target_link_libraries(common-clock-pyx Python::Python )



# add_cython_target(common-params-pyx
#     params_pyx.pyx CXX PY3
# )
# add_library(common-params-pyx MODULE ${common-params-pyx})
# target_link_libraries(common-params-pyx Python::Python )
# target_include_directories(common-params-pyx PRIVATE ${PROJECT_SOURCE_DIR}/selfdrive/common)
# target_include_directories(common-params-pyx PRIVATE ${PROJECT_SOURCE_DIR}/selfdrive)


add_subdirectory(kalman)
add_subdirectory(transformations)