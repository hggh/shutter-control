#include "Arduino.h"
#include <avr/power.h>
#include <avr/sleep.h>

#include <SPI.h>
#include <WiFi101.h>

#include "Shutter.h"
#include "Light.h"
#include "config.h"

WiFiServer server(80);
Shutter shutter1;
Shutter shutter2;
Shutter shutter3;
Light light1;
Light light2;

/*
 * ISR should called every second
 */
ISR(TIMER1_COMPA_vect) {
  shutter1.timer();
  shutter2.timer();
  shutter3.timer();
}

void setup_timer1(void) {
  TCCR1A = 0;
  TCCR1B = 0;
  TCNT1 = 0;

  /*
   * 1/8000000 * 1024 = .00012800000000000000
   * 1/.000128 = 7813
   */

  OCR1A = 7813;
  TCCR1B |= _BV(WGM12);
  TCCR1B |= _BV(CS10);
  TCCR1B |= _BV(CS12);
  TIMSK1 |= _BV(OCIE1A);
}

void setup() {
  ADCSRA &= ~(1 << 7);
  power_twi_disable();
  power_adc_disable();

#ifdef DEBUG
  Serial.begin(9600);
  Serial.println("Starting Rollladen Steuerung");
#else
  power_usart0_disable();
#endif

  if (WiFi.status() == WL_NO_SHIELD) {
#ifdef DEBUG
    Serial.println("WiFi Module not found")
    while (true);
#endif
  }

  server.begin();

  setup_timer1();
  shutter1.begin(A1, A2, 20);
  shutter2.begin(A3, A4, 20);
  shutter2.begin(8, 9, 20);

  light1.begin(A5);
  light2.begin(10);
}

void loop() {
  WiFiClient client = server.available();
  if (client) {
    String header_line = "";
    while (client.connected()) {
      char c = client.read();
      if (c == '\n') {
        if (header_line.length() == 0) {
          // request end
          break;
        }
        else {
          header_line = "";
        }
      }
      else if (c != '\r') {
        header_line += c;
      }

      // Light 1
      if (header_line.endsWith("GET /light1/on")) {
        light1.on();
      }
      if (header_line.endsWith("GET /light1/off")) {
        light1.off();
      }

      // Light 2
      if (header_line.endsWith("GET /light2/on")) {
        light2.on();
      }
      if (header_line.endsWith("GET /light2/off")) {
        light2.off();
      }


      // Shutter1
      if (header_line.endsWith("GET /shutter1/down")) {
        shutter1.down();
      }
      if (header_line.endsWith("GET /shutter1/up")) {
        shutter1.up();
      }
      if (header_line.endsWith("GET /shutter1/halt")) {
        shutter1.halt();
      }


      // Shutter2
      if (header_line.endsWith("GET /shutter2/down")) {
        shutter2.down();
      }
      if (header_line.endsWith("GET /shutter2/up")) {
        shutter2.up();
      }
      if (header_line.endsWith("GET /shutter2/halt")) {
        shutter2.halt();
      }

      // Shutter3
      if (header_line.endsWith("GET /shutter3/down")) {
        shutter3.down();
      }
      if (header_line.endsWith("GET /shutter3/up")) {
        shutter3.up();
      }
      if (header_line.endsWith("GET /shutter3/halt")) {
        shutter3.halt();
      }
    }

    client.stop();
  }
}
