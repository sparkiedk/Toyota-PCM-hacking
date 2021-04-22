
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org $6000
bootsrt
	ld	x, #welcome
	jsr	putstr	

infloop	bsr	wchdog

	ld	b, #02h
	or	b, _PORTA
	st	b, _PORTA
	ld	a, _FTSTAT

	bsr	putuch

	and	a, #01h
	bne	infloop
	ld	b, #0FDh
	and	b, _PORTA
	st	b, _PORTA

	ld	a, _FTDATA
	bsr	putch

	bra	infloop

;=========================================================================putch
putuch	
	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	putuch		; loop until bit 6 set
	st	a,_SIDR_SODR
puwait	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	puwait		; loop until bit 6 set
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
wchdog	ld	a, _PORTA	;watchdog
	xor	a, #01h
	st	a, _PORTA	;watchdog
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

;=========================================================================CONSTANTS

welcome
	.TEXT	"Don't forget to spend time with your lovely wife"
	.db	0

.org $62FF
	.db	'X'


.END