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
init	ldaa	#5		;0b00000101 - 7812.5 baud, internal clock, no clock output pg.21
	staa	$10
	ldaa	#2		;0b00000010 - transmit enable, forces bit 4 of p2ddr set, pg.19
	staa	$11
iniwait	ldab	$11		;status/cont reg  -after enabling it should hammer out 10 1's, and presumably be busy while it does it.
	andb	#$20		;bit 5 is the tx data reg empty flag, bitmask is 0b00100000 = $20
	beq	iniwait		;if that bit is not set then keep askin'

;test code

initest	sei
	ldx	#$4000
	clr	0,x

test	
	ldaa	0,x
	staa	1,x
	inx
	cpx 	#$8000
	bcs	test

	ldx	#$4000
	ldaa	$7fff
	bsr	txdata	;Transmit AccA, blocking
	inc	0,x

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


;interrupt and reset vectors
	org	$FFEE
	dc.w	$8000	;illegal opcode trap
	dc.w	$8000	;sci
	dc.w	$8000	;tof
	dc.w	$8000	;ocf
	dc.w	$8000	;icf
	dc.w	$8000	;/IRQ + /IS3
	dc.w	$8000	;SWI
	dc.w	$8000	;/NMI
	dc.w	$8000	;/RES