#include "main.h"


void clearCube() {  //clear the whole cube
  //After this function is called the shift register will be cleared of all data.
  //All layer drives turned off. The shif tegister output is enabled.
  //The shift register serial clock and register clock are both set low.
  //this function takes 72us to exicute
  digitalWrite(SHIFT_OUTEN, HIGH);  //disable shift register output
  digitalWrite(SHIFT_SRCLK, LOW);  //set shift register clock low
  digitalWrite(SHIFT_RCLK, LOW);  //set the output register clock low
  digitalWrite(SHIFT_DATA, LOW);  //set the shift register data low
  for(uint8_t i = 0; i < 32; i++) {  //cycle the whole shift register
    digitalWrite(SHIFT_SRCLK, HIGH);  //set shift register clock high
    digitalWrite(SHIFT_SRCLK, LOW);  //set shift register clock low
  }  //end of shift register clcyle
  digitalWrite(SHIFT_RCLK, HIGH);  //latch shifted data into the output register
  digitalWrite(SHIFT_RCLK, LOW);  //set the output register clock low
  digitalWrite(SHIFT_OUTEN, LOW);  //re-enable shift register output

  //Set all layer drives low
  digitalWrite(RED_LAYER_0, LOW); digitalWrite(GREEN_LAYER_0, LOW); digitalWrite(BLUE_LAYER_0, LOW);
  digitalWrite(RED_LAYER_1, LOW); digitalWrite(GREEN_LAYER_1, LOW); digitalWrite(BLUE_LAYER_1, LOW);
  digitalWrite(RED_LAYER_2, LOW); digitalWrite(GREEN_LAYER_2, LOW); digitalWrite(BLUE_LAYER_2, LOW);
  digitalWrite(RED_LAYER_3, LOW); digitalWrite(GREEN_LAYER_3, LOW); digitalWrite(BLUE_LAYER_3, LOW);
  digitalWrite(RED_LAYER_4, LOW); digitalWrite(GREEN_LAYER_4, LOW); digitalWrite(BLUE_LAYER_4, LOW);
}  //end of cube reset


void setLayerData(uint32_t data) {
  //this function takes 82us to exicute
  for(int8_t pxNum = 31; pxNum >= 0; pxNum--) {
    if(data >> pxNum & 1) digitalWrite(SHIFT_DATA, HIGH);
    else digitalWrite(SHIFT_DATA, LOW);
    digitalWrite(SHIFT_SRCLK, HIGH);  digitalWrite(SHIFT_SRCLK, LOW);
  }
  digitalWrite(SHIFT_RCLK, HIGH);  digitalWrite(SHIFT_RCLK, LOW);
}


void setLayerColor(uint8_t layer, uint8_t setReset) {
  //this function takes 2us to exicute
  switch (layer) {
    case 0: digitalWrite(RED_LAYER_0, setReset); break;
    case 1: digitalWrite(RED_LAYER_1, setReset); break;
    case 2: digitalWrite(RED_LAYER_2, setReset); break;
    case 3: digitalWrite(RED_LAYER_3, setReset); break;
    case 4: digitalWrite(RED_LAYER_4, setReset); break;
    case 5: digitalWrite(GREEN_LAYER_0, setReset); break;
    case 6: digitalWrite(GREEN_LAYER_1, setReset); break;
    case 7: digitalWrite(GREEN_LAYER_2, setReset); break;
    case 8: digitalWrite(GREEN_LAYER_3, setReset); break;
    case 9: digitalWrite(GREEN_LAYER_4, setReset); break;
    case 10: digitalWrite(BLUE_LAYER_0, setReset); break;
    case 11: digitalWrite(BLUE_LAYER_1, setReset); break;
    case 12: digitalWrite(BLUE_LAYER_2, setReset); break;
    case 13: digitalWrite(BLUE_LAYER_3, setReset); break;
    case 14: digitalWrite(BLUE_LAYER_4, setReset); break;
  }
}


void pixelTest(uint32_t speed_us) {
  clearCube();  //clear the cube
  for(uint8_t layer = 0; layer < 15; layer++) {
    setLayerColor(layer, HIGH);
    for(uint8_t pxNum = 0; pxNum < 25; pxNum++) {
      setLayerData(1 << pxNum);
      if(speed_us < 50000) delayMicroseconds(speed_us);
      else delay(speed_us/1000);
    }
    setLayerColor(layer, LOW);
  }
}


void layerTest(uint32_t speed_us, uint8_t pxCount) {
  clearCube();  //clear the cube
  for(uint8_t layer = 0; layer < 15; layer++) {
    setLayerColor(layer, HIGH);
    setLayerData(powl(2, pxCount)-1);
    if (speed_us < 182);  //do nothing
    else if(speed_us < 50000) delayMicroseconds(speed_us-182);  //182 us to account for overhead delay
    else delay(speed_us/1000);
    setLayerColor(layer, LOW);
  }
}
