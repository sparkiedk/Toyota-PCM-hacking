;bootloader will execute out of ram at origin $2000h
;bootloader will be stored at offset 0400h from copy origin
;bootloader is allowed 1kiB of memory

		.msfirst		; Big Endian processor

.include 	sfrdefs.h


ADDR1		.equ 50h
ADDR2		.equ 52h
DATABYTE	.equ 54h

;============================================================================================
; ROM segment
.org 0F000h

reset
	di
	ld	s, #2DFh
	ld	a, #03h		;set A0 output
	st	a, _DDRA	;set A0 output
	clr	a
	st	a, _PORTA	;clear A0, A1
	

copysrt


	ld	x, #0F100h	;allow 768 bytes for bootloader copier
	ld	y, #6000h
	
cpyloop

	bsr 	wchdog

	ld	a, x+0
	st	a, y+0
	inc	x
	inc	y
	cmp	y, #6300h	;allow 768b for bootloader itself
	ble	cpyloop
copyend

;	ld	x, #6000h
;read	ld	a, x+0
;	bsr	putch
;	inc	x
;	cmp	x, #62FFh
;	ble	read

	ld	a, #02h
	st	a, _PORTA
	jmp	6000h		;execute bootloader!

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


.org 0F100h
	.db	'X'

.org 0FFDEh
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
.end