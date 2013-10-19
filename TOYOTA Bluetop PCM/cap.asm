
; Segment type:	Pure code
		; segment ROM
		org $F000
; START	OF FUNCTION CHUNK FOR sub_FD41

loc_F000:				; CODE XREF: sub_FD41:loc_FE99J
		sei
		sei
		lds	#$FF
		ldaa	#$C0
		staa	$14
		ldaa	#3
		staa	8
		staa	$18
		std	9
		ldd	#$BFFF
		std	6
		ldd	#$9FFF
		std	2
		ldx	#$6081
		stx	4
		ldx	#$EE12
		stx	0
		jsr	sub_FC6E
		ldx	#$B4 ; '¥'

loc_F02B:				; CODE XREF: sub_FD41-D13j
		clr	$4B,x
		dex
		bne	loc_F02B
		ldd	$11
		ldaa	#2
		staa	$11
		ldx	#$FFAE

loc_F039:				; CODE XREF: sub_FD41-D00j
		inx
		ldab	0,x
		beq	loc_F04E

loc_F03E:				; CODE XREF: sub_FD41-CF5j
		inx
		ldaa	0,x
		beq	loc_F039
		pshx
		ldx	#0
		abx
		staa	0,x
		pulx
		incb
		bra	loc_F03E
; ---------------------------------------------------------------------------

loc_F04E:				; CODE XREF: sub_FD41-D05j
		ldab	#$10
		cli

loc_F051:				; CODE XREF: sub_FD41-CEAj
		pshb
		jsr	sub_FA9B
		pulb
		decb
		bne	loc_F051
		ldab	9
		stab	$5E
		ldaa	#$1B
		sei
		staa	8
		staa	$18

loc_F064:				; CODE XREF: sub_FD41:loc_F116J
		lds	#$FF
		ldd	#$EE12
		std	0
		ldx	#$6081
		stx	4
		cli
		ldd	$4C
		eorb	7
		andb	#$40 ; '@'
		beq	loc_F083
		inc	$61
		eorb	$4D
		anda	#$FE ; '˛'
		std	$4C

loc_F083:				; CODE XREF: sub_FD41-CC9j
		ldd	$5E
		cmpa	9
		bpl	loc_F0FD
		adda	#$10
		incb
		std	$5E
		ldaa	#$DF ; 'ﬂ'
		sei
		anda	6
		staa	6
		cli
		ldd	#$1FE
		andb	$53
		stab	$53
		sei
		oraa	$4F
		staa	$4F
		cli
		jsr	loc_FAA7
		ldaa	$5F
		asla
		beq	loc_F0BB
		anda	#$3E ; '>'
		beq	loc_F0F7
		ldab	$4C
		bitb	#4
		beq	loc_F0B9
		anda	#$E
		beq	loc_F0F7

loc_F0B9:				; CODE XREF: sub_FD41-C8Ej
		bra	loc_F0FA
; ---------------------------------------------------------------------------

loc_F0BB:				; CODE XREF: sub_FD41-C98j
		ldx	#$FFCF
		jsr	$14,x
		cmpa	#$98 ; 'ò'
		ldab	$4C
		bitb	#4
		beq	loc_F0CA
		cmpa	#4

loc_F0CA:				; CODE XREF: sub_FD41-C7Bj
		bcs	loc_F0D1
		ldaa	#8
		jsr	sub_FD11

loc_F0D1:				; CODE XREF: sub_FD41:loc_F0CAj
		ldd	$95
		bpl	loc_F0E8
		incb
		bpl	loc_F0F0
		ldaa	$9D
		suba	#1
		jsr	sub_FB46
		ldab	$8F,x
		clr	$CE
		ldab	#$89 ; 'â'
		bra	loc_F0EE
; ---------------------------------------------------------------------------

loc_F0E8:				; CODE XREF: sub_FD41-C6Ej
		decb
		bmi	loc_F0F0
		ldd	#$E634

loc_F0EE:				; CODE XREF: sub_FD41-C5Bj
		staa	$9D

loc_F0F0:				; CODE XREF: sub_FD41-C6Bj
					; sub_FD41-C58j
		stab	$96
		clrb
		ldaa	$61
		std	$60

loc_F0F7:				; CODE XREF: sub_FD41-C94j
					; sub_FD41-C8Aj
		jsr	sub_FD41

loc_F0FA:				; CODE XREF: sub_FD41:loc_F0B9j
		jsr	sub_F96A

loc_F0FD:				; CODE XREF: sub_FD41-CBAj
		ldaa	#2
		bita	$4E
		beq	loc_F10D
		bsr	sub_F119
		jsr	sub_F420
		jsr	loc_F814
		bra	loc_F116
; ---------------------------------------------------------------------------

loc_F10D:				; CODE XREF: sub_FD41-C40j
		ldaa	#1
		bita	$4E
		beq	loc_F116
		jsr	loc_F534

loc_F116:				; CODE XREF: sub_FD41-C36j
					; sub_FD41-C30j
		jmp	loc_F064
; END OF FUNCTION CHUNK	FOR sub_FD41

; =============== S U B	R O U T	I N E =======================================


sub_F119:				; CODE XREF: sub_FD41-C3Ep
					; sub_F420+B3P	...
		coma
; End of function sub_F119


; =============== S U B	R O U T	I N E =======================================


sub_F11A:				; CODE XREF: sub_F420+BFP ROM:F53FP
		sei
		anda	$4E
		staa	$4E
		cli
		rts
; End of function sub_F11A


; =============== S U B	R O U T	I N E =======================================


sub_F121:				; CODE XREF: sub_F96A+B8P
		psha
		ldaa	$4D
		rora
		bcc	loc_F12A

loc_F127:				; CODE XREF: sub_F129+5j
		ins

locret_F128:				; CODE XREF: sub_F129+9j
		rts
; End of function sub_F121


; =============== S U B	R O U T	I N E =======================================


sub_F129:				; CODE XREF: sub_F96A+F0P
		psha

loc_F12A:				; CODE XREF: sub_F121+4j
		ldaa	$65
		cmpa	#$8C ; 'å'
		bcc	loc_F127
		pula

loc_F131:				; CODE XREF: ROM:F21EP
		tsta
		beq	locret_F128
		sei
		bsr	sub_F154

loc_F137:				; CODE XREF: ROM:loc_F23EP
		ldx	#$DD9F
		ldaa	2
		rora
		rora
		ldd	$7B
		bsr	sub_F168
		addd	#$1E
		std	$7B
		ldd	#$FE0C
		anda	$18
		staa	$18
		ldx	9
		abx
		stx	$1B
		rts
; End of function sub_F129


; =============== S U B	R O U T	I N E =======================================


sub_F154:				; CODE XREF: sub_F129+Cp sub_F194p

; FUNCTION CHUNK AT F191 SIZE 00000003 BYTES

		std	$9F
		ldaa	7
		rola
		ldd	$79
		bsr	sub_F168
		subd	#0
		std	$79
		ldaa	#$7F ; ''
		anda	7
		bra	loc_F191
; End of function sub_F154


; =============== S U B	R O U T	I N E =======================================


sub_F168:				; CODE XREF: sub_F129+17p sub_F154+7p
		bcs	loc_F16E
		subd	9
		bpl	loc_F170

loc_F16E:				; CODE XREF: sub_F168j
		ldd	$81

loc_F170:				; CODE XREF: sub_F168+4j
		addd	$9F
		bpl	loc_F177
		ldd	#$7FFF

loc_F177:				; CODE XREF: sub_F168+Aj
		addd	9
		rts
; End of function sub_F168


; =============== S U B	R O U T	I N E =======================================


sub_F17A:				; CODE XREF: ROM:F2F8P	ROM:F3D7P

; FUNCTION CHUNK AT F196 SIZE 0000001B BYTES

		ldaa	7
		bmi	locret_F1B0
		ldd	$79
		subd	#$140
		subd	9
		bpl	loc_F196
		ldx	$79

loc_F189:				; CODE XREF: sub_F17A+11j
		cpx	9
		bpl	loc_F189
		ldaa	#$80 ; 'Ä'
		oraa	7
; End of function sub_F17A

; START	OF FUNCTION CHUNK FOR sub_F154

loc_F191:				; CODE XREF: sub_F154+12j
		staa	7
		rts
; END OF FUNCTION CHUNK	FOR sub_F154

; =============== S U B	R O U T	I N E =======================================


sub_F194:				; CODE XREF: ROM:F23AP
		bsr	sub_F154
; End of function sub_F194

; START	OF FUNCTION CHUNK FOR sub_F17A

loc_F196:				; CODE XREF: sub_F17A+Bj
		ldd	#$2FE
		anda	2
		bne	loc_F1A3
		ldx	$1B
		cpx	$79
		bmi	locret_F1B0

loc_F1A3:				; CODE XREF: sub_F17A+21j
		lsra
		andb	$18
		aba
		staa	$18
		ldd	$79
		subd	#$FA ; '˙'
		std	$1B

locret_F1B0:				; CODE XREF: sub_F17A+2j sub_F17A+27j
		rts
; END OF FUNCTION CHUNK	FOR sub_F17A
; ---------------------------------------------------------------------------
		ldaa	8
		bita	$18
		bmi	loc_F1BA
		tsta
		bra	loc_F1BC
; ---------------------------------------------------------------------------

loc_F1BA:				; CODE XREF: ROM:F1B5j
		ldaa	$4E

loc_F1BC:				; CODE XREF: ROM:F1B8j
		bmi	loc_F1C1
		jmp	loc_F242
; ---------------------------------------------------------------------------

loc_F1C1:				; CODE XREF: ROM:loc_F1BCj
		ldd	$D
		subd	$B9
		pshb
		psha
		pulx
		ldaa	$4E
		bpl	locret_F23D
		oraa	#1
		anda	#$7F ; ''
		staa	$4E
		cli
		inx
		cpx	$6E
		bcc	loc_F1DA
		ldx	$6E

loc_F1DA:				; CODE XREF: ROM:F1D6j
		cpx	$6C
		bcs	loc_F1E0
		ldx	$6C

loc_F1E0:				; CODE XREF: ROM:F1DCj
		ldaa	$CD
		bita	#1
		beq	loc_F1F0
		ldx	#$320
		ldaa	$95
		bmi	loc_F1F0
		ldx	#$640

loc_F1F0:				; CODE XREF: ROM:F1E4j	ROM:F1EBj
		stx	$6A
		ldaa	$97
		oraa	$4C
		oraa	$98
		bmi	locret_F23D
		ldaa	$75
		psha
		ldd	$6A
		jsr	sub_F6E9
		pshb
		ldx	#0
		ldab	$74
		abx
		pulb
		beq	loc_F211

