#include "Arduino.h"
#include <ESP8266WiFi.h>
#include <ArduinoOTA.h>

#include <Shutter.h>
#include <Light.h>
#include "config.h"

extern "C" {
#include "user_interface.h"
}


WiFiServer server(80);
Shutter shutter1;
Shutter shutter2;
Light light1;
Light light2;

os_timer_t Timer1;


void timerCall(void*z) {
  shutter1.timer();
  shutter2.timer();
}

void setup_timer1(void) {
  os_timer_setfn(&Timer1, timerCall, NULL);
  os_timer_arm(&Timer1, 1000, true);
}


void wificonnect() {
  WiFi.mode(WIFI_STA);
  WiFi.begin(SECRET_SSID, SECRET_PASS);
  while (WiFi.status() != WL_CONNECTED) {
    delay(200);
  }
}

void setup() {

  setup_timer1();
  wificonnect();

  server.begin();

  shutter1.begin(D1, D2, 40);
  shutter2.begin(D7, D8, 60);

  light1.begin(D5);
  light2.begin(D6);

  ArduinoOTA.setPassword(OTA_PASS);
  ArduinoOTA.begin();
}

void loop() {
  if (WiFi.status() != WL_CONNECTED) {
    wificonnect();
  }

  ArduinoOTA.handle();

  // Check if a client has connected
  WiFiClient client = server.available();
  if (!client) {
    return;
  }

  // Wait until the client sends some data
  while (!client.available()) {
    delay(1);
  }

  // Read the first line of the request
  String header_line = client.readStringUntil('\r');
  client.flush();

  // Light 1
  if (header_line.startsWith("GET /light1/on")) {
    light1.on();
  }
  if (header_line.startsWith("GET /light1/off")) {
    light1.off();
  }

  // Light 2
  if (header_line.startsWith("GET /light2/on")) {
    light2.on();
  }
  if (header_line.startsWith("GET /light2/off")) {
    light2.off();
  }


  // Shutter1
  if (header_line.startsWith("GET /shutter1/down")) {
    shutter1.down();
  }
  if (header_line.startsWith("GET /shutter1/up")) {
    shutter1.up();
  }
  if (header_line.startsWith("GET /shutter1/halt")) {
    shutter1.halt();
  }

  // Shutter2
  if (header_line.startsWith("GET /shutter2/down")) {
    shutter2.down();
  }
  if (header_line.startsWith("GET /shutter2/up")) {
    shutter2.up();
  }
  if (header_line.startsWith("GET /shutter2/halt")) {
    shutter2.halt();
  }

  String s = "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nOK";
  client.print(s);
  delay(1);
}
