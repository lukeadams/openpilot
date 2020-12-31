add_library(selfdrive-controls-cluster STATIC
    fastcluster.cpp
)
target_include_directories(selfdrive-controls-cluster PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include/public)
target_include_directories(selfdrive-controls-cluster PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include/private)

if(${OPENPILOT_BUILD_TESTS})
    add_executable(selfdrive-controls-cluster-testbin
        test.cpp
    )
    target_link_libraries(selfdrive-controls-cluster-test selfdrive-controls-cluster)

#env.Program("test", ["test.cpp"], LIBS=[fc])
#valgrind --leak-check=full ./test
endif()