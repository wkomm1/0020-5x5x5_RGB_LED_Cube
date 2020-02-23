//common headers
#include <Arduino.h>

//utility functions
void clearCube();  //clear the whole cube
void setLayerData(uint32_t data);
void setLayerColor(uint8_t layer, uint8_t setReset);
void pixelTest(uint32_t speed_us);
void layerTest(uint32_t speed_us, uint8_t pxCount);

//animation functions
void randomPixel(uint32_t speed_us, uint8_t pixelCount);

//status LED
const byte STATUS_LED =  PC13;  //status led active LOW

//columb shift register pins
const byte SHIFT_DATA =  PA0;  //positive Logic
const byte SHIFT_RCLK =  PA1;  //rising edge
const byte SHIFT_SRCLK = PA2;  //rising edge
const byte SHIFT_OUTEN = PA3;  //active LOW

//red layer drive pins
const byte RED_LAYER_4 =   PB9;  //active HIGH red layer 4
const byte RED_LAYER_3 =   PB8;  //active HIGH red layer 3
const byte RED_LAYER_2 =   PB7;  //active HIGH red layer 2
const byte RED_LAYER_1 =   PB6;  //active HIGH red layer 1
const byte RED_LAYER_0 =   PB5;  //active HIGH red layer 0

//green layer drive pins
const byte GREEN_LAYER_4 = PB4;   //active HIGH green layer 4
const byte GREEN_LAYER_3 = PB3;   //active HIGH green layer 3
const byte GREEN_LAYER_2 = PA15;  //active HIGH green layer 2
const byte GREEN_LAYER_1 = PA10;  //active HIGH green layer 1
const byte GREEN_LAYER_0 = PA9;   //active HIGH green layer 0

//blue layer drive pins
const byte BLUE_LAYER_0 =  PA8;   //active HIGH blue layer 4
const byte BLUE_LAYER_1 =  PB15;  //active HIGH blue layer 3
const byte BLUE_LAYER_2 =  PB14;  //active HIGH blue layer 2
const byte BLUE_LAYER_3 =  PB13;  //active HIGH blue layer 1
const byte BLUE_LAYER_4 =  PB12;  //active HIGH blue layer 0

//global variables
extern uint32_t redData;
