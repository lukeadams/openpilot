project(Openpilot)
cmake_minimum_required(VERSION 3.18)
SET(CMAKE_BUILD_TYPE Debug ) 
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
# set(CMAKE_CXX_EXTENSIONS OFF)
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=native")


set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake/")

option(OPENPILOT_OPT_USE_WEBCAM "Use local webcams for Openpilot inputs?"
         FALSE)

option(OPENPILOT_BUILD_TESTS "Build tests?"
FALSE)

### Scan for libs
find_package(CapnProto)
find_package(Python COMPONENTS Interpreter Development NumPy REQUIRED) 
find_package(Cython REQUIRED)
find_package(ZeroMQ REQUIRED)
find_package(OpenCV REQUIRED )
find_package(OpenCL REQUIRED)
find_package(Qt5 COMPONENTS Core Widgets Gui Multimedia Network DBus REQUIRED)
find_package(OpenSSL REQUIRED)
find_package(libusb-1.0 REQUIRED)
find_package(BZip2 REQUIRED)
find_package (Eigen3 REQUIRED NO_MODULE)

### Include subtrees
add_subdirectory(cereal)
add_subdirectory(opendbc)
add_subdirectory(common)
add_subdirectory(phonelibs)
add_subdirectory(selfdrive)

### Generate png with targets / relationships
# add_custom_target(graphviz ALL
#     COMMAND ${CMAKE_COMMAND} "--graphviz=foo.dot" .
#     COMMAND dot -Tpng foo.dot -o foo.png
#     WORKING_DIRECTORY "${CMAKE_BINARY_DIR}"
# )
