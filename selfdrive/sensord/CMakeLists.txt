
add_executable(selfdrive-sensord
    sensors/bmx055_accel.cc
    sensors/bmx055_gyro.cc
    sensors/bmx055_magn.cc
    sensors/bmx055_temp.cc
    sensors/file_sensor.cc
    sensors/i2c_sensor.cc
    sensors/light_sensor.cc
    sensors/lsm6ds3_accel.cc
    sensors/lsm6ds3_gyro.cc
    sensors/lsm6ds3_temp.cc
    sensors_qcom2.cc
)
target_link_libraries(selfdrive-sensord selfdrive-common cereal-objects cereal-messaging)
target_include_directories(selfdrive-sensord PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

