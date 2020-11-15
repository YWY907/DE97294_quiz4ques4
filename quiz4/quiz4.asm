		#include<p18f4550.inc>
		
		org	0x00
		goto	start
		org	0x08
		retfie
		org	0x18
		retfie

start	CLRF PORTD
TOGGLE	MOVLW B'00101010'
		XORWF PORTD,W,A
		MOVF 0x20,W,A
		ADDWF 0x20,W,A

		end