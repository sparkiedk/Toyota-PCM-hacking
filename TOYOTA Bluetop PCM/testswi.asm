;tests for the micro
;ascii '0' is $30
;ascii 'A' is $41
;uart registers:
;$10	rate and mode control
;$11	tr/rx control and status register
;$12 	rx data reg
;$13	tx data reg



	processor	HD6303
	org	$8000		;origin here

	lds	#$FF		;kind of need a stack for subroutines.... oops.
;setup serial port for SCIENCE!
init	ldaa	#7		;0b00000111 - 244.1 baud, internal clock, no clock output pg.21
	staa	$10
	ldaa	#2		;0b00000010 - transmit enable, forces bit 4 of p2ddr set, pg.19
	staa	$11
iniwait	ldab	$11		;status/cont reg  -after enabling it should hammer out 10 1's, and presumably be busy while it does it.
	andb	#$20		;bit 5 is the tx data reg empty flag, bitmask is 0b00100000 = $20
	beq	iniwait		;if that bit is not set then keep askin'

;test code, will output either '0' or 'A'

initest	sei
	clr	$40
	clr	$41
	cli


test	
	ldd	$40
	pshb
	bsr	txdata	;transmit AccA
	pula
	bsr	txdata	;transmit AccA

	;synch chars for realterm
	ldaa	#10
	bsr	txdata
	ldaa	#13
	bsr	txdata

	swi		;lets see if this works

	bra	test


;safe termination to code
infloop	nop
	bra infloop

;========================tx sub

txdata	staa	$13		;start tx'n
txwait	ldab	$11		;status/cont reg
	andb	#$20		;bit 5 is the tx data reg empty flag, bitmask is 0b00100000 = $20
	beq	txwait		;if that bit is not set then keep askin'
	rts
;=====end tx sub

;========================specific interrupt
	org	$9000
	inc	$40	;increment specific interrupt counter	
	rti

;========================generic interrupt
	org	$A000
	inc	$41	;increment generic interrupt counter	
	rti


;interrupt and reset vectors
	org	$FFEE
	dc.w	$8000	;illegal opcode trap
	dc.w	$A000	;sci
	dc.w	$A000	;tof
	dc.w	$A000	;ocf
	dc.w	$A000	;icf
	dc.w	$A000	;/IRQ + /IS3
	dc.w	$9000	;SWI
	dc.w	$A000	;/NMI
	dc.w	$8000	;/RES