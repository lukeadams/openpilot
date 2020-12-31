

add_library(libyuv_imported SHARED IMPORTED)
set_property(TARGET libyuv_imported PROPERTY IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/x64/lib/libyuv.a)

add_library(libyuv INTERFACE)
target_include_directories(libyuv INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/x64/include)
target_link_libraries(libyuv 
INTERFACE libyuv_imported
)
