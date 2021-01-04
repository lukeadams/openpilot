
add_library(qpoases-include INTERFACE) # header only library
target_include_directories(qpoases-include INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/SRC ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/INCLUDE)


list(APPEND QPOASES_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/SRC/Bounds.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/SRC/Constraints.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/SRC/CyclingManager.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/SRC/EXTRAS/SolutionAnalysis.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/SRC/Indexlist.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/SRC/MessageHandling.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/SRC/QProblem.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/SRC/QProblemB.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/SRC/SubjectTo.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/SRC/Utils.cpp
)

set_target_properties(qpoases-include
    PROPERTIES INTERFACE_SOURCES "${QPOASES_SRCS}"
)
