# env.Program('boardd', ['boardd.cc', 'panda.cc', 'pigeon.cc'], LIBS=['usb-1.0', common, cereal, messaging, 'pthread', 'zmq', 'capnp', 'kj'])
# env.Library('libcan_list_to_can_capnp', ['can_list_to_can_capnp.cc'])

# envCython.Program('boardd_api_impl.so', 'boardd_api_impl.pyx', LIBS=["can_list_to_can_capnp", 'capnp', 'kj'] + envCython["LIBS"])



add_executable(selfdrive-boardd 
    boardd.cc
    panda.cc
    pigeon.cc)
target_link_libraries(selfdrive-boardd cereal-objects cereal-messaging selfdrive-common ${LIBUSB_1_LIBRARIES})
target_include_directories(selfdrive-boardd PRIVATE ${LIBUSB_1_INCLUDE_DIRS})

add_library(selfdrive-boardd-cereal STATIC
    can_list_to_can_capnp.cc
)
target_link_libraries(selfdrive-boardd-cereal PRIVATE cereal-messaging)

add_cython_target(boardd_api_impl
    boardd_api_impl.pyx CXX PY3)
add_library(boardd_api_impl MODULE
    ${boardd_api_impl})
target_link_libraries(boardd_api_impl selfdrive-boardd-cereal Python::Python)
set_target_properties(boardd_api_impl # no lib before output dynamic library
    PROPERTIES PREFIX "")
