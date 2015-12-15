;serial routines for different ports.
;ftdi maintains the watchdog.


;denso serial routines
;rxtimeout in units of timer MSB counts (at 16MHZ input clock thats 256*4us=1.024ms/bit)
#define 	RXTIMEOUT	200

#IFDEF DSERIAL
init_serial:

	ld    	#1Fh, _SMRC_SIR	; bit4 makes serial receive of streams not fail, 3 through 0 slow it down to 2050bps@4.2MHz
	ld	#00h,_SSD	;select SOUT0
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

	cmpb	b, #0C0h	;bit 7 indicates data present, bit 6 indicates rx error.
	beq	rxch
	ld	a, _SIDR_SODR
	cmpb	b, #040h
	bne	rxcf	
	clrv
	ret

rxcf	setv	;was an error.
	ret

;============================
;rxbyte
;receive byte from serial port, or timeout trying. returns carry on timeout/no carry on byte

rxbyte
	ld	b, _TIMER
pollser	ld	a, _SSD		;check for receive data from serial port
	cmpb	b, #0C0h	;need to handle errors as well.
	bne	gotbyte		;bit is high when empty
	ld	a, _TIMER
	sub	a, b
	cmp	a, #RXTIMEOUT	;check for timeout exceeded
	bcs	pollser		;continue if timeout is greater than time differential
	setc
	ret
gotbyte	clrv			;assume byte is good.
	ld	a, _SIDR_SODR
	cmpb	b, #040h
	beq	rxbok
	setv			;overflow bit signals serial overflow. how appropriate!
rxbok	clrc
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

;============================
;rxbyte
;receive byte from serial port, or timeout trying. returns carry on timeout/no carry on byte

rxbyte
	ld	b, _TIMER
pollser	bsr	wchdog
	ld	a, _FTSTAT
	and	a, #01h		;mask bit 00000 0001
	beq	gotbyte		;bit is high when empty
	ld	a, _TIMER
	sub	a, b
	cmp	a, #RXTIMEOUT	;check for timeout exceeded
	bcs	pollser		;continue if timeout is greater than time differential
	setc			;flag timeout failure
	ret
gotbyte	ld	a, _FTDATA
	clrc			;guarantee clear carry for received byte valid
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


