#line 1 "C:/Users/William/Dropbox/New Projects/0003 - 5x5x5 RGB LED Cube/5x1 PIC program/5x1 PIC Program.c"
const int delaySpeed = 100;

void main() {
 osccon=0x72;
 trisa=0x00;
 trisb=0x00;


 while(1) {
 porta=0b11111110;
 portb=1;
 delay_ms(delaySpeed/2);
 portb=2;
 delay_ms(delaySpeed);
 portb=4;
 delay_ms(delaySpeed);
 portb=8;
 delay_ms(delaySpeed);
 portb=16;
 delay_ms(delaySpeed);
 portb=8;
 delay_ms(delaySpeed);
 portb=4;
 delay_ms(delaySpeed);
 portb=2;
 delay_ms(delaySpeed);
 portb=1;
 delay_ms(delaySpeed/2);

 porta=0b11111101;
 portb=1;
 delay_ms(delaySpeed/2);
 portb=2;
 delay_ms(delaySpeed);
 portb=4;
 delay_ms(delaySpeed);
 portb=8;
 delay_ms(delaySpeed);
 portb=16;
 delay_ms(delaySpeed);
 portb=8;
 delay_ms(delaySpeed);
 portb=4;
 delay_ms(delaySpeed);
 portb=2;
 delay_ms(delaySpeed);
 portb=1;
 delay_ms(delaySpeed/2);

 porta=0b11111011;
 portb=1;
 delay_ms(delaySpeed/2);
 portb=2;
 delay_ms(delaySpeed);
 portb=4;
 delay_ms(delaySpeed);
 portb=8;
 delay_ms(delaySpeed);
 portb=16;
 delay_ms(delaySpeed);
 portb=8;
 delay_ms(delaySpeed);
 portb=4;
 delay_ms(delaySpeed);
 portb=2;
 delay_ms(delaySpeed);
 portb=1;
 delay_ms(delaySpeed/2);
 }
}
