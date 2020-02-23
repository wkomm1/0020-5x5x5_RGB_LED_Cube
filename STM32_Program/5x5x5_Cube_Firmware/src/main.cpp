#include "main.h"


//global variables
uint32_t redData = 0;


void setup() {
  afio_cfg_debug_ports(AFIO_DEBUG_SW_ONLY);  //disable the JTAG pins
  pinMode(STATUS_LED, OUTPUT);  digitalWrite(STATUS_LED, LOW);  //initilize and set the status LED

  //columb shift register pins
  pinMode(SHIFT_DATA, OUTPUT);  digitalWrite(SHIFT_DATA, LOW);  //initilize and set the data low
  pinMode(SHIFT_RCLK, OUTPUT);  digitalWrite(SHIFT_RCLK, LOW);  //initilize and set the register clock low
  pinMode(SHIFT_SRCLK, OUTPUT);  digitalWrite(SHIFT_SRCLK, LOW);  //initilize and set the serial clock low
  pinMode(SHIFT_OUTEN, OUTPUT);  digitalWrite(SHIFT_OUTEN, HIGH);  //initilize and disabel shift register output

  //red layer drive pins
  pinMode(RED_LAYER_4, OUTPUT);  digitalWrite(RED_LAYER_4, LOW);  //initilize and set the layer low
  pinMode(RED_LAYER_3, OUTPUT);  digitalWrite(RED_LAYER_3, LOW);  //initilize and set the layer low
  pinMode(RED_LAYER_2, OUTPUT);  digitalWrite(RED_LAYER_2, LOW);  //initilize and set the layer low
  pinMode(RED_LAYER_1, OUTPUT);  digitalWrite(RED_LAYER_1, LOW);  //initilize and set the layer low
  pinMode(RED_LAYER_0, OUTPUT);  digitalWrite(RED_LAYER_0, LOW);  //initilize and set the layer low

  //green layer drive pins
  pinMode(GREEN_LAYER_4, OUTPUT);  digitalWrite(GREEN_LAYER_4, LOW);  //initilize and set the layer low
  pinMode(GREEN_LAYER_3, OUTPUT);  digitalWrite(GREEN_LAYER_3, LOW);  //initilize and set the layer low
  pinMode(GREEN_LAYER_2, OUTPUT);  digitalWrite(GREEN_LAYER_2, LOW);  //initilize and set the layer low
  pinMode(GREEN_LAYER_1, OUTPUT);  digitalWrite(GREEN_LAYER_1, LOW);  //initilize and set the layer low
  pinMode(GREEN_LAYER_0, OUTPUT);  digitalWrite(GREEN_LAYER_0, LOW);  //initilize and set the layer low

  //blue layer drive pins
  pinMode(BLUE_LAYER_4, OUTPUT);  digitalWrite(BLUE_LAYER_4, LOW);  //initilize and set the layer low
  pinMode(BLUE_LAYER_3, OUTPUT);  digitalWrite(BLUE_LAYER_3, LOW);  //initilize and set the layer low
  pinMode(BLUE_LAYER_2, OUTPUT);  digitalWrite(BLUE_LAYER_2, LOW);  //initilize and set the layer low
  pinMode(BLUE_LAYER_1, OUTPUT);  digitalWrite(BLUE_LAYER_1, LOW);  //initilize and set the layer low
  pinMode(BLUE_LAYER_0, OUTPUT);  digitalWrite(BLUE_LAYER_0, LOW);  //initilize and set the layer low

  //clear the cube
  clearCube();
}


void loop() {
  digitalWrite(STATUS_LED, !digitalRead(STATUS_LED));
  //pixelTest(50e3);
  //layerTest(50000, 25);
  randomPixel(1000, 100);
}
