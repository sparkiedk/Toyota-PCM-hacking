test_code:
	ld	a, #13	;CR
	jsr	putch

	ld	a, #10	;LF
	jsr	putch


	ld	x, #inputstring+5	;pointer to number data
	jsr	str2int

	ld	d, i2sreg
	jsr	int2str
	
	clr	b
	st	b, i2sreg+4
	ld	x, #i2sreg
	jsr	putstr

	ld	a, #13	;CR
	jsr	putch

	ld	a, #10	;LF
	jsr	putch

	ld	x, #inputstring+6	;pointer to number data (get middle two bytes)
	jsr	str2char

	ld	d, i2sreg
	jsr	char2str
	
	clr	b
	st	b, i2sreg+2
	ld	x, #i2sreg
	jsr	putstr

	jmp 	main