# set(CMAKE_AUTOMOC ON)
# set(CMAKE_AUTORCC ON)
# set(CMAKE_AUTOUIC ON)
add_library(selfdrive-ui-qtwidgets STATIC
    "qt/qt_window.cc"
    "qt/qt_sound.cc"
    "qt/widgets/keyboard.cc"
    "qt/widgets/input_field.cc"
    "qt/widgets/drive_stats.cc"

    "qt/offroad/wifi.cc"
    "qt/offroad/wifiManager.cc"
    "qt/widgets/toggle.cc"
    "qt/widgets/offroad_alerts.cc"
)
target_link_libraries(selfdrive-ui-qtwidgets Qt5::Core Qt5::Gui Qt5::Widgets Qt5::Multimedia Qt5::Network Qt5::DBus cereal-objects selfdrive-common OpenSSL::SSL)
target_include_directories(selfdrive-ui-qtwidgets PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})


add_executable(selfdrive-ui
    qt/ui.cc
    qt/window.cc
    qt/home.cc
    qt/offroad/settings.cc
    qt/offroad/onboarding.cc
    ui.cc
    paint.cc
    sidebar.cc
)
target_link_libraries(selfdrive-ui selfdrive-ui-qtwidgets cereal-messaging nanovg selfdrive-visionipc selfdrive-gpucommon) 

set_target_properties(selfdrive-ui selfdrive-ui-qtwidgets
    PROPERTIES AUTOMOC ON
               AUTORCC ON
               AUTOUIC ON
)