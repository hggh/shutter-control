#include "light.h"

void Light::begin(uint8_t light_pin) {
  pin = light_pin;
  pinMode(pin, OUTPUT);
  digitalWrite(pin, LOW);
}

void Light::on(void) {
  digitalWrite(pin, HIGH);
}

void Light::off(void) {
  digitalWrite(pin, LOW);
}
