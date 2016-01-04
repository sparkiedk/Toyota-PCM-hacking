;reader code for HD6301v1 / D151801
;assumed 4k of rom origin @ $F000

;uart registers:
;$10	rate and mode control
;$11	tr/rx control and status register
;$12 	rx data reg
;$13	tx data reg


	processor	HD6303
	org	$8000		;origin here so we can move back when we screw up.

init	ldaa	#7		;0b00000111 - 244.1 baud, internal clock, no clock output pg.21
	staa	$10
	ldaa	#2		;0b00000010 - transmit enable, forces bit 4 of p2ddr set, pg.19
	staa	$11
iniwait	ldab	$11		;status/cont reg  -after enabling it should hammer out 10 1's, and presumably be busy while it does it.
	andb	#$20		;bit 5 is the tx data reg empty flag, bitmask is 0b00100000 = $20
	beq	iniwait		;if that bit is not set then keep askin'

	ldx	#$F000		;toyota code orig
main	ldaa	0,x
	staa	$13		;start tx'n

txwait	ldab	$11		;status/cont reg
	andb	#$20		;bit 5 is the tx data reg empty flag, bitmask is 0b00100000 = $20
	beq	txwait		;if that bit is not set then keep askin'

	inx
	cpx	#0		;the index register will overflow (not sure if sets V) to zero
	bne	main		;not zero? not done!

stop	nop
	bra	stop		;lets not start executing random data after the code. lock up the cpu in an infinite loop

;reset entry point
	org	$FFFE
	dc.w	$8000
