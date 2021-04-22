
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org $8000
reset:
	di    			; disable interrupts
	ld    	s, #1BFh	; set stack near top of RAM (for d151
	ld    	#00h, _SMRC_SIR	; set SMRC cintrol reg to 0001 0000
	ld	#0Ch,_SSD




start	ld	a, #55h
	bsr	putch

	ld	d,_TIMER
	add	d, #1000	;4ms
loop1	cmp	d,_TIMER
	bgt	loop1

	ld	a, #01h
	st	a, _DOM

	ld	d,_TIMER
	add	d, #1000	;4ms
loop2	cmp	d,_TIMER
	bgt	loop2

	ld	a, #00h
	st	a, _DOM
	

	bra	start

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
		.end

