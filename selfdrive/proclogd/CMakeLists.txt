# env.Program('proclogd.cc', LIBS=[cereal, messaging, 'pthread', 'zmq', 'capnp', 'kj'])

add_executable(selfdrive-proclogd 
    proclogd.cc
)
target_link_libraries(selfdrive-proclogd cereal-objects cereal-messaging selfdrive-common)
