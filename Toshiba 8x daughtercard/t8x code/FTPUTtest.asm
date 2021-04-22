
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org 6000h
bootsrt
	ld	x, #welcome
	bsr	putstr	
	bra	bootsrt

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

;=========================================================================putch
; PUTCH: wait until not full, drop a char onto the serial port and wait until not full

putch	ld    	b, _FTSTAT	; load serial status data reg into b
	and   	b, #02h		; mask (bit 1)  0000 0010
	bne   	putch		; loop until bit 2 clear, bit is high when tx buffer is full
	st	a, _FTDATA
pwait	ld    	b, _FTSTAT	; load serial status data reg into b
	and   	b, #02h		; mask (bit 1)  0000 0010
	bne   	pwait		; loop until bit 2 clear
	ret


;=========================================================================wchdog
wchdog	ld	a, _PORTA	;watchdog
	xor	a, #01h
	st	a, _PORTA	;watchdog
	ret


;=========================================================================CONSTANTS

welcome
	.TEXT	"Make Love to your wife"
	.db	0

.org 62FFh
	.db	'X'


.END