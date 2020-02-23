
_main:

;5x1 PIC Program.c,3 :: 		void main() {
;5x1 PIC Program.c,4 :: 		osccon=0x72;
	MOVLW       114
	MOVWF       OSCCON+0 
;5x1 PIC Program.c,5 :: 		trisa=0x00;
	CLRF        TRISA+0 
;5x1 PIC Program.c,6 :: 		trisb=0x00;
	CLRF        TRISB+0 
;5x1 PIC Program.c,9 :: 		while(1) {
L_main0:
;5x1 PIC Program.c,10 :: 		porta=0b11111110;
	MOVLW       254
	MOVWF       PORTA+0 
;5x1 PIC Program.c,11 :: 		portb=1;
	MOVLW       1
	MOVWF       PORTB+0 
;5x1 PIC Program.c,12 :: 		delay_ms(delaySpeed/2);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	NOP
	NOP
;5x1 PIC Program.c,13 :: 		portb=2;
	MOVLW       2
	MOVWF       PORTB+0 
;5x1 PIC Program.c,14 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
;5x1 PIC Program.c,15 :: 		portb=4;
	MOVLW       4
	MOVWF       PORTB+0 
;5x1 PIC Program.c,16 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
	NOP
;5x1 PIC Program.c,17 :: 		portb=8;
	MOVLW       8
	MOVWF       PORTB+0 
;5x1 PIC Program.c,18 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
;5x1 PIC Program.c,19 :: 		portb=16;
	MOVLW       16
	MOVWF       PORTB+0 
;5x1 PIC Program.c,20 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	NOP
;5x1 PIC Program.c,21 :: 		portb=8;
	MOVLW       8
	MOVWF       PORTB+0 
;5x1 PIC Program.c,22 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
;5x1 PIC Program.c,23 :: 		portb=4;
	MOVLW       4
	MOVWF       PORTB+0 
;5x1 PIC Program.c,24 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	DECFSZ      R11, 1, 1
	BRA         L_main8
	NOP
;5x1 PIC Program.c,25 :: 		portb=2;
	MOVLW       2
	MOVWF       PORTB+0 
;5x1 PIC Program.c,26 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main9:
	DECFSZ      R13, 1, 1
	BRA         L_main9
	DECFSZ      R12, 1, 1
	BRA         L_main9
	DECFSZ      R11, 1, 1
	BRA         L_main9
	NOP
;5x1 PIC Program.c,27 :: 		portb=1;
	MOVLW       1
	MOVWF       PORTB+0 
;5x1 PIC Program.c,28 :: 		delay_ms(delaySpeed/2);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main10:
	DECFSZ      R13, 1, 1
	BRA         L_main10
	DECFSZ      R12, 1, 1
	BRA         L_main10
	NOP
	NOP
;5x1 PIC Program.c,30 :: 		porta=0b11111101;
	MOVLW       253
	MOVWF       PORTA+0 
;5x1 PIC Program.c,31 :: 		portb=1;
	MOVLW       1
	MOVWF       PORTB+0 
;5x1 PIC Program.c,32 :: 		delay_ms(delaySpeed/2);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main11:
	DECFSZ      R13, 1, 1
	BRA         L_main11
	DECFSZ      R12, 1, 1
	BRA         L_main11
	NOP
	NOP
;5x1 PIC Program.c,33 :: 		portb=2;
	MOVLW       2
	MOVWF       PORTB+0 
;5x1 PIC Program.c,34 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main12:
	DECFSZ      R13, 1, 1
	BRA         L_main12
	DECFSZ      R12, 1, 1
	BRA         L_main12
	DECFSZ      R11, 1, 1
	BRA         L_main12
	NOP
;5x1 PIC Program.c,35 :: 		portb=4;
	MOVLW       4
	MOVWF       PORTB+0 
;5x1 PIC Program.c,36 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main13:
	DECFSZ      R13, 1, 1
	BRA         L_main13
	DECFSZ      R12, 1, 1
	BRA         L_main13
	DECFSZ      R11, 1, 1
	BRA         L_main13
	NOP
;5x1 PIC Program.c,37 :: 		portb=8;
	MOVLW       8
	MOVWF       PORTB+0 
;5x1 PIC Program.c,38 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main14:
	DECFSZ      R13, 1, 1
	BRA         L_main14
	DECFSZ      R12, 1, 1
	BRA         L_main14
	DECFSZ      R11, 1, 1
	BRA         L_main14
	NOP
;5x1 PIC Program.c,39 :: 		portb=16;
	MOVLW       16
	MOVWF       PORTB+0 
;5x1 PIC Program.c,40 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main15:
	DECFSZ      R13, 1, 1
	BRA         L_main15
	DECFSZ      R12, 1, 1
	BRA         L_main15
	DECFSZ      R11, 1, 1
	BRA         L_main15
	NOP
;5x1 PIC Program.c,41 :: 		portb=8;
	MOVLW       8
	MOVWF       PORTB+0 
;5x1 PIC Program.c,42 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main16:
	DECFSZ      R13, 1, 1
	BRA         L_main16
	DECFSZ      R12, 1, 1
	BRA         L_main16
	DECFSZ      R11, 1, 1
	BRA         L_main16
	NOP
;5x1 PIC Program.c,43 :: 		portb=4;
	MOVLW       4
	MOVWF       PORTB+0 
;5x1 PIC Program.c,44 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main17:
	DECFSZ      R13, 1, 1
	BRA         L_main17
	DECFSZ      R12, 1, 1
	BRA         L_main17
	DECFSZ      R11, 1, 1
	BRA         L_main17
	NOP
;5x1 PIC Program.c,45 :: 		portb=2;
	MOVLW       2
	MOVWF       PORTB+0 
;5x1 PIC Program.c,46 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main18:
	DECFSZ      R13, 1, 1
	BRA         L_main18
	DECFSZ      R12, 1, 1
	BRA         L_main18
	DECFSZ      R11, 1, 1
	BRA         L_main18
	NOP
;5x1 PIC Program.c,47 :: 		portb=1;
	MOVLW       1
	MOVWF       PORTB+0 
;5x1 PIC Program.c,48 :: 		delay_ms(delaySpeed/2);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main19:
	DECFSZ      R13, 1, 1
	BRA         L_main19
	DECFSZ      R12, 1, 1
	BRA         L_main19
	NOP
	NOP
;5x1 PIC Program.c,50 :: 		porta=0b11111011;
	MOVLW       251
	MOVWF       PORTA+0 
;5x1 PIC Program.c,51 :: 		portb=1;
	MOVLW       1
	MOVWF       PORTB+0 
;5x1 PIC Program.c,52 :: 		delay_ms(delaySpeed/2);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main20:
	DECFSZ      R13, 1, 1
	BRA         L_main20
	DECFSZ      R12, 1, 1
	BRA         L_main20
	NOP
	NOP
;5x1 PIC Program.c,53 :: 		portb=2;
	MOVLW       2
	MOVWF       PORTB+0 
;5x1 PIC Program.c,54 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main21:
	DECFSZ      R13, 1, 1
	BRA         L_main21
	DECFSZ      R12, 1, 1
	BRA         L_main21
	DECFSZ      R11, 1, 1
	BRA         L_main21
	NOP
;5x1 PIC Program.c,55 :: 		portb=4;
	MOVLW       4
	MOVWF       PORTB+0 
;5x1 PIC Program.c,56 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main22:
	DECFSZ      R13, 1, 1
	BRA         L_main22
	DECFSZ      R12, 1, 1
	BRA         L_main22
	DECFSZ      R11, 1, 1
	BRA         L_main22
	NOP
;5x1 PIC Program.c,57 :: 		portb=8;
	MOVLW       8
	MOVWF       PORTB+0 
;5x1 PIC Program.c,58 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main23:
	DECFSZ      R13, 1, 1
	BRA         L_main23
	DECFSZ      R12, 1, 1
	BRA         L_main23
	DECFSZ      R11, 1, 1
	BRA         L_main23
	NOP
;5x1 PIC Program.c,59 :: 		portb=16;
	MOVLW       16
	MOVWF       PORTB+0 
;5x1 PIC Program.c,60 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main24:
	DECFSZ      R13, 1, 1
	BRA         L_main24
	DECFSZ      R12, 1, 1
	BRA         L_main24
	DECFSZ      R11, 1, 1
	BRA         L_main24
	NOP
;5x1 PIC Program.c,61 :: 		portb=8;
	MOVLW       8
	MOVWF       PORTB+0 
;5x1 PIC Program.c,62 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main25:
	DECFSZ      R13, 1, 1
	BRA         L_main25
	DECFSZ      R12, 1, 1
	BRA         L_main25
	DECFSZ      R11, 1, 1
	BRA         L_main25
	NOP
;5x1 PIC Program.c,63 :: 		portb=4;
	MOVLW       4
	MOVWF       PORTB+0 
;5x1 PIC Program.c,64 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main26:
	DECFSZ      R13, 1, 1
	BRA         L_main26
	DECFSZ      R12, 1, 1
	BRA         L_main26
	DECFSZ      R11, 1, 1
	BRA         L_main26
	NOP
;5x1 PIC Program.c,65 :: 		portb=2;
	MOVLW       2
	MOVWF       PORTB+0 
;5x1 PIC Program.c,66 :: 		delay_ms(delaySpeed);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main27:
	DECFSZ      R13, 1, 1
	BRA         L_main27
	DECFSZ      R12, 1, 1
	BRA         L_main27
	DECFSZ      R11, 1, 1
	BRA         L_main27
	NOP
;5x1 PIC Program.c,67 :: 		portb=1;
	MOVLW       1
	MOVWF       PORTB+0 
;5x1 PIC Program.c,68 :: 		delay_ms(delaySpeed/2);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main28:
	DECFSZ      R13, 1, 1
	BRA         L_main28
	DECFSZ      R12, 1, 1
	BRA         L_main28
	NOP
	NOP
;5x1 PIC Program.c,69 :: 		}
	GOTO        L_main0
;5x1 PIC Program.c,70 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
