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

.TEXT	"wubbalubbadubdub!"

.org 0F000h

reset:
	di    			; disable interrupts
	ld    	s, #1BFh	; set stack near top of RAM (for d151802 redtop chip)
	ld	a, #03h		;set A0 output
	st	a, _DDRA	;set A0 output
	clr	a
	st	a, _PORTA

	ld    	#0Fh, _SMRC_SIR	; set SMRC cintrol reg to 0001 0000
	ld	#0Ch,_SSD

	bsr	wchdog

	ld	a, #'H'		;say hello
	bsr	putch
	ld	a, #'E'
	bsr	putch
	ld	a, #'L'
	bsr	putch
	ld	a, #'L'
	bsr	putch
	ld	a, #'O'
	bsr	putch

	ld	b, _SSD
	ld	b, _SIDR_SODR
	ld	b, _SSD		;for clearing errors


copysrt				;copy tiny loader
	ld	x, #0F400h
	ld	y, #100h
cpyloop	ld	a, x+0
	st	a, y+0
	inc	x
	inc	y
	bsr	wchdog
	cmp	y, #160h	;96 bytes for the tiny loader
	ble	cpyloop
copyend


	jmp	100h		;execute bootloader!


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


;=========================================================================wchdog
wchdog	ld	a, _PORTA	;watchdog
	xor	a, #01h
	st	a, _PORTA	;watchdog
	ret



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