loc_F20C:				; CODE XREF: ROM:F20Fj
		addd	$6A
		dex
		bne	loc_F20C

loc_F211:				; CODE XREF: ROM:F20Aj
		tsta
		bpl	loc_F217
		ldd	#$7FFF

loc_F217:				; CODE XREF: ROM:F212j
		std	$7D
		sei
		ldx	$69
		bmi	loc_F22C
		jsr	loc_F131
		ldaa	$69
		bne	locret_F23D
		deca
		staa	$69
		ldd	$7D
		bra	loc_F232
; ---------------------------------------------------------------------------

loc_F22C:				; CODE XREF: ROM:F21Cj
		lsld
		bpl	loc_F232
		ldd	#$7FFF

loc_F232:				; CODE XREF: ROM:F22Aj	ROM:F22Dj
		psha
		ldaa	$78
		bita	#2
		pula
		beq	loc_F23E
		jsr	sub_F194

locret_F23D:				; CODE XREF: ROM:F1CAj	ROM:F1F8j ...
		rti
; ---------------------------------------------------------------------------

loc_F23E:				; CODE XREF: ROM:F238j
		jsr	loc_F137+1
		rti
; ---------------------------------------------------------------------------

loc_F242:				; CODE XREF: ROM:F1BEJ
		ldaa	$18
		ldx	$1D
		bita	#2
		beq	loc_F2AC
		stx	$B7
		ldaa	3
		bita	#2
		beq	loc_F262
		ldaa	$C6
		bgt	loc_F262
		ldd	#$FA0D
		anda	8
		staa	8
		ldx	9
		abx
		stx	$B

loc_F262:				; CODE XREF: ROM:F250j	ROM:F254j
		ldd	$B
		addd	$B3
		std	$9F
		ldaa	$A1
		inca
		bmi	loc_F27B
		ldd	$B7
		addd	$A7
		subd	$A1
		cmpa	$9F
		bpl	loc_F279
		ldd	$9F

loc_F279:				; CODE XREF: ROM:F275j
		bsr	sub_F287

loc_F27B:				; CODE XREF: ROM:F26Bj
		ldd	#$FDF3
		anda	$18
		staa	$18
		andb	$4E
		stab	$4E
		rti

; =============== S U B	R O U T	I N E =======================================


sub_F287:				; CODE XREF: ROM:loc_F279p ROM:F2BCp
		psha
		ldaa	#$19
		oraa	8
		staa	8
		pula
; End of function sub_F287


; =============== S U B	R O U T	I N E =======================================


sub_F28F:				; CODE XREF: ROM:loc_F3ACP ROM:F94DP
		std	$B
		subd	9
		cmpa	#$F0 ; ''
		bcs	locret_F29E
		ldd	#$F
		addd	9
		std	$B

locret_F29E:				; CODE XREF: sub_F28F+6j
		rts
; End of function sub_F28F

; ---------------------------------------------------------------------------
		fcb $CC	; Ã
		fcb   2
		fcb $19
		fcb $95	; ï
		fcb   3
		fcb $26	; &
		fcb $F8	; ¯
		fcb $DA	; ⁄
		fcb   8
		fcb $D7	; ◊
		fcb   8
		fcb $20
		fcb $EB	; Î
; ---------------------------------------------------------------------------

loc_F2AC:				; CODE XREF: ROM:F248j
		stx	$9F
		ldaa	$4E
		bita	#8
		bne	loc_F2C1
		ldaa	$A1
		bpl	loc_F2BE+1
		ldd	$9F
		subd	$A1
		bsr	sub_F287

loc_F2BE:				; CODE XREF: ROM:F2B6j
		cpx	#$8DDE

loc_F2C1:				; CODE XREF: ROM:F2B2j
		ldd	$9F
		subd	$B9
		std	$66
		ldab	$68
		clr	$68
		cmpb	#$D
		bcs	loc_F2DC
		cmpb	#$16
		bhi	loc_F2D7
		tsta
		bmi	loc_F2DC

loc_F2D7:				; CODE XREF: ROM:F2D2j
		ldd	#$FFFF
		std	$66

loc_F2DC:				; CODE XREF: ROM:F2CEj	ROM:F2D5j
		cmpa	#$EA ; 'Í'
		bcc	loc_F2E8
		ldaa	$C6
		ldab	$4B
		cmpb	#4
		bcs	loc_F2EA

loc_F2E8:				; CODE XREF: ROM:F2DEj
		ldaa	#5

loc_F2EA:				; CODE XREF: ROM:F2E6j
		tsta
		bmi	loc_F2F0
		deca
		staa	$C6

loc_F2F0:				; CODE XREF: ROM:F2EBj
		ldaa	$18
		asla
		bpl	loc_F2FB
		jsr	sub_F3B9
		jsr	sub_F17A

loc_F2FB:				; CODE XREF: ROM:F2F3j
		ldd	$9F
		std	$B9
		subd	$B7
		std	$A7
		subd	$B1
		addd	$A9
		asra
		rorb
		ldx	$AB
		stx	$A9
		ldx	$AD
		stx	$AB
		ldx	$AF
		stx	$AD
		tst	$C6
		ble	loc_F31C
		clra
		clrb

loc_F31C:				; CODE XREF: ROM:F318j
		std	$AF
		ldd	$B1
		addd	$A7
		rora
		rorb
		std	$B1
		addd	$A9
		std	$A7
		ldd	#$1A1A
		orab	8
		stab	8
		oraa	$18
		staa	$18
		ldab	$4E
		ldaa	$78
		inca
		staa	$78
		cmpa	#3
		bls	loc_F359
		tba
		asla
		oraa	6
		bmi	loc_F359
		ldaa	#$FE ; '˛'
		anda	7
		staa	7
		clra
		staa	$78
		staa	$D1
		ldaa	$57
		cmpa	#$50 ; 'P'
		bls	loc_F359
		orab	#$20 ; ' '

loc_F359:				; CODE XREF: ROM:F33Ej	ROM:F344j ...
		orab	#$46 ; 'F'
		ldaa	#1
		bita	3
		beq	loc_F365
		ldaa	8
		bpl	loc_F367

loc_F365:				; CODE XREF: ROM:F35Fj
		orab	#$80 ; 'Ä'

loc_F367:				; CODE XREF: ROM:F363j
		stab	$4E
		ldaa	#1
		oraa	7
		staa	7
		rti
; ---------------------------------------------------------------------------
		ldaa	$18
		asla
		bmi	loc_F3D5
		ldaa	8
		tab
		comb
		bitb	#$41 ; 'A'
		bne	loc_F3B0
		ldab	$4E
		bitb	#8
		bne	loc_F3B0
		orab	#8
		stab	$4E
		ldab	$C6
		bgt	loc_F3B0
		anda	#$FA ; '˙'
		staa	8
		ldd	$B
		addd	$B5
		std	$BD
		ldd	$66
		subd	$B5
		subd	$BB
		bcc	loc_F39F
		clra
		clrb

loc_F39F:				; CODE XREF: ROM:F39Bj
		addd	$BD
		psha
		ldaa	$4E
		bita	#4
		pula
		beq	loc_F3AC
		jsr	sub_F952

loc_F3AC:				; CODE XREF: ROM:F3A7j
		jsr	sub_F28F
		rti
; ---------------------------------------------------------------------------

loc_F3B0:				; CODE XREF: ROM:F37Bj	ROM:F381j ...
		oraa	#1
		staa	8
		ldd	$B
		std	$B
		rti

; =============== S U B	R O U T	I N E =======================================


sub_F3B9:				; CODE XREF: ROM:F2F5P	sub_F3B9+19j ...
		ldaa	$18
		oraa	#1
		staa	$18
		ldx	$7B
		stx	$1B
		cpx	9
		bpl	locret_F3D4
		ldd	#$209
		anda	2
		bne	locret_F3D4
		addd	9
		std	$1B
		bra	sub_F3B9
; ---------------------------------------------------------------------------

locret_F3D4:				; CODE XREF: sub_F3B9+Cj sub_F3B9+13j
		rts
; End of function sub_F3B9

; ---------------------------------------------------------------------------

loc_F3D5:				; CODE XREF: ROM:F373j
		bsr	sub_F3B9
		jsr	sub_F17A
		rti
; ---------------------------------------------------------------------------
		ldd	$11
		bpl	locret_F3E7
		cli
		anda	#$40 ; '@'
		beq	loc_F3E8
		jsr	loc_FB18

locret_F3E7:				; CODE XREF: ROM:F3DDj
		rti
; ---------------------------------------------------------------------------

loc_F3E8:				; CODE XREF: ROM:F3E2j
		ldaa	$4F
		rora
		ldaa	6
		bita	#$40 ; '@'
		bne	loc_F40D
		stab	$50
		bcc	loc_F3FE
		ldab	$53
		rorb
		bcs	loc_F3FE
		oraa	#$40 ; '@'
		staa	6

loc_F3FE:				; CODE XREF: ROM:F3F3j	ROM:F3F8j
		ldab	#$80 ; 'Ä'
		orab	$4F
		stab	$4F

loc_F404:				; CODE XREF: ROM:F41Ej
		sei
		ldd	9
		addd	#$140
		std	$51
		rti
; ---------------------------------------------------------------------------

loc_F40D:				; CODE XREF: ROM:F3EFj
		ldx	#0
		abx
		ldd	0,x
		sei
		staa	$13
		ldaa	#$20 ; ' '

loc_F418:				; CODE XREF: ROM:F41Aj
		bita	$11
		beq	loc_F418
		stab	$13
		bra	loc_F404

; =============== S U B	R O U T	I N E =======================================


sub_F420:				; CODE XREF: sub_FD41-C3CP
		sei
		ldaa	$F
		ldab	6
		cli
		clrb
		stab	$F
		rola
		ldd	#$7B79
		bcc	loc_F431
		staa	$98

loc_F431:				; CODE XREF: sub_F420+Dj
		ldx	$66
		cpx	#$FD6
		bcs	loc_F43A
		stab	$97

loc_F43A:				; CODE XREF: sub_F420+16j
		ldx	#$FF98
		jsr	$49,x
		bpl	loc_F446
		ldaa	#2
		jsr	sub_FD11

loc_F446:				; CODE XREF: sub_F420+1Fj
		ldx	#$FC81
		ldd	$66

loc_F44B:				; CODE XREF: sub_F420+31j
		bita	#$F0 ; ''
		beq	loc_F453
		dex
		lsrd
		bra	loc_F44B
; ---------------------------------------------------------------------------

loc_F453:				; CODE XREF: sub_F420+2Dj
		pshx
		ldx	#$FEF9
		jsr	$34,x
		jsr	sub_FC7D
		adda	#8
		pulx
		jsr	0,x
		cmpa	#9
		bls	loc_F468
		ldd	#$9FF

