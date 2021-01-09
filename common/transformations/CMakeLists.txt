
add_cython_target(transformations
    transformations.pyx CXX PY3
)
add_library(transformations MODULE ${transformations})
target_link_libraries(transformations Python::Python Python::NumPy)
target_include_directories(transformations PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
set_target_properties(transformations PROPERTIES PREFIX "")
