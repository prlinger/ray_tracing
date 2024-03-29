#ifndef CAMERAH
#define CAMERAH

#include "ray.h"

class camera {
  public:
    vec3 lower_left_corner;
    vec3 horizontal;
    vec3 vertical;
    vec3 origin;

    camera();
    ray get_ray(float u, float v);
};

#endif
