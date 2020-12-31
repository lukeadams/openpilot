
add_library(nanovg STATIC
    include/nanovg/fontstash.h
    include/nanovg/nanovg_gl.h
    include/nanovg/nanovg_gl_utils.h
    include/nanovg/nanovg.h
    include/nanovg/stb_image.h
    include/nanovg/stb_truetype.h
    nanovg.c
)

target_include_directories(nanovg PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

