add_library(libsnpe SHARED IMPORTED)
set_property(TARGET libsnpe PROPERTY IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/x86_64-linux-clang/libSNPE.so)

add_library(libomp SHARED IMPORTED)
set_property(TARGET libomp PROPERTY IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/x86_64-linux-clang/libomp.so)

add_library(libsymphony-cpu SHARED IMPORTED)
set_property(TARGET libsymphony-cpu PROPERTY IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/x86_64-linux-clang/libsymphony-cpu.so)

add_library(snpe INTERFACE)
target_include_directories(snpe INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(snpe 
INTERFACE libsnpe
INTERFACE libomp
INTERFACE libsymphony-cpu
)
