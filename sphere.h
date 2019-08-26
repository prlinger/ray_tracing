#ifndef SPHEREH
#define SPHEREH

#include "hitable.h"

class sphere: public hitable {
  public:
    vec3 center;
    float radius;
    // sphere() {};
    sphere();
    // sphere(vec3 center, float radius) : center(center), radius(radius) {};
    sphere(vec3 center, float radius);
    virtual bool hit(const ray& r, float t_min, float t_max, hit_record& rec) const;
};


#endif
