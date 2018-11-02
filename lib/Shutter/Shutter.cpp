#include "Shutter.h"

void Shutter::begin(uint8_t power, uint8_t updown, uint8_t seconds) {
  pin_power = power;
  pin_updown = updown;
  running_seconds = seconds;

  pinMode(pin_power, OUTPUT);
  pinMode(pin_updown, OUTPUT);

  digitalWrite(pin_power, LOW);
  digitalWrite(pin_updown, LOW);
}

void Shutter::timer(void) {
  if (timer_active != 1) {
    return;
  }
  if (timer_run > running_seconds + 2) {
    noInterrupts();
    complete_power_down();
    timer_active = 0;
    interrupts();
  }

  if (timer_run > running_seconds) {
    noInterrupts();
    power_down();
    interrupts();
  }

  timer_run++;
}

void Shutter::activate_timer(void) {
  timer_active = 1;
  timer_run = 0;
}

void Shutter::complete_power_down(void) {
  digitalWrite(pin_power, LOW);
  digitalWrite(pin_updown, LOW);

  operation = OPERATION_NOPOWER;
}

void Shutter::power_down(void) {
  digitalWrite(pin_power, LOW);
}

void Shutter::up(void) {
  noInterrupts();
  if (operation == OPERATION_DOWN) {
    power_down();
    delay(900);
    complete_power_down();
  }
  operation = OPERATION_UP;
  digitalWrite(pin_power, HIGH);
  activate_timer();
  interrupts();
}

void Shutter::down(void) {
  Serial.print("Down: ");
  Serial.println(pin_power);
  noInterrupts();
  if (operation == OPERATION_UP) {
    power_down();
    delay(900);
    complete_power_down();
  }
  operation = OPERATION_DOWN;
  digitalWrite(pin_updown, HIGH);
  delay(5);
  digitalWrite(pin_power, HIGH);
  activate_timer();
  interrupts();
}

void Shutter::halt(void) {
  noInterrupts();
  power_down();
  delay(200);
  complete_power_down();
  interrupts();
}
