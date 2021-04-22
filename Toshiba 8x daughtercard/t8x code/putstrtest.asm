
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org $8000
bootsrt
	ld	x, #welcome
	jsr	putstr	

infloop	bra	infloop

;=========================================================================putch
putch	
	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	putch		; loop until bit 6 set
	st	a,_SIDR_SODR
pwait	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	pwait		; loop until bit 6 set
	ret

;=========================================================================putstr
; PUTSTR: put charchters from a string variable until a null (\000) is encountered
; uses putch

putstr 	ld	a, x+0
	beq	endstr
	bsr	putch
	inc	x

	ld	a, _PORTA	;watchdog
	and	a, #01h		;isolate lsbit
	xor	a, #01h
	st	a, _PORTA	;watchdog


	bra 	putstr
endstr	ret


;=========================================================================CONSTANTS

welcome
	.TEXT	"Denso 8X flash bootloader Copyright Sparkie, Dedicated to his lovely wife, The squirrel!\r\n"
	.db	0

.org $83FF
	.db	'X'


.END