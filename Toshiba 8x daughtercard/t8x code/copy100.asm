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

reset:
;	ld    	#$02, _OMODE	; change to mode 6
	di    			; disable interrupts
	ld    	s, #1BFh	; set stack near top of RAM (for d151
	ld    	#00h, _SMRC_SIR	; set SMRC cintrol reg to 0001 0000
	ld	#0Ch,_SSD

copysrt


	ld	x, #8400h	;allow 1kiB for bootloader copier
	ld	y, #100h
	
cpyloop


	ld	a, x+0
	st	a, y+0
	inc	x
	inc	y
	cmp	y, #120h	;allow 1kiB for bootloader itself
	ble	cpyloop
copyend

	jmp	100h		;execute bootloader!


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