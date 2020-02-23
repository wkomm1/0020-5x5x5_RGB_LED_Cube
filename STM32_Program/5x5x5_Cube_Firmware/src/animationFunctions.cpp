#include "main.h"


void randomPixel(uint32_t speed_us, uint8_t pixelCount) {
  setLayerData(1<<rand()%25);
  setLayerColor(rand()%15, HIGH);
  if(speed_us < 50000) delayMicroseconds(speed_us);
  else delay(speed_us/1000);
  clearCube();
}
