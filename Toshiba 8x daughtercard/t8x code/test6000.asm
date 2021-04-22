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
.org 6000h

reset
	di
	ld	a, #01h		;set A0 output
	st	a, _DDRA	;set A0 output

loop	ld	a, #'R'
	st	a, _FTDATA

	ld	a, _PORTA	;watchdog
	and	a, #01h		;isolate lsbit
	xor	a, #01h
	st	a, _PORTA	;watchdog

	ld	b, _FTSTAT
	st	b, _FTDATA

	bra	loop



;============glo=============
;=========st ===ri==========
;=======mo        ous=======
	    .END
;===========================
;===========================