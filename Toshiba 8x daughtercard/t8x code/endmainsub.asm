
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; RAM segment

RPM		.equ 00F0h
VTA_net		.equ 006Ah
InjectPW1	.equ 0164h
InjectPW2	.equ 0166h
InjDeadtime	.equ 0168h
rawTHW		.equ 00F7h
LOAD		.equ 006Eh

;============================================================================================
; RAM segment

LTIME	.equ	1337h
READOUT	.equ	1339h	;init in resetsub
COUNT	.equ	133Bh	

;============================================================================================
; ROM segment
.org 8100h
	push	a
	push	b
	push	y

	ld	d, LTIME
	cmp	d, _TIMER
	bpz	endsub
	add	d, #25000	;100ms
	st	d, LTIME

	;avoid safe putch-ing here - too slow!!

	ld	y, READOUT
	cmp	y, #0200h
	bcs	middle

	ld	y, #0040h
	ld	d, #0AA55h
	st	a, _FTDATA
	st	b, _FTDATA


middle	ld	b, #64
loop	ld	a, [y]
	st	a, _FTDATA
	dec	b
	bne	loop
	push 	y
	pull	d
	st	d, READOUT	;cannot store y to extended :(

endsub	pull 	y
	pull	b
	pull	a
	ret

;===========================
;===========================
;=======most glorious=======
	    .END   
;========Never omit=========
;===========================
;===========================
