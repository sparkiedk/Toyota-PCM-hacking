
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org 0FF00h

reset	di
	ld	b, #0C3h
	st	b, _DDRA
	ld	b, #03Fh
	st	b, _DDRB
	
	ld	x, #message
	bsr	putstr	

check	ld	a, #0AAh	;leading sync
	bsr	putch
	ld	a, #055h
	bsr	putch

	ld	a, _PORTA
	bsr	putch
	ld	a, _PORTB
	bsr	putch

	ld	b, #0FFh
	st	b, _PORTA
	st	b, _PORTB

	ld	d, _TIMER
	add	d, #1000	;should be 4ms
delay1	cmp	d, _TIMER	;d-timer is positive until time elapses
	bpz	delay1	

	clr	b
	st	b, _PORTA
	st	b, _PORTB

	ld	d, _TIMER
	add	d, #1000	;should be 4ms
delay2	cmp	d, _TIMER	;d-timer is positive until time elapses
	bpz	delay2


	bra	check

;=========================================================================putstr
; PUTSTR: put charchters from a string variable until a null (\000) is encountered
; uses putch

putstr 	ld	a, x+0
	beq	endstr
	bsr	putch
	inc	x
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


;=========================================================================CONSTANTS

message
	.TEXT	"Go time"
	.db	0

.org 0FFFEh
	.dw	reset	;entry vector
.END