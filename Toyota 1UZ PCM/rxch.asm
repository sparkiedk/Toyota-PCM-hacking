;=========================================================================rxch
; RXCH: wait until a charachter is available on the serial port, then load the charachter

rxch	ld	b, _SSD
	and	b, #80h
	beq	start
	ld	a, _SIDR_SODR
	ret
