;serial routines for different ports.
;ftdi maintains the watchdog.


;denso serial routines

#IFDEF DSERIAL
init_serial:

	ld    	#0Fh, _SMRC_SIR	; set SMRC cintrol reg to 0001 0000
	ld	#0Ch,_SSD
	ret




;=========================================================================putch
; PUTCH: wait until not full, drop char in A onto the serial port and wait until not full
putch	
	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	putch		; loop until bit 6 set
	st	a,_SIDR_SODR
pwait	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	pwait		; loop until bit 6 set
	ret

;=========================================================================rxch
; RXCH: wait until a charachter is available on the serial port, then 
;load the charachter into A

rxch
	ld	b, _SSD		;check for receive data from serial port
	and	b, #080h	;need to handle errors as well.
	beq	rxch		;bit is high when empty
	ld	a, _SIDR_SODR
	ret


#ENDIF

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

;FTDI bus to USB routines
#IFDEF FTSERIAL

init_serial:

	ld	a, #01h		;set A0 output for watchdog
	st	a, _DDRA	;set A0 output for watchdog
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

#ENDIF

;GLOBAL SUBS-----------------------------------------------------------------

;=========================================================================putstr
; PUTSTR: put charchters from a string variable until a null (\000) is encountered
; uses putch

putstr 	ld	a, x+0
	beq	endstr
	bsr	putch
	inc	x

#IFDEF FTSERIAL
	bsr	wchdog
#ENDIF

	bra 	putstr
endstr	ret


;=========================================================================wchdog
wchdog	ld	a, _PORTA	;watchdog
	xor	a, #01h
	st	a, _PORTA	;watchdog
	ret