loc_F468:				; CODE XREF: sub_F420+43j
		std	$D3
		subd	#$90 ; 'ê'
		jsr	sub_F5E3
		stab	$C3
		clra
		subb	$C1
		sbca	#0
		lsld
		lsld
		lsld
		addd	$C1
		std	$C1
		ldd	$C4
		ldx	$62
		stx	$C4
		subd	$D3
		bcc	loc_F48A
		clra
		clrb

loc_F48A:				; CODE XREF: sub_F420+66j
		jsr	sub_F5E2
		cmpb	#6
		bcs	loc_F494
		clra
		staa	$87

loc_F494:				; CODE XREF: sub_F420+6Fj
		stab	$D5
		ldd	$D3
		std	$62
		lsrd
		lsrd
		lsrd
		std	$D3
		jsr	sub_F5E3
		stab	$65
		ldx	$D3
		ldd	$D3
		cpx	#$C0 ; '¿'
		bls	loc_F4B0
		lsrd
		addb	#$60 ; '`'

loc_F4B0:				; CODE XREF: sub_F420+8Bj
		tba
		suba	#$20 ; ' '
		jsr	sub_FB43
		subb	0
		staa	$64
		clra
		staa	$D0
		ldd	#$140
		bita	$4D
		bne	loc_F4DD
		ldaa	$65
		jsr	sub_FB46
		suba	$14,x
		bcs	loc_F4E2
		ldaa	6
		bpl	loc_F4D6
		ldaa	#$40 ; '@'
		jsr	sub_F119

loc_F4D6:				; CODE XREF: sub_F420+AFj
		ldx	#$FFD2
		jsr	$11,x
		bra	loc_F4EB
; ---------------------------------------------------------------------------

loc_F4DD:				; CODE XREF: sub_F420+A2j
		ldaa	#$DF ; 'ﬂ'
		jsr	sub_F11A

loc_F4E2:				; CODE XREF: sub_F420+ABj
		sei
		orab	$4E
		stab	$4E
		clra
		staa	$D1
		cli

loc_F4EB:				; CODE XREF: sub_F420+BBj
		ldx	#$E6 ; 'Ê'
		ldd	#$5002
		cmpa	$57
		bhi	loc_F506
		cmpb	$60
		bhi	loc_F506
		ldaa	$65
		cmpa	#$50 ; 'P'
		bcc	loc_F506
		cmpa	#$40 ; '@'
		bcc	loc_F508
		ldx	#$1CC

loc_F506:				; CODE XREF: sub_F420+D3j sub_F420+D7j ...
		stx	$6E

loc_F508:				; CODE XREF: sub_F420+E1j
		ldab	$9E
		ldaa	$4C
		bmi	loc_F510
		addb	#$10

loc_F510:				; CODE XREF: sub_F420+ECj
		anda	#$3F ; '?'
		cmpb	$65
		bhi	loc_F51E
		ldab	$95
		bpl	loc_F51E
		oraa	#$C0 ; '¿'
		bra	loc_F531
; ---------------------------------------------------------------------------

loc_F51E:				; CODE XREF: sub_F420+F4j sub_F420+F8j
		ldab	$4C
		bpl	loc_F531
		psha
		ldaa	$D5
		cmpa	#6
		bhi	loc_F530
		ldd	#$139
		stab	$87
		bsr	loc_F534

loc_F530:				; CODE XREF: sub_F420+107j
		pula

loc_F531:				; CODE XREF: sub_F420+FCj
					; sub_F420+100j
		staa	$4C
		rts
; End of function sub_F420

; ---------------------------------------------------------------------------

loc_F534:				; CODE XREF: sub_FD41-C2EP
					; sub_F420+10Ep
		jsr	sub_F119
		ldaa	$57
		cmpa	#$48 ; 'H'
		bhi	loc_F542
		ldaa	#$DF ; 'ﬂ'
		jsr	sub_F11A

loc_F542:				; CODE XREF: ROM:F53Bj
		ldd	#$2004
		bita	$4E
		beq	loc_F54E
		ldab	$69
		ble	loc_F550
		decb

loc_F54E:				; CODE XREF: ROM:F547j
		stab	$69

loc_F550:				; CODE XREF: ROM:F54Bj
		ldd	$6A
		jsr	sub_F6FC
		std	$7F
		ldaa	$4D
		rora
		bcc	loc_F571
		ldd	#$FDC
		cmpb	$57
		bls	loc_F568
		ldx	#$FEB6
		jsr	$65,x

loc_F568:				; CODE XREF: ROM:F561j
		std	$84
		ldx	#$FEC4
		jsr	$57,x
		std	$8C

loc_F571:				; CODE XREF: ROM:F55Aj
		ldaa	$D2
		cmpa	#2
		bhi	loc_F57E+1
		bsr	sub_F5CE
		ldx	#$FECB
		jsr	$50,x

loc_F57E:				; CODE XREF: ROM:F575j
		brn	sub_F5CE+1
		staa	$86
		ldd	$62
		ldx	#$FE9C
		jsr	$91,x
		jsr	sub_FC7C
		adda	#8
		std	$6C
		ldd	#$800
		jsr	sub_F6FC
		std	$72
		ldx	#$FED2
		jsr	$49,x
		psha
		jsr	sub_F6E3
		std	$70
		ldd	#$6666
		cmpb	$42
		bls	loc_F5AC
		ldaa	#$B3 ; '≥'

loc_F5AC:				; CODE XREF: ROM:F5A8j
		cmpa	$5D
		bhi	loc_F5BB
		ldd	#$26F0
		cmpb	$65
		bhi	loc_F5C3
		ldaa	#$33 ; '3'
		bra	loc_F5C3
; ---------------------------------------------------------------------------

loc_F5BB:				; CODE XREF: ROM:F5AEj
		ldd	#$19C8
		cmpb	$92
		bls	loc_F5C3
		clra

loc_F5C3:				; CODE XREF: ROM:F5B5j	ROM:F5B9j ...
		staa	$88
		ldaa	$4C
		bpl	loc_F5EB
		bsr	sub_F5CE
		jmp	loc_F673

; =============== S U B	R O U T	I N E =======================================


sub_F5CE:				; CODE XREF: ROM:F577p	ROM:F5C9p ...
		ldd	$7F
		std	$90
		std	$8E
		clra
		staa	$89
		rts
; End of function sub_F5CE


; =============== S U B	R O U T	I N E =======================================


sub_F5D8:				; CODE XREF: sub_F5E3+4Ap
		bcs	loc_F5E8+1
		inx
		subd	#$80 ; 'Ä'
		bcs	loc_F5E8+1
; End of function sub_F5D8


; =============== S U B	R O U T	I N E =======================================


sub_F5E0:				; CODE XREF: sub_F5E3+28p
		lsrd
; End of function sub_F5E0


; =============== S U B	R O U T	I N E =======================================


sub_F5E1:				; CODE XREF: sub_F70A+AP
		lsrd
; End of function sub_F5E1


; =============== S U B	R O U T	I N E =======================================


sub_F5E2:				; CODE XREF: sub_F420:loc_F48AP
		lsrd
; End of function sub_F5E2


; =============== S U B	R O U T	I N E =======================================


sub_F5E3:				; CODE XREF: sub_F420+4DP sub_F420+7FP ...
		tsta
		beq	locret_F5EA
		ldab	#$FF

loc_F5E8:				; CODE XREF: sub_F5D8j	sub_F5D8+6j
		brn	loc_F649

locret_F5EA:				; CODE XREF: sub_F5E3+1j
		rts
; ---------------------------------------------------------------------------

loc_F5EB:				; CODE XREF: ROM:F5C7j
		bita	#4
		bne	loc_F5F6
		ldd	$84
		subd	#$14
		bcc	loc_F5F7

loc_F5F6:				; CODE XREF: sub_F5E3+Aj
		clra

loc_F5F7:				; CODE XREF: sub_F5E3+11j
		std	$84
		ldab	#$FA ; '˙'
		addb	$87
		bcs	loc_F600
		clrb

loc_F600:				; CODE XREF: sub_F5E3+1Aj
		stab	$87
		ldd	$90
		subd	$7F
		bcs	loc_F61A
		deca
		bmi	loc_F61A
		bsr	sub_F5E0
		ldaa	#$CC ; 'Ã'
		mul
		ldab	#$B0 ; '∞'
		cmpb	$57
		bhi	loc_F61A
		ldab	$88
		beq	loc_F61B

loc_F61A:				; CODE XREF: sub_F5E3+23j sub_F5E3+26j ...
		clra

loc_F61B:				; CODE XREF: sub_F5E3+35j
		staa	$89
		ldd	$90
		addd	$7F
		lsrd
		addd	$90
		lsrd
		std	$90
		ldx	$8E
		ldd	$7F
		subd	$8E
		bsr	sub_F5D8
		pshb
		stx	$8E
		ldx	#6
		ldaa	$60
		ldab	$4C
		cmpa	#$F
		bhi	loc_F641
		andb	#$F7 ; '˜'
		bra	loc_F647
; ---------------------------------------------------------------------------

loc_F641:				; CODE XREF: sub_F5E3+58j
		cmpa	#$13
		bcs	loc_F649
		orab	#8

loc_F647:				; CODE XREF: sub_F5E3+5Cj
		stab	$4C

loc_F649:				; CODE XREF: sub_F5E3:loc_F5E8j
					; sub_F5E3+60j
		bitb	#8
		bne	loc_F654
		ldaa	$57
		cmpa	#$60 ; '`'
		bcc	loc_F654
		dex

loc_F654:				; CODE XREF: sub_F5E3+68j sub_F5E3+6Ej
		ldd	$7F

loc_F656:				; CODE XREF: sub_F5E3+77j
		addd	$8E
		lsrd
		dex
		bne	loc_F656
		std	$8E
		ldd	$8C
		subd	#$10
		bcc	loc_F666
		clra

loc_F666:				; CODE XREF: sub_F5E3+80j
		std	$8C
		adda	$8B
		ldab	$9E
		cmpb	$65
		bhi	loc_F671
		lsra

loc_F671:				; CODE XREF: sub_F5E3+8Bj
		pulb
		mul

loc_F673:				; CODE XREF: ROM:F5CBJ
		tab
		ldaa	$4C
		bita	#4
		beq	loc_F67B
		clrb

loc_F67B:				; CODE XREF: sub_F5E3+95j
		clra
		lsld
		lsld
		subb	$87
		sbca	#$FF
		pshb
		psha
		pulx
		ldab	$84
		abx
		abx
		ldab	$86
		abx
		abx
		ldd	$88
		abx
		tab
		abx
		pshx
		pula
		inca
		staa	$D3
		ldaa	$83
		psha
		bsr	loc_F6E6+1
		addd	$72
		std	$72
		bsr	sub_F70A
		lsrd
		lsrd
		std	$72
		bsr	sub_F6E9

