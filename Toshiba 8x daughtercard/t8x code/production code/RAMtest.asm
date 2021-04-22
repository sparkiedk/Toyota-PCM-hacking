
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org $FC00

reset
	ld	x, #welcome
	jsr	putstr	
	ld	y, #0FFFh

chkloop	bsr	wchdog
	
	ld	a, #0FFh
	st	a, y+0
	ld	b, y+0	
	cmp	b, #0FFh
	bne	crap
	
	ld	a, #00h
	st	a, y+0
	ld	b, y+0	
	cmp	b, #00h
	bne	crap

	inc	y
	cmp	y, #8001h
	beq	term

	ld	b, #0FDh
	and	b, _PORTA
	st	b, _PORTA
	bra	chkloop

crap	push	y
	pull 	a
	bsr	putch
	pull 	a
	bsr	putch
	inc	y
	cmp	y, #8001h
	beq	term
	bra	chkloop

term
	ld	x, #done
	jsr	putstr	
blah	jsr	wchdog
	bra 	blah


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





;=========================================================================wchdog
wchdog	ld	a, _PORTA	;watchdog
	xor	a, #01h
	st	a, _PORTA	;watchdog
	ret



;=========================================================================CONSTANTS

welcome
	.TEXT	"Memory tester!  "
	.db	0
done
	.TEXT	"DONE!"
	.db	0

;=========================================================================Vectors
.org 0ffdeh
IV0:            .dw reset             ; External interrupt 0
IV1:            .dw reset             ; External interrupt 1
IV2:            .dw reset             ; External interrupt 2
IV3:            .dw reset             ; External interrupt 3
IV4:            .dw reset             ; External interrupt 4
IV5:            .dw reset             ; External interrupt 5
IV6:            .dw reset             ; External interrupt 6
IV7:            .dw reset             ; External interrupt 7
IV8:            .dw reset             ; External interrupt 8
IV9:            .dw reset             ; External interrupt 9
IVa:            .dw reset             ; External interrupt a
IVb:            .dw reset             ; External interrupt b
IVc:            .dw reset             ; External interrupt c
IVd:            .dw reset             ; External interrupt d
IVe:            .dw reset             ; External interrupt e
IVf:            .dw reset             ; Non-Maskable Interrupt
RESET:		.dw reset             ; Processor reset

.END