
add_library(long-mpc MODULE
    longitudinal_mpc.c
    lib_mpc_export/acado_auxiliary_functions.c
    lib_mpc_export/acado_integrator.c
    lib_mpc_export/acado_qpoases_interface.cpp
    lib_mpc_export/acado_solver.c    
)
target_include_directories(long-mpc PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/lib_mpc_export)

target_link_libraries(long-mpc qpoases-include)
set_target_properties(long-mpc # no lib before output dynamic library
    PROPERTIES 
    CXX_STANDARD      11
    OUTPUT_NAME "mpc1")

##################
add_library(long-mpc2 MODULE
    longitudinal_mpc.c
    lib_mpc_export/acado_auxiliary_functions.c
    lib_mpc_export/acado_integrator.c
    lib_mpc_export/acado_qpoases_interface.cpp
    lib_mpc_export/acado_solver.c    
)
target_include_directories(long-mpc2 PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/lib_mpc_export)

target_link_libraries(long-mpc2 qpoases-include)
set_target_properties(long-mpc2 # no lib before output dynamic library
    PROPERTIES 
    CXX_STANDARD      11
    OUTPUT_NAME "mpc2")