loc_F6A8:				; CODE XREF: sub_F5E3+CCj
		dec	$D3
		beq	loc_F6B1
		addd	$72
		bra	loc_F6A8
; ---------------------------------------------------------------------------

loc_F6B1:				; CODE XREF: sub_F5E3+C8j
		std	$72
		ldx	#$FF9D
		jsr	$46,x
		jsr	sub_F7BE
; End of function sub_F5E3


; =============== S U B	R O U T	I N E =======================================


sub_F6BB:				; CODE XREF: sub_F96A+C4P
		ldd	#$801
		bita	$4D
		bne	sub_F6D4
		cmpb	$9C
		ldd	$72
		bcs	loc_F6D8
		ldab	$8B
		addb	$8C
		pshb
		bsr	sub_F6E3
		lsld
		addd	$72
		bra	loc_F6D8
; End of function sub_F6BB


; =============== S U B	R O U T	I N E =======================================


sub_F6D4:				; CODE XREF: sub_F6BB+5j sub_F96A+8AP
		ldaa	$76
		bsr	sub_F700

loc_F6D8:				; CODE XREF: sub_F6BB+Bj sub_F6BB+17j
		subd	$70
		bcs	loc_F6DE
		clra
		clrb

loc_F6DE:				; CODE XREF: sub_F6D4+6j
		addd	$70
		std	$74
		rts
; End of function sub_F6D4


; =============== S U B	R O U T	I N E =======================================


sub_F6E3:				; CODE XREF: ROM:F59EP	sub_F6BB+12p ...
		ldd	$72
		lsld

loc_F6E6:				; CODE XREF: sub_F5E3+B7p
		cpx	#$DC72
; End of function sub_F6E3


; =============== S U B	R O U T	I N E =======================================


sub_F6E9:				; CODE XREF: ROM:F1FFP	sub_F5E3+C3p ...
		psha
		tsx
		ldaa	3,x
		mul
		pulb
		psha
		ldaa	3,x
		mul
		addb	0,x
		adca	#0
		ins
		pulx
		ins
		jmp	0,x
; End of function sub_F6E9


; =============== S U B	R O U T	I N E =======================================


sub_F6FC:				; CODE XREF: ROM:F552P	ROM:F593P
		std	$72
		ldaa	$8A
; End of function sub_F6FC


; =============== S U B	R O U T	I N E =======================================


sub_F700:				; CODE XREF: sub_F6D4+2p sub_F70A+45j
		psha
		bsr	sub_F6E3
		addd	$72
		lsrd
		addd	$72
		lsrd
		rts
; End of function sub_F700


; =============== S U B	R O U T	I N E =======================================


sub_F70A:				; CODE XREF: sub_F5E3+BDp
		ldaa	$65
		ldab	#$CA ; ' '
		mul
		psha
		ldd	$7F
		bsr	sub_F6E9
		jsr	sub_F5E1
		stab	$92
		ldab	$44
		bpl	loc_F71E
		negb

loc_F71E:				; CODE XREF: sub_F70A+11j
		ldaa	#8
		mul
		ldx	#9
		clc

loc_F725:				; CODE XREF: sub_F70A+2Aj
		bcs	loc_F72E
		cmpa	$92
		bcc	loc_F72E
		clc
		bra	loc_F731
; ---------------------------------------------------------------------------

loc_F72E:				; CODE XREF: sub_F70A:loc_F725j
					; sub_F70A+1Fj
		suba	$92
		sec

loc_F731:				; CODE XREF: sub_F70A+22j
		rolb
		rola
		dex
		bne	loc_F725
		rora
		bcc	loc_F73B
		ldab	#$FF

loc_F73B:				; CODE XREF: sub_F70A+2Dj
		lsrb
		ldaa	$44
		bpl	loc_F741
		negb

loc_F741:				; CODE XREF: sub_F70A+34j
		addb	#$80 ; 'Ä'
		tba
		jsr	sub_FB46
		adca	$5C
		adda	$42
		suba	#$80 ; 'Ä'
		staa	$D6
		bra	sub_F700
; End of function sub_F70A


; =============== S U B	R O U T	I N E =======================================


sub_F751:				; CODE XREF: sub_F96A+75P
		ldaa	$42
		ldab	$40
		ldx	$95
		bpl	loc_F768
		cba
		rora
		eora	$93
		bmi	loc_F766
		ldaa	$42
		aba
		rora
		aba
		rora
		tab

loc_F766:				; CODE XREF: sub_F751+Cj
		ldaa	$42

loc_F768:				; CODE XREF: sub_F751+6j
		pshb
		adda	$93
		subb	#$F
		cba
		bcc	loc_F771
		tba

loc_F771:				; CODE XREF: sub_F751+1Dj
		jsr	sub_FB46
		subd	$2425
		bra	loc_F7AE+1
; End of function sub_F751

; ---------------------------------------------------------------------------
		fcb $96	; ñ
		fcb $95	; ï
		fcb $2A	; *
		fcb $1A
		fcb $96	; ñ
		fcb $5C	; \
		fcb $BD	; Ω
		fcb $FB	; ˚
		fcb $46	; F
		fcb $8A	; ä
		fcb $76	; v
		fcb $25	; %
		fcb $11
		fcb $96	; ñ
		fcb $44	; D
		fcb $9B	; õ
		fcb $93	; ì
		fcb $29	; )
		fcb  $B
		fcb $9B	; õ
		fcb $93	; ì
		fcb $29	; )
		fcb   7
		fcb $16
		fcb $53	; S
		fcb $DD	; ›
		fcb $44	; D
		fcb $7C	; |
		fcb   0
		fcb $5C	; \
		fcb $32	; 2
		fcb $16
		fcb $53	; S
		fcb $DD	; ›
		fcb $42	; B
		fcb $32	; 2
		fcb $16
		fcb $53	; S
		fcb $DD	; ›
		fcb $40	; @
		fcb $39	; 9
		fcb $19
		fcb $96	; ñ
		fcb   7
		fcb $AD	; ≠
		fcb   0
		fcb $EB	; Î
		fcb   0
		fcb $4E	; N
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_F7BE

loc_F7AA:				; CODE XREF: sub_F7BE+8j
		orab	#4
		ldaa	#$71 ; 'q'

loc_F7AE:				; CODE XREF: sub_F751+26j
		staa	$9B

loc_F7B0:				; CODE XREF: sub_F7BE+Cj sub_F7BE+10j	...
		clr	$CE

loc_F7B3:				; CODE XREF: sub_F7BE+18j
		andb	#$F7 ; '˜'
		stab	$4D
		ldd	#$8000
		stab	$94
		bra	loc_F811
; END OF FUNCTION CHUNK	FOR sub_F7BE

; =============== S U B	R O U T	I N E =======================================


sub_F7BE:				; CODE XREF: sub_F5E3+D5P

; FUNCTION CHUNK AT F7AA SIZE 00000014 BYTES

		ldab	$4D
		bpl	loc_F7C4
		andb	#$FB ; '˚'

loc_F7C4:				; CODE XREF: sub_F7BE+2j
		ldx	$83
		bne	loc_F7AA
		ldx	$87
		bne	loc_F7B0
		ldaa	$4C
		bmi	loc_F7B0
		ldaa	$97
		bmi	loc_F7B0
		bitb	#4
		bne	loc_F7B3
		orab	#8
		stab	$4D
		ldd	#$6C6F
		ldx	#$400
		cpx	$7F
		bhi	loc_F7E7
		tba

loc_F7E7:				; CODE XREF: sub_F7BE+26j
		ldx	#$FF9C
		jsr	8,x
		staa	$9B
		ldx	#$F7A6
		ldab	7
		bitb	#4
		beq	loc_F7F9
		inx
		inx

loc_F7F9:				; CODE XREF: sub_F7BE+37j
		ldaa	$9A
		asla
		ldd	$76
		bcc	loc_F802+1
		subd	0,x

loc_F802:				; CODE XREF: sub_F7BE+40j
		cpx	#$E300
		pshb
		ldab	$9D
		cba
		bcc	loc_F80F
		negb
		cba
		bcc	loc_F810

loc_F80F:				; CODE XREF: sub_F7BE+4Bj
		tba

loc_F810:				; CODE XREF: sub_F7BE+4Fj
		pulb

loc_F811:				; CODE XREF: sub_F7BE-2j
		std	$76
		rts
; End of function sub_F7BE

; ---------------------------------------------------------------------------

loc_F814:				; CODE XREF: sub_FD41-C39P
		ldd	#$11C
		anda	$CD
		bne	loc_F829
		ldaa	$C6
		bpl	loc_F829
		ldaa	$95
		bpl	loc_F859
		ldaa	7
		anda	#$20 ; ' '
		bne	loc_F82C

loc_F829:				; CODE XREF: ROM:F819j	ROM:F81Dj
		jmp	loc_F8EE
; ---------------------------------------------------------------------------

loc_F82C:				; CODE XREF: ROM:F827j
		ldaa	$C1
		suba	$C3
		jsr	sub_FB43
		sba
; ---------------------------------------------------------------------------
		fcb   0
		fcb $C6	; ∆
		fcb $88	; à
		fcb $3D	; =
		fcb   5
		fcb   5
		fcb $D6	; ÷
		fcb   7
		fcb $C4	; ƒ
		fcb   8
		fcb $27	; '
		fcb   7
		fcb $BD	; Ω
		fcb $FB	; ˚
		fcb $46	; F
		fcb  $E
		fcb   0
		fcb $C6	; ∆
		fcb  $E
		fcb $97	; ó
		fcb $A6	; ¶
		fcb $86	; Ü
		fcb $2D	; -
		fcb $1B
		fcb $5F	; _
		fcb $D7	; ◊
		fcb $C7	; «
		fcb $D6	; ÷
		fcb $42	; B
		fcb $C1	; ¡
		fcb $42	; B
		fcb $24	; $
		fcb   2
		fcb $8B	; ã
		fcb  $E
		fcb $20
		fcb $54	; T
; ---------------------------------------------------------------------------

loc_F859:				; CODE XREF: ROM:F821j
		clr	$A6
		ldx	#$FFC8
		jsr	$1B,x
		cmpa	#5
		bcc	loc_F86C
		ldab	#$11
		addb	$A4
		jmp	loc_F8F0
; ---------------------------------------------------------------------------

loc_F86C:				; CODE XREF: ROM:F863j
		ldd	$7F
		cmpa	#$B
		bls	loc_F875
		ldd	#$BFF

loc_F875:				; CODE XREF: ROM:F870j
		suba	#2
		bcc	loc_F87B
		clra
		clrb

