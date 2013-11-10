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

test	ldaa	$18
	bsr	txdata	;transmit result, assuming result is in AccA
	
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

;illegal opcode trap
	org	$FFEE
	dc.w	$8000

;reset entry point
	org	$FFFE
	dc.w	$8000
