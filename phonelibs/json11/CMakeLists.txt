

add_library(json11 SHARED
    json11.cpp
    "include/json11/json11.hpp"
)
target_include_directories(json11 PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/include")