loc_F87B:				; CODE XREF: ROM:F877j
		lsrd
		pshb
		ldab	#$E
		mul
		ldx	#$FF40
		abx
		ldaa	$64
		pshx
		ldab	#$E
		abx
		jsr	sub_FF28
		pulx
		psha
		ldaa	$64
		jsr	sub_FF28
		psha
		tsx
		ldd	1,x
		suba	0,x
		jsr	sub_FF35
		ins
		pulx
		ldab	$99
		bmi	loc_F8A5
		adda	#8

loc_F8A5:				; CODE XREF: ROM:F8A1j
		ldx	#$FF94
		jsr	$10,x
		bcc	loc_F8AD
		clra

loc_F8AD:				; CODE XREF: ROM:F8AAj
		staa	$A3
		ldaa	$57
		jsr	sub_FB46
		eora	$50
		bcs	loc_F8CD+1
		ldx	#$5AA
		ldaa	$A5
		beq	loc_F8C2
		ldx	#$60E

loc_F8C2:				; CODE XREF: ROM:F8BDj
		cpx	$7F
		bcs	loc_F8CD+1
		ldaa	$95
		bmi	loc_F8CD+1
		ldd	#$FFD6

loc_F8CD:				; CODE XREF: ROM:F8B6j	ROM:F8C4j ...
		cpx	#$4F5F
		stab	$A5
		addb	$A4
		adca	#0
		addb	$A3
		adca	#0
		addb	$A6
		adca	#0
		bpl	loc_F8E2
		clra
		clrb

loc_F8E2:				; CODE XREF: ROM:F8DEj
		jsr	sub_F5E3
		tba
		jsr	sub_FB46
		eora	$1F16
		subb	#$1C

loc_F8EE:				; CODE XREF: ROM:loc_F829J
		stab	$D8

loc_F8F0:				; CODE XREF: ROM:F869J
		addb	#1
		pshb
		ldd	$66
		jsr	sub_FC7D
		std	$D3
		ldd	$66
		jsr	sub_F6E9
		lsrd
		inca
		subd	$D3
		bcs	loc_F90D
		subd	$A7
		bcs	loc_F90B
		clra
		clrb

loc_F90B:				; CODE XREF: ROM:F907j
		addd	$A7

loc_F90D:				; CODE XREF: ROM:F903j
		std	$A1
		ldd	$D3
		addd	$BF
		std	$BB
		lsrd
		std	$D3
		ldd	$66
		subd	$B5
		subd	#$64 ; 'd'
		subd	$D3
		bcs	loc_F925
		clra
		clrb

loc_F925:				; CODE XREF: ROM:F921j
		addd	$D3
		std	$B3
		ldaa	#1
		ldab	$C6
		bmi	loc_F936
		sei
		oraa	8
		staa	8
		bra	loc_F950
; ---------------------------------------------------------------------------

loc_F936:				; CODE XREF: ROM:F92Dj
		bsr	sub_F952
		std	$D3
		ldd	#$C02
		eora	$4E
		bita	#$E
		bne	loc_F950
		bitb	3
		beq	loc_F950
		ldd	$D3
		std	$B
		ldx	8
		jsr	sub_F28F

loc_F950:				; CODE XREF: ROM:F934j	ROM:F941j ...
		cli
		rts

; =============== S U B	R O U T	I N E =======================================


sub_F952:				; CODE XREF: ROM:F3A9P	ROM:loc_F936p
		ldd	$66
		subd	$A1
		subd	$BB
		bcc	loc_F95C
		clra
		clrb

loc_F95C:				; CODE XREF: sub_F952+6j
		addd	$B9
		sei
		subd	$BD
		cmpa	#$E8 ; 'Ë'
		bcs	loc_F967
		clra
		clrb

loc_F967:				; CODE XREF: sub_F952+11j
		addd	$BD
		rts
; End of function sub_F952


; =============== S U B	R O U T	I N E =======================================


sub_F96A:				; CODE XREF: sub_FD41:loc_F0FAP
		ldx	#$FF69
		jsr	$7A,x
		ldd	#$77F
		anda	$5F
		andb	2
		cmpa	$D7
		bcs	loc_F97C
		orab	#$80 ; 'Ä'

loc_F97C:				; CODE XREF: sub_F96A+Ej
		stab	2
		ldaa	$59
		cmpa	#$17
		ldaa	$9A
		bcs	loc_F98E
		inca
		jsr	sub_FB46
		cmpa	#$67 ; 'g'
		bra	loc_F995
; ---------------------------------------------------------------------------

loc_F98E:				; CODE XREF: sub_F96A+1Aj
		deca
		cmpa	$9B
		bcc	loc_F995
		ldaa	$9B

loc_F995:				; CODE XREF: sub_F96A+22j sub_F96A+27j
		staa	$9A
		eora	$4D
		anda	#$80 ; 'Ä'
		beq	loc_F9F7
		eora	$4D
		staa	$4D
		bita	#8
		beq	loc_F9F7
		ldab	#1
		ldaa	$76
		adda	$93
		rora
		bmi	loc_F9AF
		negb

loc_F9AF:				; CODE XREF: sub_F96A+42j
		stab	$93
		ldab	$95
		bmi	loc_F9BF
		ldab	$5C
		cba
		decb
		bcs	loc_F9BD
		addb	#2

loc_F9BD:				; CODE XREF: sub_F96A+4Fj
		stab	$5C

loc_F9BF:				; CODE XREF: sub_F96A+49j
		ldd	#$B020
		cmpa	$57
		bhi	loc_F9E2
		ldx	$7F
		cpx	#$190
		bitb	7
		bls	loc_F9E2
		ldaa	$CD
		bita	#1
		bne	loc_F9E2
		ldaa	$96
		bmi	loc_F9E2
		ldaa	$94
		cmpa	#5
		bcs	loc_F9E5
		jsr	sub_F751

loc_F9E2:				; CODE XREF: sub_F96A+5Aj sub_F96A+63j ...
		clra
		staa	$94

loc_F9E5:				; CODE XREF: sub_F96A+73j
		inc	$94
		ldaa	$76
		staa	$93
		ldx	#$F7A2
		jsr	$4F,x
		clra
		staa	$CE
		jsr	sub_F6D4

loc_F9F7:				; CODE XREF: sub_F96A+31j sub_F96A+39j
		ldaa	$95
		ldab	7
		andb	#4
		beq	loc_FA0E
		tsta
		bmi	loc_FA05
		clr	$94

loc_FA05:				; CODE XREF: sub_F96A+96j
		ldab	$5D
		bmi	loc_FA3B
		inca
		bne	loc_FA39
		bra	loc_FA3B
; ---------------------------------------------------------------------------

loc_FA0E:				; CODE XREF: sub_F96A+93j
		stab	$87
		tsta
		bmi	loc_FA19
		cmpa	#$1C
		bcs	loc_FA31
		bra	loc_FA26
; ---------------------------------------------------------------------------

loc_FA19:				; CODE XREF: sub_F96A+A7j
		ldaa	$65
		cmpa	#$64 ; 'd'
		bcc	loc_FA26
		ldd	#$7D0
		jsr	sub_F121
		cli

loc_FA26:				; CODE XREF: sub_F96A+ADj sub_F96A+B3j
		ldaa	$4D
		anda	#1
		bne	loc_FA31
		staa	$9C
		jsr	sub_F6BB

loc_FA31:				; CODE XREF: sub_F96A+ABj sub_F96A+C0j
		ldab	$4C
		andb	#$3F ; '?'
		stab	$4C
		ldaa	#3

loc_FA39:				; CODE XREF: sub_F96A+A0j
		staa	$95

loc_FA3B:				; CODE XREF: sub_F96A+9Dj sub_F96A+A2j
		ldd	#$10FE
		anda	7
		beq	loc_FA60
		andb	$4C
		stab	$4C
		ldaa	$4B
		ldab	$C6
		bmi	loc_FA62
		inca
		beq	loc_FA75
		staa	$4B
		cmpa	#$19
		bcs	loc_FA62
		bhi	loc_FA75
		ldd	#$2328
		jsr	sub_F129
		cli
		bra	loc_FA75
; ---------------------------------------------------------------------------

loc_FA60:				; CODE XREF: sub_F96A+D6j
		staa	$4B

loc_FA62:				; CODE XREF: sub_F96A+E0j sub_F96A+E9j
		ldab	#$4B ; 'K'
		cmpb	$68
		bcc	loc_FA83
		ldab	#$12
		stab	$65
		tsta
		bne	loc_FA75
		ldaa	#1
		oraa	$4C
		staa	$4C

loc_FA75:				; CODE XREF: sub_F96A+E3j sub_F96A+EBj ...
		ldd	#$405
		orab	$4D
		stab	$4D
		staa	$C6
		staa	$69
		clra
		staa	$CE

loc_FA83:				; CODE XREF: sub_F96A+FCj
		ldaa	$C6
		bpl	loc_FA92
		ldd	#$14FE
		cmpa	$65
		bhi	loc_FA92
		andb	$4D
		stab	$4D

loc_FA92:				; CODE XREF: sub_F96A+11Bj
					; sub_F96A+122j
		ldab	$4D
		bitb	#1
		beq	sub_FA9B
		clr	$D2
; End of function sub_F96A


; =============== S U B	R O U T	I N E =======================================


sub_FA9B:				; CODE XREF: sub_FD41-CEFP
					; sub_F96A+12Cj
		ldab	$53
		andb	#6
		ldx	#$FD39
		abx
		ldx	0,x
		jsr	0,x
; End of function sub_FA9B


loc_FAA7:				; CODE XREF: sub_FD41-C9EP
		ldx	#$24 ; '$'

loc_FAAA:				; CODE XREF: ROM:FAB1j
		dex
		beq	sub_FB07
		ldd	$4F
		anda	#$80 ; 'Ä'
		beq	loc_FAAA
		coma
		sei
		anda	$4F
		staa	$4F
		cli
		pshb
		bsr	sub_FB2F
		ldx	#$54 ; 'T'
		abx
		bsr	sub_FB07
		pulb
		ldaa	#1

loc_FAC6:				; CODE XREF: ROM:FAC8j
		rorb
		rola
		bcc	loc_FAC6
		cpx	#$57 ; 'W'
		bne	loc_FAEA
		pshx
		ldx	#$FEF0
		jsr	$38,x
		bsr	sub_FB46
		cmpb	$424
; ---------------------------------------------------------------------------
		fcb   2
		fcb $96	; ñ
		fcb $57	; W
		fcb $36	; 6
		fcb $86	; Ü
		fcb   4
		fcb $BD	; Ω
		fcb $FD	; ˝
		fcb   2
		fcb $32	; 2
		fcb $24	; $
		fcb $1D
		fcb $86	; Ü
		fcb $C0	; ¿
		fcb $20
		fcb $19
