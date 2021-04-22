
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org $8000

bootsrt	ld	x, #8000h

read
	ld	a, x+0
	bsr	putch 
	inc	x
	
	
	ld	b, _PORTA	;watchdog
	xor	b, #01h
	st	b, _PORTA	;watchdog

	cmp	x, #8400h

	ble	read

	jmp	100h


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


.END