
add_cython_target(common-transformations
    transformations.pyx CXX PY3
)
add_library(common-transformations MODULE ${common-transformations})
target_link_libraries(common-transformations Python::Python Python::NumPy)
target_include_directories(common-transformations PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})