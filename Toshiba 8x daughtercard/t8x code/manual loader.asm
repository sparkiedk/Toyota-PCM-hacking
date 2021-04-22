
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; ROM segment
.org $8000
bootsrt

	ld	a, #0CAh
	st	a, 6000h

	ld	a, #0AAh
	st	a, 6001h

	ld	a, #0B2h
	st	a, 6002h

	ld	a, #0Fh
	st	a, 6003h

	ld	a, #0F0h
	st	a, 6004h

	ld	a, #03h
	st	a, 6005h

	ld	a, #60h
	st	a, 6006h

	ld	a, #00h
	st	a, 6007h

	jmp	6000h

.org $83FF
	.db	'X'


.END