; ---------------------------------------------------------------------------

loc_FAEA:				; CODE XREF: ROM:FACDj
		cpx	#$56 ; 'V'
		bne	loc_FB04
		pshx
		bsr	sub_FB46
		orab	$624
; ---------------------------------------------------------------------------
		fcb   2
		fcb $96	; ñ
		fcb $56	; V
		fcb $36	; 6
		fcb $86	; Ü
		fcb $40	; @
		fcb $BD	; Ω
		fcb $FD	; ˝
		fcb   2
		fcb $32	; 2
		fcb $24	; $
		fcb   2
		fcb $86	; Ü
		fcb $79	; y
		fcb $38	; 8
; ---------------------------------------------------------------------------

loc_FB04:				; CODE XREF: ROM:FAEDj
		staa	0,x
		rts

; =============== S U B	R O U T	I N E =======================================


sub_FB07:				; CODE XREF: ROM:FAABj	ROM:FAC1p
		ldaa	6
		bita	#$40 ; '@'
		beq	loc_FB15
		pshx

loc_FB0E:				; CODE XREF: sub_FB07+Bj
		ldx	9
		cpx	$51
		bmi	loc_FB0E
		pulx

loc_FB15:				; CODE XREF: sub_FB07+4j
		inc	$53

loc_FB18:				; CODE XREF: ROM:F3E4P
		bsr	sub_FB2F
		ldaa	#$C
		staa	$10
		ldaa	#$1A
		staa	$11
		ldaa	$11
		ldaa	#$BF ; 'ø'
		sei
		anda	6
		staa	6
		stab	$13
		cli
		rts
; End of function sub_FB07


; =============== S U B	R O U T	I N E =======================================


sub_FB2F:				; CODE XREF: ROM:FABBp
					; sub_FB07:loc_FB18p
		ldab	$53
		lsrb
		bcs	loc_FB37
		ldab	#5
		rts
; ---------------------------------------------------------------------------

loc_FB37:				; CODE XREF: sub_FB2F+3j
		andb	#7
		cmpb	#7
		beq	loc_FB40
		andb	#3
		rts
; ---------------------------------------------------------------------------

loc_FB40:				; CODE XREF: sub_FB2F+Cj
		ldab	#4
		rts
; End of function sub_FB2F


; =============== S U B	R O U T	I N E =======================================


sub_FB43:				; CODE XREF: sub_F420+93P ROM:F830P
		bcc	sub_FB46
		clra
; End of function sub_FB43


; =============== S U B	R O U T	I N E =======================================


sub_FB46:				; CODE XREF: sub_FD41-C65P
					; sub_F420+A6P	...
		pulx
		cmpa	0,x
		bls	loc_FB4F
		ldaa	0,x
		bra	loc_FB55
; ---------------------------------------------------------------------------

loc_FB4F:				; CODE XREF: sub_FB46+3j
		cmpa	1,x
		bcc	loc_FB56
		ldaa	1,x

loc_FB55:				; CODE XREF: sub_FB46+7j
		sec

loc_FB56:				; CODE XREF: sub_FB46+Bj
		jmp	2,x
; End of function sub_FB46

