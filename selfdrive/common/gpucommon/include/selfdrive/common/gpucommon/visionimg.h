#ifndef VISIONIMG_H
#define VISIONIMG_H

#include "cereal/visionipc/visionbuf.h"
#include "selfdrive/common/gpucommon/glutil.h"

#ifdef QCOM
#include <EGL/egl.h>
#include <EGL/eglext.h>
#undef Status
#else
typedef int EGLImageKHR;
typedef void *EGLClientBuffer;
#endif

#ifdef __cplusplus
extern "C" {
#endif

#define VISIONIMG_FORMAT_RGB24 1

typedef struct VisionImg {
  int fd;
  int format;
  int width, height, stride;
  int bpp;
  size_t size;
} VisionImg;

GLuint visionimg_to_gl(const VisionImg *img, EGLImageKHR *pkhr, void **pph);
void visionimg_destroy_gl(EGLImageKHR khr, void *ph);

#ifdef __cplusplus
}  // extern "C"
#endif

#endif
