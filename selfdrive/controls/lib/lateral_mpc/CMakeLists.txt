add_library(lat-mpc MODULE
    lateral_mpc.c
    lib_mpc_export/acado_auxiliary_functions.c
    lib_mpc_export/acado_integrator.c
    lib_mpc_export/acado_qpoases_interface.cpp
    lib_mpc_export/acado_solver.c    
)
target_include_directories(lat-mpc PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/lib_mpc_export)

target_link_libraries(lat-mpc qpoases-include)
set_target_properties(lat-mpc # no lib before output dynamic library
    PROPERTIES 
    CXX_STANDARD      11
    OUTPUT_NAME "mpc")
