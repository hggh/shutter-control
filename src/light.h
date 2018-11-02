#include <Arduino.h>

class Light {
  public:
    void begin(uint8_t light_pin);
    void on(void);
    void off(void);
  private:
    uint8_t pin;
};
