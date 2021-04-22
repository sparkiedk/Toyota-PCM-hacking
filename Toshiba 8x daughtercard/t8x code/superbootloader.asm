;bootloader will execute out of ram at origin $6000h


		.msfirst		; Big Endian processor

.include 	sfrdefs.h

ADDR1		.equ 50h
ADDR2		.equ 52h
DATABYTE	.equ 54h
CRAP		.equ 56h
;============================================================================================
; ROM segment
.org 6000h

;========================================	
;bootloader
;is copied into ram (6000h) by copybootloader program
;'r' is read, expects start address, end address (inclusive)
;'e' is erase, expects block address (4k blocks, mucho danger!). lower 12 bits will be ignored
;'w' is write, expects start address, end address, data
;'t' is reset, resets micro by ld x, 0FFFEh, jmp 0,x
;'E' is erase all 32kb of visible flash - must never call chip erase function!

reset
	di
	ld	s, #2DFh
	ld	a, #01h		;set A0 output
	st	a, _DDRA	;set A0 output
	ld	x, #hpybdy
	jsr	putstr

bootsrt
	ld	x, #welcome
	jsr	putstr	
waitch	jsr	rxch
	jsr 	putch
	cmp	a, #'r'
	beq	readmode
	cmp	a, #'e'
	beq	ersemode
	cmp	a, #'E'
	beq	bigerse
	cmp	a, #'w'
	beq	writmode
	cmp	a, #'t'
	beq	rsetmode

	bra	waitch	

;***************************
readmode
	ld	x, #txtread
	jsr	putstr
	ld	x, #ADDR1
	jsr	rxword
	ld	x, #ADDR2
	jsr	rxword
	ld	x, ADDR1

readout	jsr	wchdog
	ld	a, x+0
	jsr 	putch
	inc	x
	beq	rend
	cmp	x, ADDR2
	ble	readout		;
rend	jmp	bootsrt		;restart program
;***************************
bigerse
	ld	x, #8000h
	jsr	erse
	ld	x, #9000h
	jsr	erse
	ld	x, #0A000h
	jsr	erse
	ld	x, #0B000h
	jsr	erse
	ld	x, #0C000h
	jsr	erse
	ld	x, #0D000h
	jsr	erse
	ld	x, #0E000h
	jsr	erse
	ld	x, #0F000h
	jsr	erse
	jmp	bootsrt

;***************************
ersemode
	ld	x, #txterse
	jsr	putstr
	ld	x, #ADDR1
	jsr	rxword

	ld	x, ADDR1
	
	bsr	erse		;erase the sector

	jmp	bootsrt

;***************************
rsetmode
	ld	x, #txtrset
	jsr	putstr

	ld	x, 0FFFEh	;read the boot address
	jmp	x+0		;transfer execution to that code.


;***************************
writmode
	ld	x, #txtwrit
	jsr	putstr
	ld	x, #ADDR1
	jsr	rxword
	ld	x, #ADDR2
	jsr	rxword
	ld	a, ADDR1
	jsr	putch
	ld	a, ADDR1+1
	jsr	putch
	ld	a, ADDR2
	jsr	putch
	ld	a, ADDR2+1
	jsr	putch

	ld	x, ADDR1

prgloop	bsr	rxch
	st	a, DATABYTE
	ld	d, #0AA55h	;begin unlock sequence
	st	a, 0D555h	;store $AA flash address $5555
	st	b, 0AAAAh	;store $55 flash address $2AAA
	ld	a, #0A0h	;byte program mode
	st	a, 0D555h	;store $A0 flash address $5555
	ld	a, DATABYTE
	st	a, x+0		;STORE the data byte!!

	inc	x		
	beq	prgend		;terminate if we wrap around from FFFF to 0000
	cmp	x, ADDR2	;termination address
	ble	prgloop

prgend	jmp	bootsrt


;=========================================================================erse
; ERSE: erase a sector (4k) of flash memory. accepts sector address in X,
;       but flash chip will ignore address bits 11~0.

erse	ld	d, #0AA55h	;begin unlock sequence
	st	a, 0D555h	;store $AA flash address $5555
	st	b, 0AAAAh	;store $55 flash address $2AAA
	ld	a, #80h		;erase mode
	st	a, 0D555h	;store $80 flash address $5555
	ld	a, #0AAh
	st	a, 0D555h	;store $AA flash address $5555
	st	b, 0AAAAh	;store $55 flash address $2AAA
	ld	a, #30h		;sector erase
	st	a, x+0		;show flash which sector to erase
toggle	bsr	wchdog
	ld	a, x+0
;	ld	b, x+0
	cmp	a, #0FFh
	bne 	toggle	;when subsequent reads from that address are the same this branch will fail, flash is done erasing

	ret

;=========================================================================putstr
; PUTSTR: put charchters from a string variable until a null (\000) is encountered
; uses putch

putstr 	ld	a, x+0
	beq	endstr
	bsr	putch
	inc	x
	
	bsr	wchdog

	bra 	putstr
endstr	ret

;=========================================================================wchdog
wchdog	ld	b, _PORTA	;watchdog
	xor	b, #01h
	st	b, _PORTA	;watchdog
	ret

;=========================================================================putch
; PUTCH: wait until not full, drop a char onto the serial port and wait until not full

putch	ld    	b, _FTSTAT	; load serial status data reg into b
	and   	b, #02h		; mask (bit 1)  0000 0020
	bne   	putch		; loop until bit 2 clear, bit is high when tx buffer is full
	st	a, _FTDATA
pwait	ld    	b, _FTSTAT	; load serial status data reg into b
	and   	b, #02h		; mask (bit 1)  0010 0000
	bne   	pwait		; loop until bit 2 clear
	ret

;=========================================================================rxch
; RXCH: wait until a charachter is available on the serial port, then load the charachter

rxch	bsr	wchdog

	ld	a, _FTSTAT
	and	a, #01h		;mask bit 00000 0001
	bne	rxch		;bit is high when empty
	ld	a, _FTDATA
	ret

;=========================================================================rxch
; RXword: grab two bytes using rxch, install in pointed by x

rxword	bsr	rxch
	st	a, x+0
	bsr	rxch
	st	a, x+1
	ret

;========================================================================Constants


hpybdy
	.TEXT	"Happy Birthday!"
	.db	0Dh
	.db	0Ah
	.db	0

welcome
	.TEXT	"Denso 8X flash bootloader Copyright Sparkie, Dedicated to his lovely wife (r/e/w/t/E)"
	.db	0Dh
	.db	0Ah
	.db	0

txtread
	.TEXT	"Read mode: input start address, end address (both inclusive) in binary"
	.db	0Dh
	.db	0Ah
	.db	0

txterse
	.TEXT	"Erase mode: input block address (0x{8..F}000) in binary"
	.db	0Dh
	.db	0Ah
	.db	0

txtwrit
	.TEXT	"Write Mode: input start address, end address (both inclusive) in binary, then data bytes in binary"
	.db	0Dh
	.db	0Ah
	.db	0

txtrset
	.TEXT	"Oh no, here we go!"
	.db	0Dh
	.db	0Ah
	.db	0Dh
	.db	0Ah
	.db	0


.org 62FFh
	.db 	'X'

;===========================
;===========================
;=======most glorious=======
	    .END
;===========================
;===========================
