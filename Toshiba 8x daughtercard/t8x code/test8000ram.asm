;bootloader will execute out of ram at origin $6000h
;bootloader will be stored at offset 0400h from copy origin
;bootloader is allowed 1kiB of memory

		.msfirst		; Big Endian processor

.include 	sfrdefs.h


ADDR1		.equ 50h
ADDR2		.equ 52h
DATABYTE	.equ 54h

;============================================================================================
; ROM segment
.org 8000h

reset
	di
	ld	a, #01h		;set A0 output
	st	a, _DDRA	;set A0 output
	ld	x, #6000h


loop	ld	a, #'B'
	st	a, _FTDATA

	ld	a, _PORTA	;watchdog
	and	a, #01h		;isolate lsbit
	xor	a, #01h
	st	a, _PORTA	;watchdog

	st	a, x+0
	ld	b, x+0
	st	b, _FTDATA
	inc	x
	ld	b, _FTSTAT
	st	b, _FTDATA
	
	ld	y, #7000
wait	dec	y
	bne	wait

	bra	loop


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
IVc:            .dw reset              ; External interrupt c
IVd:            .dw reset              ; External interrupt d
IVe:            .dw reset              ; External interrupt e
IVf:            .dw reset              ; Non-Maskable Interrupt
RESET:		.dw reset             ; Processor reset
		.end



;============glo=============
;=========st ===ri==========
;=======mo        ous=======
	    .END
;===========================
;===========================