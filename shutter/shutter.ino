#include <avr/power.h>

#include <RFM69.h>
#include <LowPower.h>

#include "config.h"

RFM69 radio;

#define OPERATION_NOPOWER 0
#define OPERATION_UP 1
#define OPERATION_DOWN 2

volatile short operation_active = OPERATION_NOPOWER;
volatile short timer_count = 0;
volatile short timer_active = 0;

/*
 * ISR should called every second
 */
ISR(TIMER1_COMPA_vect) {
  if (timer_count > ROLLO_COMPLETE_OPERATION_SECOND) {
    noInterrupts();
    TCCR1A = 0;
    TCCR1B = 0;
    rollo_halt();
    timer_active = 0;
    interrupts();
  }
  else {
    timer_count++;
  }
}

void setup_timer1() {
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
  timer_count = 0;
  timer_active = 1;
}

void rollo_halt() {
  digitalWrite(PIN_ROLLO_POWER, LOW);
  delay(5);
  digitalWrite(PIN_ROLLO_UPDOWN, LOW);

  operation_active = 0;
}

void rollo_up() {
  noInterrupts();
  if (operation_active == OPERATION_DOWN) {
    rollo_halt();
    delay(700);
  }
  operation_active = OPERATION_UP;
  digitalWrite(PIN_ROLLO_UPDOWN, LOW);
  digitalWrite(PIN_ROLLO_POWER, HIGH);
  setup_timer1();
  interrupts();
}

void rollo_down() {
  noInterrupts();
  if (operation_active == OPERATION_UP) {
    rollo_halt();
    delay(700);
  }
  operation_active = OPERATION_DOWN;
  digitalWrite(PIN_ROLLO_UPDOWN, HIGH);
  digitalWrite(PIN_ROLLO_POWER, HIGH);
  setup_timer1();
  interrupts();
}

void setup() {
  power_twi_disable();
  power_adc_disable();

   if (DEBUG == 1) {
    Serial.begin(9600);
    Serial.println("Starting Rollladen Steuerung");
  }
  else {
    power_usart0_disable();
  }

  pinMode(PIN_ROLLO_POWER, OUTPUT);
  digitalWrite(PIN_ROLLO_POWER, LOW);

  pinMode(PIN_ROLLO_UPDOWN, OUTPUT);
  digitalWrite(PIN_ROLLO_UPDOWN, LOW);

  radio.initialize(FREQUENCY, NODEID, NETWORKID);
  radio.encrypt(ENCRYPTKEY);

}

void loop() {
  if (radio.receiveDone()) {
    String data;
  
    for (byte i = 0; i < radio.DATALEN; i++) {
      data += (char)radio.DATA[i];
    }
    uint8_t index = data.indexOf(';');
    String command = data.substring(0, index);

    if (radio.ACKRequested()) {
      byte theNodeID = radio.SENDERID;
      radio.sendACK();
    }

    if (DEBUG == 1) {
      Serial.print('[');
      Serial.print(radio.SENDERID, DEC);
      Serial.print("] ");
      Serial.println(command); 
    }

    if (command.equals("UP")) {
      rollo_up();
    }

    if (command.equals("DOWN")) {
      rollo_down();
    }

    if (command.equals("HALT")) {
      rollo_halt();
    }
  }
  if (timer_active == 0) {
    LowPower.powerDown(SLEEP_FOREVER, ADC_ON, BOD_OFF);
  }
}
