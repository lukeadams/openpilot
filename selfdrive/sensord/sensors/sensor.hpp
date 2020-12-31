#pragma once

#include "log.capnp.h"

class Sensor {
public:
  virtual ~Sensor() {};
  virtual int init() = 0;
  virtual void get_event(cereal::SensorEventData::Builder &event) = 0;
};
