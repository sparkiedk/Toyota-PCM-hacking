;tinyloader! executes from onboard memory, loads 1k programs 
;into 8000h->83ffh, and then transfers execution to 8000h


		.msfirst		; Big Endian processor

.include 	sfrdefs.h

DATABYTE	.equ 50h

;============================================================================================
; ROM segment
.org 100h

ersemode
	ld	d, #0AA55h	;begin unlock sequence
	st	a, 0D555h	;store $AA flash address $5555
	st	b, 0AAAAh	;store $55 flash address $2AAA
	ld	a, #80h		;erase mode
	st	a, 0D555h	;store $80 flash address $5555
	ld	a, #0AAh
	st	a, 0D555h	;store $AA flash address $5555
	st	b, 0AAAAh	;store $55 flash address $2AAA
	ld	a, #30h		;sector erase
	st	a, 8000h	;write will not occur to 01ff, instruction will be modified above

toggle	bsr	wchdog
	ld	a, 8000h
	ld	b, 8000h
	cmp	a, b
	bne 	toggle	;when subsequent reads from that address are the same this branch will fail, flash is done erasing

;***************************
writmode

	ld	x, #8000h

prgloop	bsr	wchdog
	ld	b, _SSD		;receive data from serial port
	and	b, #80h
	beq	prgloop
	ld	a, _SIDR_SODR

	st	a, DATABYTE

unlock
	ld	d, #0AA55h	;begin unlock sequence, for every goddamn byte!
	st	a, 0D555h	;store $AA flash address $5555
	st	b, 0AAAAh	;store $55 flash address $2AAA
	ld	a, #0A0h	;byte program mode
	st	a, 0D555h	;store $A0 flash address $5555	nop
	ld	a, DATABYTE
wbyte	st	a, x+0
	inc	x		
	cmp	x, #83FFh	;termination address
	ble	prgloop

	jmp	8000h

;=========================================================================wchdog
wchdog	ld	a, _PORTA	;watchdog
	xor	a, #01h
	st	a, _PORTA	;watchdog
	ret

;===========================
;===========================
;=======most glorious=======
	    .END
;===========================
;===========================
