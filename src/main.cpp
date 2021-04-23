#include "Arduino.h"
#include <ESP8266WiFi.h>
#include <ArduinoOTA.h>

#include <PubSubClient.h>

#include <ShiftOutRegister.h>
#include <Shutter.h>
#include <Light.h>
#include "config.h"

extern "C" {
#include "user_interface.h"
}

WiFiClient espClient;
PubSubClient client(espClient);
WiFiServer server(80);

ShiftOutRegister sh_register;
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

void mqtt_check_connection() {
  if (!client.connected()) {
    client.connect("roller-light-sun-blind-windspeed", MQTT_USERNAME, MQTT_PASSWORD);
  }
}

void wificonnect() {
  WiFi.mode(WIFI_STA);
  WiFi.begin(SECRET_SSID, SECRET_PASS);
  while (WiFi.status() != WL_CONNECTED) {
    delay(200);
  }
  mqtt_check_connection();
}

void setup() {
  WiFi.hostname("roller-light-sun-blind-windspeed");

  client.setServer(MQTT_SERVER, 1883);

  setup_timer1();
  wificonnect();

  server.begin();

  /**
     D6/GPIO12 == data/SER
     D2/GPIO4  == shift/SRCLK
     D1/GPIO5  == store/RCLK
     D5/GPIO14  == enable/OE
  **/
  sh_register.init(D6, D2, D1, D5, 8);

  shutter1.begin(2, 3, 40, &sh_register);
  shutter2.begin(4, 5, 60, &sh_register);

  light1.begin(0, &sh_register);
  light2.begin(1, &sh_register);

  ArduinoOTA.setPassword(OTA_PASS);
  ArduinoOTA.begin();
}

void loop() {
  delay(1);
  if (WiFi.status() != WL_CONNECTED) {
    wificonnect();
  }

  ArduinoOTA.handle();
  mqtt_check_connection();
  client.loop();

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
