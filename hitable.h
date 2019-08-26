#ifndef HITABLEH
#define HITABLEH

#include "ray.h"

struct hit_record {
    float t; // This will store the time for motion blur
    vec3 p;
    vec3 normal;
};

class hitable {
  public:
    virtual bool hit(const ray& r, float t_min, float t_max, hit_record& rec) const = 0;
};

#endif
