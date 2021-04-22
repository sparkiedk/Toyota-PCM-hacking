
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org $100
start	ld	d,_TIMER
delay	cmp	d,_TIMER
	ble	delay
	ld	a,#$55
	st	a,_SIDR_SODR
	bra	start

.END