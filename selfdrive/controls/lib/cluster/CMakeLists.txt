add_library(fastcluster MODULE
    fastcluster.cpp
)
target_include_directories(fastcluster PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include/public)
target_include_directories(fastcluster PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include/private)

if(${OPENPILOT_BUILD_TESTS})
    add_executable(fastcluster-testbin
        test.cpp
    )
    target_link_libraries(fastcluster-test fastcluster)

#env.Program("test", ["test.cpp"], LIBS=[fc])
#valgrind --leak-check=full ./test
endif()