; ---------------------------------------------------------------------------
		fcb $96	; ñ
		fcb $54	; T
		fcb $8D	; ç
		fcb $EA	; Í
		fcb $FA	; ˙
		fcb   5
		fcb $36	; 6
		fcb $86	; Ü
		fcb $20
		fcb $BD	; Ω
		fcb $FD	; ˝
		fcb   2
		fcb $32	; 2
		fcb $24	; $
		fcb   7
		fcb $CC	; Ã
		fcb $FF
		fcb $73	; s
		fcb $D7	; ◊
		fcb $5D	; ]
		fcb $20
		fcb $66	; f
		fcb $D6	; ÷
		fcb $CC	; Ã
		fcb $C5	; ≈
		fcb $20
		fcb $26	; &
		fcb $5E	; ^
		fcb $D6	; ÷
		fcb $95	; ï
		fcb $2B	; +
		fcb   4
		fcb $96	; ñ
		fcb $5B	; [
		fcb $20
		fcb $13
		fcb $9B	; õ
		fcb $5B	; [
		fcb $46	; F
		fcb $9B	; õ
		fcb $5B	; [
		fcb $46	; F
		fcb $C1	; ¡
		fcb $83	; É
		fcb $22	; "
		fcb   3
		fcb $7C	; |
		fcb   0
		fcb $5B	; [
		fcb $D6	; ÷
		fcb $5B	; [
		fcb $11
		fcb $25	; %
		fcb   1
		fcb $17
		fcb $8D	; ç
		fcb $B5	; µ
		fcb $29	; )
		fcb   5
		fcb $24	; $
		fcb   2
		fcb $86	; Ü
		fcb $26	; &
		fcb $97	; ó
		fcb $5B	; [
		fcb $96	; ñ
		fcb $54	; T
		fcb $90	; ê
		fcb $5B	; [
		fcb $24	; $
		fcb   1
		fcb $4F	; O
		fcb $97	; ó
		fcb $5D	; ]
		fcb $96	; ñ
		fcb $95	; ï
		fcb $2B	; +
		fcb $2C	; ,
		fcb $96	; ñ
		fcb $5D	; ]
		fcb $90	; ê
		fcb $5A	; Z
		fcb $25	; %
		fcb $26	; &
		fcb $81	; Å
		fcb   4
		fcb $25	; %
		fcb $22	; "
		fcb $8D	; ç
		fcb $91	; ë
		fcb $1C
		fcb   0
		fcb $CE	; Œ
		fcb $FE	; ˛
		fcb $A7	; ß
		fcb $5F	; _
		fcb $AD	; ≠
		fcb $84	; Ñ
		fcb $D6	; ÷
		fcb $65	; e
		fcb $C1	; ¡
		fcb $50	; P
		fcb $25	; %
		fcb   1
		fcb $44	; D
		fcb $36	; 6
		fcb $DC	; ‹
		fcb $6C	; l
		fcb $93	; ì
		fcb $6A	; j
		fcb $23	; #
		fcb   9
		fcb $BD	; Ω
		fcb $F6	; ˆ
		fcb $E9	; È
		fcb   5
		fcb $BD	; Ω
		fcb $F1	; Ò
		fcb $21	; !
		fcb  $E
		fcb $21	; !
		fcb $31	; 1
		fcb $96	; ñ
		fcb $5D	; ]
		fcb $97	; ó
		fcb $5A	; Z
		fcb $39	; 9
		fcb $CE	; Œ
		fcb $FE	; ˛
		fcb $E2	; ‚
		fcb $AD	; ≠
		fcb $39	; 9
		fcb $D6	; ÷
		fcb $D2	; “
		fcb $C1	; ¡
		fcb $4C	; L
		fcb $22	; "
		fcb   2
		fcb $8B	; ã
		fcb $10
		fcb $D6	; ÷
		fcb   7
		fcb $C5	; ≈
		fcb   8
		fcb $27	; '
		fcb   5
		fcb $BD	; Ω
		fcb $FB	; ˚
		fcb $46	; F
		fcb $FF
		fcb $3C	; <
		fcb $97	; ó
		fcb $9E	; û
		fcb $96	; ñ
		fcb $56	; V
		fcb $CE	; Œ
		fcb $FE	; ˛
		fcb $D9	; Ÿ
		fcb $AD	; ≠
		fcb $4C	; L
		fcb $97	; ó
		fcb $8A	; ä
		fcb $CE	; Œ
		fcb $FF
		fcb  $A
		fcb $AD	; ≠
		fcb $11
		fcb $D6	; ÷
		fcb $57	; W
		fcb $C0	; ¿
		fcb $DA	; ⁄
		fcb $25	; %
		fcb $19
		fcb $17
		fcb $BD	; Ω
		fcb $FB	; ˚
		fcb $46	; F
		fcb  $F
		fcb   0
		fcb $CE	; Œ
		fcb $FF
		fcb $11
		fcb $5F	; _
		fcb $AD	; ≠
		fcb $19
		fcb $D6	; ÷
		fcb $95	; ï
		fcb $2B	; +
		fcb   7
		fcb $DE	; ﬁ
		fcb $7F	; 
		fcb $8C	; å
		fcb   9
		fcb $C4	; ƒ
		fcb $24	; $
		fcb   2
		fcb $86	; Ü
		fcb $1C
		fcb $97	; ó
		fcb $A4	; §
		fcb $96	; ñ
		fcb $4A	; J
		fcb $81	; Å
		fcb $5A	; Z
		fcb $26	; &
		fcb  $D
		fcb $CE	; Œ
		fcb   0
		fcb  $C
		fcb   9
		fcb   9
		fcb $27	; '
		fcb $1A
		fcb $EC	; Ï
		fcb $3E	; >
		fcb $1B
		fcb $4C	; L
		fcb $27	; '
		fcb $F6	; ˆ
		fcb $CE	; Œ
		fcb $80	; Ä
		fcb $7F	; 
		fcb $DF	; ﬂ
		fcb $42	; B
		fcb $DF	; ﬂ
		fcb $40	; @
		fcb $CE	; Œ
		fcb   0
		fcb $FF
		fcb $DF	; ﬂ
		fcb $46	; F
		fcb $DF	; ﬂ
		fcb $48	; H
		fcb $DF	; ﬂ
		fcb $44	; D
		fcb $86	; Ü
		fcb $5A	; Z
		fcb $97	; ó
		fcb $4A	; J
		fcb $D6	; ÷
		fcb $65	; e
		fcb $96	; ñ
		fcb   2
		fcb $84	; Ñ
		fcb $BF	; ø
		fcb $C1	; ¡
		fcb $9E	; û
		fcb $25	; %
		fcb   6
		fcb $C1	; ¡
		fcb $AE	; Æ
		fcb $25	; %
		fcb   4
		fcb $8A	; ä
		fcb $40	; @
		fcb $97	; ó
		fcb   2
		fcb $96	; ñ
		fcb $99	; ô
		fcb $D6	; ÷
		fcb   2
		fcb $58	; X
		fcb $2B	; +
		fcb   7
		fcb $4A	; J
		fcb $2A	; *
		fcb   9
		fcb $86	; Ü
		fcb $F4	; Ù
		fcb $20
		fcb   5
		fcb $4C	; L
		fcb $2B	; +
		fcb   2
		fcb $86	; Ü
		fcb   2
		fcb $97	; ó
		fcb $99	; ô

; =============== S U B	R O U T	I N E =======================================


sub_FC6E:				; CODE XREF: sub_FD41-D1CP
					; sub_FD41:loc_FE48P ...
		ldd	#$E004
		anda	3
		cmpa	#$E0 ; '‡'
		bne	locret_FC7B
		eorb	2
		stab	2

locret_FC7B:				; CODE XREF: sub_FC6E+7j
		rts
; End of function sub_FC6E


; =============== S U B	R O U T	I N E =======================================


sub_FC7C:				; CODE XREF: ROM:F589P
		lsrd
; End of function sub_FC7C


; =============== S U B	R O U T	I N E =======================================


sub_FC7D:				; CODE XREF: sub_F420+39P ROM:F8F5P
		lsrd
		lsrd
		lsrd
		lsrd
		rts
; End of function sub_FC7D

; ---------------------------------------------------------------------------
		fcb $96	; ñ
		fcb   6
		fcb $84	; Ñ
		fcb $10
		fcb $80	; Ä
		fcb $10
		fcb $86	; Ü
		fcb   1
		fcb $BD	; Ω
		fcb $FD	; ˝
		fcb   2
		fcb $96	; ñ
		fcb $55	; U
		fcb $80	; Ä
		fcb $53	; S
		fcb $24	; $
		fcb   1
		fcb $4F	; O
		fcb $CE	; Œ
		fcb $FE	; ˛
		fcb $E9	; È
		fcb $AD	; ≠
		fcb $3C	; <
		fcb $8D	; ç
		fcb $E1	; ·
		fcb $C3	; √
		fcb   1
		fcb $D0	; –
		fcb $DD	; ›
		fcb $81	; Å
		fcb $96	; ñ
		fcb $55	; U
		fcb $CE	; Œ
		fcb $FF
		fcb $12
		fcb $AD	; ≠
		fcb $13
		fcb   4
		fcb   4
		fcb   4
		fcb $D3	; ”
		fcb $BF	; ø
		fcb   4
		fcb $DD	; ›
		fcb $BF	; ø
		fcb $D6	; ÷
		fcb $55	; U
		fcb $4F	; O
		fcb   5
		fcb   5
		fcb $C3	; √
		fcb   1
		fcb $80	; Ä
		fcb $DD	; ›
		fcb $B5	; µ
		fcb $20
		fcb $1B
		fcb $96	; ñ
		fcb $95	; ï
		fcb $2A	; *
		fcb  $A
		fcb $D6	; ÷
		fcb $42	; B
		fcb $C1	; ¡
		fcb $42	; B
		fcb $24	; $
		fcb   4
		fcb $96	; ñ
		fcb   2
		fcb $20
		fcb   9
		fcb $CC	; Ã
		fcb $DF	; ﬂ
		fcb $4C	; L
		fcb $94	; î
		fcb   2
		fcb $D1	; —
		fcb $D2	; “
		fcb $25	; %
		fcb   2
		fcb $8A	; ä
		fcb $20
		fcb $97	; ó
		fcb   2
		fcb $CE	; Œ
		fcb $FF
		fcb $D0	; –
		fcb $AD	; ≠
		fcb $11
		fcb $D6	; ÷
		fcb   7
		fcb $C5	; ≈
		fcb $10
		fcb $26	; &
		fcb  $D
		fcb $D6	; ÷
		fcb $CF	; œ
		fcb $7F	; 
		fcb   0
		fcb $CF	; œ
		fcb $C1	; ¡
		fcb $F3	; Û
		fcb $25	; %
		fcb   4
		fcb $81	; Å
		fcb $F3	; Û
		fcb $24	; $
		fcb $10
		fcb $81	; Å
		fcb $25	; %
		fcb $25	; %
		fcb   6
		fcb $96	; ñ
		fcb $65	; e
		fcb $81	; Å
		fcb $28	; (
		fcb $24	; $
		fcb   6
		fcb $D6	; ÷
		fcb $D1	; —
		fcb $C1	; ¡
		fcb   9
		fcb $25	; %
		fcb $2E	; .
		fcb $86	; Ü
		fcb $10
		fcb $20
		fcb  $F
		fcb $24	; $
		fcb $29	; )
		fcb $95	; ï
		fcb $CC	; Ã
		fcb $26	; &
		fcb   4
		fcb $9A	; ö
		fcb $CC	; Ã
		fcb $20
		fcb $29	; )
		fcb  $D
		fcb $85	; Ö
		fcb $1F
		fcb $27	; '
		fcb  $A

; =============== S U B	R O U T	I N E =======================================


sub_FD11:				; CODE XREF: sub_FD41-C73P
					; sub_F420+23P
		ldab	7
		bitb	#$20 ; ' '
		beq	loc_FD1B
		ldab	#$DA ; '⁄'
		stab	$C8

loc_FD1B:				; CODE XREF: sub_FD11+4j
		tab
		orab	$CD
		stab	$CD
		ldab	7
		bitb	#$10
		bne	locret_FD2C
		oraa	$48
		tab
		comb
		std	$48

locret_FD2C:				; CODE XREF: sub_FD11+13j
		rts
; End of function sub_FD11

; ---------------------------------------------------------------------------
		fcb $43	; C
		fcb $16
		fcb $D4	; ‘
		fcb $CD	; Õ
		fcb $D7	; ◊
		fcb $CD	; Õ
		fcb $94	; î
		fcb $CC	; Ã
		fcb $97	; ó
		fcb $CC	; Ã
		fcb  $C
		fcb $39	; 9
		fcb $FC	; ¸
		fcb $BB	; ª
		fcb $FB	; ˚
		fcb $58	; X
		fcb $FC	; ¸
		fcb $82	; Ç
		fcb $FB	; ˚
		fcb $D7	; ◊

; =============== S U B	R O U T	I N E =======================================


sub_FD41:				; CODE XREF: sub_FD41:loc_F0F7P

; FUNCTION CHUNK AT F000 SIZE 00000119 BYTES

		ldx	#$FEAF
		jsr	$6C,x
		staa	$83
		ldx	#$FEBD
		jsr	$5E,x
		staa	$8B
		ldd	#$B020
		cmpa	$57
		bhi	loc_FD5A
		cmpb	$92
		bls	loc_FD5D

loc_FD5A:				; CODE XREF: sub_FD41+13j
		clr	$CE

loc_FD5D:				; CODE XREF: sub_FD41+17j
		ldx	#$FFD3
		jsr	$10,x
		ldaa	$60
		bne	loc_FD79
		ldd	#$2001
		cmpa	$65
		bhi	loc_FD79
		ldaa	$C6
		bpl	loc_FD79
		andb	$4C
		orab	$46
		tba
		comb
		std	$46

loc_FD79:				; CODE XREF: sub_FD41+23j sub_FD41+2Aj ...
		ldab	7
		andb	#$20 ; ' '
		beq	loc_FDAE
		ldab	$4D
		andb	#8
		beq	loc_FD9D
		ldaa	$76
		adda	$D6
		rora
		ldab	#4
		cmpa	#$99 ; 'ô'
		sbcb	#0
		cmpa	#$87 ; 'á'
		sbcb	#0
		cmpa	#$79 ; 'y'
		sbcb	#0
		cmpa	#$67 ; 'g'
		sbcb	#0
		aslb

loc_FD9D:				; CODE XREF: sub_FD41+42j
		stab	$D7
		clra
		clrb
		std	$C9
		coma
		staa	$CB
		ldab	$4D
		bitb	#1
		bne	loc_FE1B
		bra	loc_FDCE
; ---------------------------------------------------------------------------

loc_FDAE:				; CODE XREF: sub_FD41+3Cj
		ldaa	$95
		bmi	loc_FDB8
		ldaa	$9A
		bpl	loc_FDC6
		bra	loc_FDC4
; ---------------------------------------------------------------------------

loc_FDB8:				; CODE XREF: sub_FD41+6Fj
		ldaa	7
		eora	#4
		anda	#$C
		oraa	$46
		oraa	$48
		bne	loc_FDC6

loc_FDC4:				; CODE XREF: sub_FD41+75j
		ldab	#8

loc_FDC6:				; CODE XREF: sub_FD41+73j sub_FD41+81j
		stab	$D7
		ldab	$CB
		addb	#1
		beq	loc_FE00

loc_FDCE:				; CODE XREF: sub_FD41+6Bj
		ldaa	$C8
		inca
		bne	loc_FE0B
		bcs	loc_FE19
		subb	#$11
		bcc	loc_FE01
		ldd	$C9
		bne	loc_FDF3
		staa	$CB
		ldaa	$46
		anda	#1
		ldab	7
		eorb	#4
		bitb	#$C
		beq	loc_FDED
		oraa	#2

loc_FDED:				; CODE XREF: sub_FD41+A8j
		ldab	$48
		std	$C9
		beq	loc_FE11

loc_FDF3:				; CODE XREF: sub_FD41+9Aj sub_FD41+B6j
		inc	$CB
		lsrd
		bcc	loc_FDF3
		std	$C9
		ldaa	#$11
		ldab	$CB
		mul

loc_FE00:				; CODE XREF: sub_FD41+8Bj
		clc

loc_FE01:				; CODE XREF: sub_FD41+96j
		stab	$CB
		bcs	loc_FE09
		bitb	#$F0 ; ''
		beq	loc_FE11

loc_FE09:				; CODE XREF: sub_FD41+C2j
		ldaa	#$7C ; '|'

loc_FE0B:				; CODE XREF: sub_FD41+90j
		bvc	loc_FE19
		ldaa	#$FC ; '¸'
		bcc	loc_FE19

loc_FE11:				; CODE XREF: sub_FD41+B0j sub_FD41+C6j
		ldaa	#$6D ; 'm'
		ldx	$C9
		bne	loc_FE19
		ldaa	#$5E ; '^'

loc_FE19:				; CODE XREF: sub_FD41+92j
					; sub_FD41:loc_FE0Bj ...
		staa	$C8

loc_FE1B:				; CODE XREF: sub_FD41+69j
		ldab	2
		andb	#$F7 ; '˜'
		tsta
		bpl	loc_FE24
		orab	#8

loc_FE24:				; CODE XREF: sub_FD41+DFj
		stab	2
		ldab	7
		bitb	#$20 ; ' '
		beq	loc_FE33
		ldaa	$4C
		anda	#$FB ; '˚'

loc_FE30:				; CODE XREF: sub_FD41+100j
		staa	$4C

locret_FE32:				; CODE XREF: sub_FD41+F6j
		rts
; ---------------------------------------------------------------------------

loc_FE33:				; CODE XREF: sub_FD41+E9j
		ldaa	$95
		anda	$5D
		bpl	locret_FE32
		bitb	#$10
		bne	loc_FE43
		ldaa	$4C
		oraa	#4
		bra	loc_FE30
; ---------------------------------------------------------------------------

loc_FE43:				; CODE XREF: sub_FD41+FAj
		ldab	#$C0 ; '¿'
		sei
		stab	2

loc_FE48:				; CODE XREF: sub_FD41+144j
		jsr	sub_FC6E
		clra
		clrb
		ldx	#$F000

loc_FE50:				; CODE XREF: sub_FD41+113j
		addd	0,x
		inx
		inx
		bne	loc_FE50
		subd	#$AA55
		beq	loc_FE5F
		ldaa	#$C8 ; '»'
		bra	loc_FE8B
; ---------------------------------------------------------------------------

loc_FE5F:				; CODE XREF: sub_FD41+118j
		jsr	sub_FC6E
		ldd	#$55AA

loc_FE65:				; CODE XREF: sub_FD41+13Ej
		ldx	#$C0 ; '¿'

loc_FE68:				; CODE XREF: sub_FD41+12Bj
		std	$3E,x
		dex
		dex
		bne	loc_FE68

loc_FE6E:				; CODE XREF: sub_FD41+13Aj
		inx
		cmpa	$3F,x
		bne	loc_FE89
		inx
		cmpb	$3F,x
		bne	loc_FE89
		cpx	#$C0 ; '¿'
		bne	loc_FE6E
		comb
		coma
		bmi	loc_FE65
		ldaa	7
		anda	#$20 ; ' '
		beq	loc_FE48
		bra	loc_FE99
; ---------------------------------------------------------------------------

loc_FE89:				; CODE XREF: sub_FD41+130j
					; sub_FD41+135j
		ldaa	#$48 ; 'H'

loc_FE8B:				; CODE XREF: sub_FD41+11Cj
		staa	2

loc_FE8D:				; CODE XREF: sub_FD41+14Dj
					; sub_FD41+156j
		decb
		bne	loc_FE8D
		jsr	sub_FC6E
		ldaa	7
		anda	#$20 ; ' '
		beq	loc_FE8D

loc_FE99:				; CODE XREF: sub_FD41+146j
		jmp	loc_F000
; End of function sub_FD41

; ---------------------------------------------------------------------------
		fcb $1F
		fcb $1F
		fcb $23	; #
		fcb $3E	; >
		fcb $3E	; >
		fcb $57	; W
		fcb $64	; d
		fcb $64	; d
		fcb $68	; h
		fcb $5C	; \
		fcb $4F	; O
		fcb   0
		fcb $23	; #
		fcb $57	; W
		fcb $80	; Ä
		fcb $A8	; ®
		fcb $C2	; ¬
		fcb $D9	; Ÿ
		fcb $E6	; Ê
		fcb $F3	; Û
		fcb $80	; Ä
		fcb $45	; E
		fcb $1E
		fcb   0
		fcb   0
		fcb   0
		fcb $98	; ò
		fcb $53	; S
		fcb $28	; (
		fcb $19
		fcb  $F
		fcb   6
		fcb   6
		fcb $66	; f
		fcb $58	; X
		fcb $47	; G
		fcb $2E	; .
		fcb $17
		fcb   8
		fcb   0
		fcb $6C	; l
		fcb $57	; W
		fcb $45	; E
		fcb $33	; 3
		fcb $23	; #
		fcb $11
		fcb   0
		fcb $F3	; Û
		fcb $80	; Ä
		fcb $1E
		fcb   5
		fcb   0
		fcb   0
		fcb   0
		fcb $FF
		fcb $D8	; ÿ
		fcb $90	; ê
		fcb $68	; h
		fcb $49	; I
		fcb $43	; C
		fcb $40	; @
		fcb $66	; f
		fcb $66	; f
		fcb $6A	; j
		fcb $77	; w
		fcb $83	; É
		fcb $8C	; å
		fcb $99	; ô
		fcb $AA	; ™
		fcb $B9	; π
		fcb $6C	; l
		fcb $6C	; l
		fcb $68	; h
		fcb $60	; `
		fcb $50	; P
		fcb $40	; @
		fcb $30	; 0
		fcb $FF
		fcb $C2	; ¬
		fcb $4B	; K
		fcb $18
		fcb   0
		fcb   0
		fcb   0
		fcb $FF
		fcb $DC	; ‹
		fcb $B2	; ≤
		fcb $9B	; õ
		fcb $8A	; ä
		fcb $7C	; |
		fcb $70	; p
		fcb $66	; f
		fcb $5D	; ]
		fcb $53	; S
		fcb $49	; I
		fcb $40	; @
		fcb $36	; 6
		fcb $2A	; *
		fcb $1D
		fcb  $A
		fcb   0
		fcb $A5	; •
		fcb $84	; Ñ
		fcb $6A	; j
		fcb $55	; U
		fcb $43	; C
		fcb $34	; 4
		fcb $27	; '
		fcb $1C
		fcb $13
		fcb $38	; 8
		fcb $38	; 8
		fcb $37	; 7
		fcb $32	; 2
		fcb $2D	; -
		fcb $1C
		fcb $1C
		fcb $1C
		fcb   6
		fcb   6
		fcb $FF
		fcb $FF
		fcb $D8	; ÿ
		fcb $96	; ñ
		fcb $77	; w
		fcb $5E	; ^
		fcb $51	; Q
		fcb $96	; ñ
		fcb $57	; W
		fcb $5F	; _
		fcb $81	; Å
		fcb $C0	; ¿
		fcb $23	; #
		fcb   4
		fcb $A6	; ¶
		fcb   6
		fcb $39	; 9
		fcb $5F	; _
		fcb   4
		fcb $21	; !

; =============== S U B	R O U T	I N E =======================================


sub_FF28:				; CODE XREF: ROM:F88AP	ROM:F891P
		clrb
		lsrd
		lsrd
		lsrd
		lsrd
		pshb
		tab
		abx
		ldaa	1,x
		suba	0,x
		pulb
; End of function sub_FF28


; =============== S U B	R O U T	I N E =======================================


sub_FF35:				; CODE XREF: ROM:F89AP
		bcc	loc_FF3C
		nega
		negb
		beq	loc_FF3C
		inx

loc_FF3C:				; CODE XREF: sub_FF35j	sub_FF35+4j
		mul
		adda	0,x
		rts
; End of function sub_FF35

; ---------------------------------------------------------------------------
		fcb $58	; X
		fcb $63	; c
		fcb $71	; q
		fcb $7E	; ~
		fcb $8A	; ä
		fcb $96	; ñ
		fcb $96	; ñ
		fcb $97	; ó
		fcb $97	; ó
		fcb $8F	; è
		fcb $8E	; é
		fcb $8F	; è
		fcb $8D	; ç
		fcb $8F	; è
		fcb $44	; D
		fcb $59	; Y
		fcb $66	; f
		fcb $72	; r
		fcb $7E	; ~
		fcb $7E	; ~
		fcb $7E	; ~
		fcb $7F	; 
		fcb $7F	; 
		fcb $77	; w
		fcb $76	; v
		fcb $72	; r
		fcb $71	; q
		fcb $72	; r
		fcb $21	; !
		fcb $3E	; >
		fcb $53	; S
		fcb $57	; W
		fcb $5C	; \
		fcb $5D	; ]
		fcb $5E	; ^
		fcb $5D	; ]
		fcb $5D	; ]
		fcb $61	; a
		fcb $62	; b
		fcb $62	; b
		fcb $63	; c
		fcb $64	; d
		fcb $13
		fcb $1D
		fcb $28	; (
		fcb $35	; 5
		fcb $3B	; ;
		fcb $43	; C
		fcb $46	; F
		fcb $47	; G
		fcb $47	; G
		fcb $56	; V
		fcb $5B	; [
		fcb $5B	; [
		fcb $5C	; \
		fcb $5D	; ]
		fcb  $B
		fcb $10
		fcb $13
		fcb $22	; "
		fcb $27	; '
		fcb $28	; (
		fcb $2B	; +
		fcb $34	; 4
		fcb $36	; 6
		fcb $48	; H
		fcb $54	; T
		fcb $56	; V
		fcb $55	; U
		fcb $56	; V
		fcb  $B
		fcb $10
		fcb $13
		fcb $22	; "
		fcb $27	; '
		fcb $28	; (
		fcb $2B	; +
		fcb $2E	; .
		fcb $2E	; .
		fcb $39	; 9
		fcb $49	; I
		fcb $4E	; N
		fcb $55	; U
		fcb $56	; V
		fcb   0
		fcb   0
		fcb   0
		fcb  $B
		fcb   5
		fcb   5
		fcb   5
		fcb   0
		fcb   7
		fcb   0
		fcb $FB	; ˚
		fcb   0
		fcb   0
		fcb   7
		fcb $FB	; ˚
		fcb $FE	; ˛
		fcb $D6	; ÷
		fcb $58	; X
		fcb $54	; T
		fcb $54	; T
		fcb $54	; T
		fcb $54	; T
		fcb $54	; T
		fcb $3A	; :
		fcb $A0	; †
		fcb   0
		fcb $39	; 9
		fcb $4D	; M
		fcb   5
		fcb $43	; C
		fcb   0
		fcb $5B	; [
		fcb $26	; &
		fcb $80	; Ä
		fcb   0
		fcb $54	; T
		fcb $73	; s
		fcb $B3	; ≥
		fcb $79	; y
		fcb $C0	; ¿
		fcb $20
		fcb   0
		fcb $65	; e
		fcb $12
		fcb $FF
		fcb $FF
		fcb $10
		fcb   4
		fcb   2
		fcb $8A	; ä
		fcb $11
		fcb $94	; î
		fcb   1
		fcb $CC	; Ã
		fcb $7F	; 
		fcb $FF
		fcb   2
		fcb   1
		fcb   2
		fcb   0
		fcb $95	; ï
		fcb $60	; `
		fcb $34	; 4
		fcb $7A	; z
		fcb $7C	; |
		fcb $F4	; Ù
		fcb $71	; q
		fcb $71	; q
		fcb $FF
		fcb $E6	; Ê
		fcb   0
		fcb $C6	; ∆
		fcb   4
		fcb $FF
		fcb $5E	; ^
		fcb   0
		fcb   0
		fcb $8D	; ç
		fcb   0
		fcb $A6	; ¶
		fcb $FF
		fcb $4C	; L
		fcb $27	; '
		fcb   2
		fcb $6C	; l
		fcb $FF
		fcb   8
		fcb $A6	; ¶
		fcb $FE	; ˛
		fcb $39	; 9
		fdb $C7BE		; illegal opcode trap? c7be is out of rom...
		fdb $F3DB		; serial interrupt rdrf	/ orfe / tore
		fdb $F000		; timer	overflow
		fdb $F370		; timer	output compare
		fdb $F1B1		; timer	input capture
		fdb $F000		; /irq or /S3
		fdb $F000		; swi
		fdb $F000		; /NMI
		fdb $F000		; reset	entry vector
; end of 'ROM'


		end
