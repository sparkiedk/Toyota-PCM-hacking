
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org 0100h

reset	di
	ld	#07h, _OMODE
	ld	b, #0C3h
	st	b, _DDRA
	ld	b, #03Fh
	st	b, _DDRB
	
check	ld	a, #0AAh	;leading sync
	bsr	putch
	ld	a, #055h
	bsr	putch

	ld	a, _PBCS
	bsr	putch
	clr	_PBCS

	ld	a, _PORTA
	bsr	putch
	clr	_PORTAL

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


;=========================================================================CONSTANTS


.END