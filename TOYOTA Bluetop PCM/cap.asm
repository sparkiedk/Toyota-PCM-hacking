
; Processor:	    6303 []
; Target assembler: Motorola FreeWare Assembler

; ===========================================================================

; Segment type:	Regular
		; segment RegRAM
Port1DDR:	rmb 1
Port2DDR:	rmb 1
Port1:		rmb 1
Port2:		rmb 1
Port3DDR:	rmb 1
Port4DDR:	rmb 1
Port3:		rmb 1			; DATA XREF: sub_FD41-D2Dw
					; sub_FD41-CB0r ...
Port4:		rmb 1
TmrCntStat:	rmb 1
Timer:		rmb 2
OutCmp:		rmb 2
InpCap:		rmb 2
Port3CntStat:	rmb 1			; 7- /IS3 flag	6- /IS3	/IRQ enable 5x 4- output strobe	select 3 latch enable 210x
UARTRateMode:	rmb 1
TxRxCntStat:	rmb 1
RxReg:		rmb 1
TxReg:		rmb 1
RAMCnt:		rmb 1
		rmb 1
		rmb 1
		rmb 1
unk_18:		rmb 1
		rmb 1
		rmb 1
word_1B:	rmb 2			; used by an injector control sub
unk_1D:		rmb 1
		rmb 1
		rmb 1			; top of SFR space inclusive
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
word_40:	rmb 2			; if we	call this the start of user ram, it's exactly 192 bytes (inclusive)
word_42:	rmb 2
word_44:	rmb 2
word_46:	rmb 2
word_48:	rmb 2
unk_4A:		rmb 1
unk_4B:		rmb 1
unk_4C:		rmb 1
unk_4D:		rmb 1
unk_4E:		rmb 1
unk_4F:		rmb 1
ADCRxData:	rmb 1
EndTxByteTime:	rmb 2			; caches timer values from serial interrupt
unk_53:		rmb 1			; controls a jump table	at fa9b, also deselects	ADC with LSB
unk_54:		rmb 1
byte_55:	rmb 1			; DATA XREF: ROM:FC8Dr	ROM:FCA0r ...
		rmb 1
byte_57:	rmb 1			; DATA XREF: ROM:F351r	sub_F420+D1r ...
byte_58:	rmb 1			; DATA XREF: ROM:loc_FFA4r
unk_59:		rmb 1
unk_5A:		rmb 1
unk_5B:		rmb 1
unk_5C:		rmb 1
unk_5D:		rmb 1
unk_5E:		rmb 1
unk_5F:		rmb 1
unk_60:		rmb 1
unk_61:		rmb 1
word_62:	rmb 2
unk_64:		rmb 1
unk_65:		rmb 1
word_66:	rmb 2
unk_68:		rmb 1
unk_69:		rmb 1
word_6A:	rmb 2
word_6C:	rmb 2
word_6E:	rmb 2
unk_70:		rmb 1
		rmb 1
unk_72:		rmb 1
		rmb 1
unk_74:		rmb 1
unk_75:		rmb 1
unk_76:		rmb 1
		rmb 1
byte_78:	rmb 1
Inj10OffTime:	rmb 2
unk_7B:		rmb 1
		rmb 1
unk_7D:		rmb 1
		rmb 1
word_7F:	rmb 2
word_81:	rmb 2			; DATA XREF: sub_F168:loc_F16Er
					; ROM:FC9Ew
					; injector related
unk_83:		rmb 1
unk_84:		rmb 1
		rmb 1
unk_86:		rmb 1
unk_87:		rmb 1
unk_88:		rmb 1
unk_89:		rmb 1
unk_8A:		rmb 1
unk_8B:		rmb 1
unk_8C:		rmb 1
		rmb 1
word_8E:	rmb 2
word_90:	rmb 2
unk_92:		rmb 1
unk_93:		rmb 1
unk_94:		rmb 1
unk_95:		rmb 1
unk_96:		rmb 1
unk_97:		rmb 1
unk_98:		rmb 1
unk_99:		rmb 1			; TVIS related
unk_9A:		rmb 1
unk_9B:		rmb 1
unk_9C:		rmb 1
unk_9D:		rmb 1
unk_9E:		rmb 1
word_9F:	rmb 2			; injector related
word_A1:	rmb 2
unk_A3:		rmb 1
unk_A4:		rmb 1
unk_A5:		rmb 1
unk_A6:		rmb 1
word_A7:	rmb 2
word_A9:	rmb 2
word_AB:	rmb 2
word_AD:	rmb 2
word_AF:	rmb 2
word_B1:	rmb 2
unk_B3:		rmb 1
		rmb 1
word_B5:	rmb 2			; DATA XREF: ROM:F391r	ROM:F397r ...
word_B7:	rmb 2
word_B9:	rmb 2
word_BB:	rmb 2
word_BD:	rmb 2
byte_BF:	rmb 1			; DATA XREF: ROM:F911r	ROM:FCAAr ...
		rmb 1
word_C1:	rmb 2
unk_C3:		rmb 1
word_C4:	rmb 2
unk_C6:		rmb 1
		rmb 1
unk_C8:		rmb 1
word_C9:	rmb 2
unk_CB:		rmb 1
unk_CC:		rmb 1
unk_CD:		rmb 1
unk_CE:		rmb 1
unk_CF:		rmb 1
unk_D0:		rmb 1
unk_D1:		rmb 1
unk_D2:		rmb 1
word_D3:	rmb 2
unk_D5:		rmb 1
unk_D6:		rmb 1
unk_D7:		rmb 1
unk_D8:		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
		rmb 1
TopStack:	rmb 1
; end of 'RegRAM'

; ---------------------------------------------------------------------------
; File Name   :	C:\Documents and Settings\Sparkie\Desktop\bluetop temp\cap.bin
; Format      :	Binary file
; Base Address:	0000h Range: F000h - 10000h Loaded length: 1000h
; ===========================================================================

; Segment type:	Pure code
		; segment ROM
		org $F000
; START	OF FUNCTION CHUNK FOR sub_FD41

reset:					; CODE XREF: sub_FD41:loc_FE99J
		sei
		sei
		lds	#$FF		; init stackptr
		ldaa	#$C0 ; 'À'
		staa	RAMCnt		; ram control register $14
		ldaa	#3		; leading edges, but no	interrupts
		staa	TmrCntStat	; timer	control	and status regiser $8
		staa	unk_18		; $18 is reserved...
		std	Timer		; $9 is	counter	high byte, $A is counter low byte
		ldd	#$BFFF
		std	Port3		; $port	3 all outputs high except 6, select ADC	- Port4	all bits high
		ldd	#$9FFF
		std	Port1		; port1	bits 7,4,3,2,1 high port 2 all bits high
		ldx	#$6081		; because they're worried they'll wear out accD?
		stx	Port3DDR	; $4 is	direction 3 $5 is direction 4
		ldx	#$EE12
		stx	Port1DDR	; $0 is	direction 1 $1 is direction 2
		jsr	CPUModeTst	; does a mode test and toggles watchdog	pin
		ldx	#$B4 ; '´'

loc_F02B:				; CODE XREF: sub_FD41-D13j
		clr	$4B,x		; $4b is 75dec,	$b4 is 180dec, so clear	memory starting	from $ff to $4C	inclusive
		dex
		bne	loc_F02B	; $4b is 75dec,	$b4 is 180dec, so clear	memory starting	from $ff to $4C	inclusive
		ldd	TxRxCntStat	; $11 is txrx control and stat reg, $12	is rxdata reg
		ldaa	#2		; tx enable, no	interrupts
		staa	TxRxCntStat
		ldx	#$FFAE

loc_F039:				; CODE XREF: sub_FD41-D00j
		inx
		ldab	0,x
		beq	loc_F04E	; FFAF=$4d, so initially doesn't branch, but this is the only way out!

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
		ldab	Timer
		stab	unk_5E
		ldaa	#$1B
		sei
		staa	TmrCntStat	; timer	control	$1b enables inp	cap int, enables out comp int, rising edge inp trigger,	compare	triggers leading edge.
		staa	unk_18		; $18 is reserved

loc_F064:				; CODE XREF: sub_FD41:loc_F116J
		lds	#$FF		; re-init stack	ptr
		ldd	#$EE12
		std	Port1DDR	; re init ddr1 and ddr2
		ldx	#$6081		; re init ddr3 and ddr4
		stx	Port3DDR
		cli
		ldd	unk_4C
		eorb	Port4		; port 4
		andb	#$40 ; '@'      ; p4-6 is SPD input
		beq	loc_F083
		inc	unk_61
		eorb	unk_4D
		anda	#$FE ; 'þ'
		std	unk_4C

loc_F083:				; CODE XREF: sub_FD41-CC9j
		ldd	unk_5E
		cmpa	Timer
		bpl	loc_F0FD
		adda	#$10
		incb
		std	unk_5E
		ldaa	#$DF ; 'ß'
		sei
		anda	Port3		; clear	bit5 (mixed signal se056)
		staa	Port3		; clear	bit5 (mixed signal se056)
		cli
		ldd	#$1FE
		andb	unk_53		; clear	bit0
		stab	unk_53		; clear	bit0
		sei
		oraa	unk_4F		; set bit 0
		staa	unk_4F		; set bit 0
		cli
		jsr	loc_FAA7
		ldaa	unk_5F
		asla
		beq	loc_F0BB
		anda	#$3E ; '>'
		beq	loc_F0F7
		ldab	unk_4C
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
		cmpa	#$98 ; '˜'
		ldab	unk_4C
		bitb	#4
		beq	loc_F0CA
		cmpa	#4

loc_F0CA:				; CODE XREF: sub_FD41-C7Bj
		bcs	loc_F0D1
		ldaa	#8
		jsr	sub_FD11

loc_F0D1:				; CODE XREF: sub_FD41:loc_F0CAj
		ldd	unk_95
		bpl	loc_F0E8
		incb
		bpl	loc_F0F0
		ldaa	unk_9D
		suba	#1
		jsr	sub_FB46
		ldab	$8F,x
		clr	unk_CE
		ldab	#$89 ; '‰'
		bra	loc_F0EE
; ---------------------------------------------------------------------------

loc_F0E8:				; CODE XREF: sub_FD41-C6Ej
		decb
		bmi	loc_F0F0
		ldd	#$E634

loc_F0EE:				; CODE XREF: sub_FD41-C5Bj
		staa	unk_9D

loc_F0F0:				; CODE XREF: sub_FD41-C6Bj
					; sub_FD41-C58j
		stab	unk_96
		clrb
		ldaa	unk_61
		std	unk_60

loc_F0F7:				; CODE XREF: sub_FD41-C94j
					; sub_FD41-C8Aj
		jsr	sub_FD41

loc_F0FA:				; CODE XREF: sub_FD41:loc_F0B9j
		jsr	sub_F96A

loc_F0FD:				; CODE XREF: sub_FD41-CBAj
		ldaa	#2
		bita	unk_4E
		beq	loc_F10D
		bsr	sub_F119
		jsr	sub_F420
		jsr	loc_F814
		bra	loc_F116
; ---------------------------------------------------------------------------

loc_F10D:				; CODE XREF: sub_FD41-C40j
		ldaa	#1
		bita	unk_4E
		beq	loc_F116
		jsr	loc_F534

loc_F116:				; CODE XREF: sub_FD41-C36j
					; sub_FD41-C30j
		jmp	loc_F064	; re-init stack	ptr
; END OF FUNCTION CHUNK	FOR sub_FD41

; =============== S U B	R O U T	I N E =======================================


sub_F119:				; CODE XREF: sub_FD41-C3Ep
					; sub_F420+B3P	...
		coma
; End of function sub_F119


; =============== S U B	R O U T	I N E =======================================


sub_F11A:				; CODE XREF: sub_F420+BFP ROM:F53FP
		sei
		anda	unk_4E
		staa	unk_4E
		cli
		rts
; End of function sub_F11A


; =============== S U B	R O U T	I N E =======================================


sub_F121:				; CODE XREF: sub_F96A+B8P
		psha
		ldaa	unk_4D
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
		ldaa	unk_65
		cmpa	#$8C ; 'Œ'
		bcc	loc_F127
		pula

loc_F131:				; CODE XREF: ROM:F21EP
		tsta
		beq	locret_F128
		sei
		bsr	sub_F154

loc_F137:				; CODE XREF: ROM:loc_F23EP
		ldx	#$DD9F
		ldaa	Port1		; test injector	#20 (bit 1)
		rora
		rora			; injector 20 bit in carry
		ldd	unk_7B
		bsr	sub_F168	; carry	set, injector was off
		addd	#$1E
		std	unk_7B
		ldd	#$FE0C
		anda	unk_18
		staa	unk_18
		ldx	Timer
		abx
		stx	word_1B		; used by an injector control sub
		rts
; End of function sub_F129


; =============== S U B	R O U T	I N E =======================================


sub_F154:				; CODE XREF: sub_F129+Cp sub_F194p

; FUNCTION CHUNK AT F191 SIZE 00000003 BYTES

		std	word_9F		; injector related
		ldaa	Port4		; p4-7 is injections #10
		rola
		ldd	Inj10OffTime
		bsr	sub_F168	; carry	set, injector was off
		subd	#0
		std	Inj10OffTime
		ldaa	#$7F ; ''
		anda	Port4		; turn on injector #10
		bra	loc_F191
; End of function sub_F154


; =============== S U B	R O U T	I N E =======================================

; carry	set, injector was off

sub_F168:				; CODE XREF: sub_F129+17p sub_F154+7p
		bcs	loc_F16E
		subd	Timer
		bpl	loc_F170

loc_F16E:				; CODE XREF: sub_F168j
		ldd	word_81		; injector related

loc_F170:				; CODE XREF: sub_F168+4j
		addd	word_9F		; injector related
		bpl	loc_F177
		ldd	#$7FFF

loc_F177:				; CODE XREF: sub_F168+Aj
		addd	Timer
		rts
; End of function sub_F168


; =============== S U B	R O U T	I N E =======================================


injector1:				; CODE XREF: ROM:F2F8P	ROM:F3D7P

; FUNCTION CHUNK AT F196 SIZE 0000001B BYTES

		ldaa	Port4
		bmi	locret_F1B0	; exit is injector #10 is not on
		ldd	Inj10OffTime
		subd	#320
		subd	Timer
		bpl	loc_F196	; branch if not	within 320us of	inj off	time
		ldx	Inj10OffTime

loc_F189:				; CODE XREF: injector1+11j
		cpx	Timer
		bpl	loc_F189	; spin waiting for timer
		ldaa	#$80 ; '€'
		oraa	Port4		; turn off injector #10
; End of function injector1

; START	OF FUNCTION CHUNK FOR sub_F154

loc_F191:				; CODE XREF: sub_F154+12j
		staa	Port4
		rts
; END OF FUNCTION CHUNK	FOR sub_F154

; =============== S U B	R O U T	I N E =======================================


sub_F194:				; CODE XREF: ROM:F23AP
		bsr	sub_F154
; End of function sub_F194

; START	OF FUNCTION CHUNK FOR injector1

loc_F196:				; CODE XREF: injector1+Bj
		ldd	#$2FE
		anda	Port1		; test bit 1 (injector #20)
		bne	loc_F1A3	; branch is injector #20 is not	on
		ldx	word_1B		; used by an injector control sub
		cpx	Inj10OffTime
		bmi	locret_F1B0

loc_F1A3:				; CODE XREF: injector1+21j
		lsra
		andb	unk_18
		aba
		staa	unk_18
		ldd	Inj10OffTime
		subd	#250
		std	word_1B		; used by an injector control sub

locret_F1B0:				; CODE XREF: injector1+2j
					; injector1+27j
		rts
; END OF FUNCTION CHUNK	FOR injector1
; ---------------------------------------------------------------------------

IRQinpcap:
		ldaa	TmrCntStat
		bita	unk_18
		bmi	loc_F1BA
		tsta
		bra	loc_F1BC
; ---------------------------------------------------------------------------

loc_F1BA:				; CODE XREF: ROM:F1B5j
		ldaa	unk_4E

loc_F1BC:				; CODE XREF: ROM:F1B8j
		bmi	loc_F1C1
		jmp	loc_F242
; ---------------------------------------------------------------------------

loc_F1C1:				; CODE XREF: ROM:loc_F1BCj
		ldd	InpCap
		subd	word_B9
		pshb
		psha
		pulx
		ldaa	unk_4E
		bpl	locret_F23D
		oraa	#1
		anda	#$7F ; ''
		staa	unk_4E
		cli
		inx
		cpx	word_6E
		bcc	loc_F1DA
		ldx	word_6E

loc_F1DA:				; CODE XREF: ROM:F1D6j
		cpx	word_6C
		bcs	loc_F1E0
		ldx	word_6C

loc_F1E0:				; CODE XREF: ROM:F1DCj
		ldaa	unk_CD
		bita	#1
		beq	loc_F1F0
		ldx	#800
		ldaa	unk_95
		bmi	loc_F1F0
		ldx	#1600

loc_F1F0:				; CODE XREF: ROM:F1E4j	ROM:F1EBj
		stx	word_6A
		ldaa	unk_97
		oraa	unk_4C
		oraa	unk_98
		bmi	locret_F23D
		ldaa	unk_75
		psha
		ldd	word_6A
		jsr	sub_F6E9
		pshb
		ldx	#0
		ldab	unk_74
		abx
		pulb
		beq	loc_F211

loc_F20C:				; CODE XREF: ROM:F20Fj
		addd	word_6A
		dex
		bne	loc_F20C

loc_F211:				; CODE XREF: ROM:F20Aj
		tsta
		bpl	loc_F217
		ldd	#$7FFF

loc_F217:				; CODE XREF: ROM:F212j
		std	unk_7D
		sei
		ldx	unk_69
		bmi	loc_F22C
		jsr	loc_F131
		ldaa	unk_69
		bne	locret_F23D
		deca
		staa	unk_69
		ldd	unk_7D
		bra	loc_F232
; ---------------------------------------------------------------------------

loc_F22C:				; CODE XREF: ROM:F21Cj
		lsld
		bpl	loc_F232
		ldd	#$7FFF

loc_F232:				; CODE XREF: ROM:F22Aj	ROM:F22Dj
		psha
		ldaa	byte_78
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
		ldaa	unk_18
		ldx	unk_1D
		bita	#2
		beq	loc_F2AC
		stx	word_B7
		ldaa	Port2
		bita	#2
		beq	loc_F262
		ldaa	unk_C6
		bgt	loc_F262
		ldd	#$FA0D
		anda	TmrCntStat
		staa	TmrCntStat
		ldx	Timer
		abx
		stx	OutCmp		; output compare register

loc_F262:				; CODE XREF: ROM:F250j	ROM:F254j
		ldd	OutCmp
		addd	unk_B3
		std	word_9F		; injector related
		ldaa	word_A1
		inca
		bmi	loc_F27B
		ldd	word_B7
		addd	word_A7
		subd	word_A1
		cmpa	word_9F		; injector related
		bpl	loc_F279
		ldd	word_9F		; injector related

loc_F279:				; CODE XREF: ROM:F275j
		bsr	sub_F287

loc_F27B:				; CODE XREF: ROM:F26Bj
		ldd	#$FDF3
		anda	unk_18
		staa	unk_18
		andb	unk_4E
		stab	unk_4E
		rti			; total	end of input capture interrupt

; =============== S U B	R O U T	I N E =======================================


sub_F287:				; CODE XREF: ROM:loc_F279p ROM:F2BCp
		psha
		ldaa	#$19
		oraa	TmrCntStat
		staa	TmrCntStat
		pula
; End of function sub_F287


; =============== S U B	R O U T	I N E =======================================

; called from output compare ISR

OutCmpSub2:				; CODE XREF: ROM:loc_F3ACP ROM:F94DP
		std	OutCmp
		subd	Timer
		cmpa	#$F0 ; 'ð'
		bcs	locret_F29E

loc_F297:				; CODE XREF: ROM:F2AAj
		ldd	#$F
		addd	Timer
		std	OutCmp

locret_F29E:				; CODE XREF: OutCmpSub2+6j ROM:F2A4j
		rts
; End of function OutCmpSub2

; ---------------------------------------------------------------------------
		ldd	#$219
		bita	Port2
		bne	locret_F29E
		orab	TmrCntStat
		stab	TmrCntStat
		bra	loc_F297
; ---------------------------------------------------------------------------

loc_F2AC:				; CODE XREF: ROM:F248j
		stx	word_9F		; injector related
		ldaa	unk_4E
		bita	#8
		bne	loc_F2C1
		ldaa	word_A1
		bpl	loc_F2BE+1
		ldd	word_9F		; injector related
		subd	word_A1
		bsr	sub_F287

loc_F2BE:				; CODE XREF: ROM:F2B6j
		cpx	#$8DDE

loc_F2C1:				; CODE XREF: ROM:F2B2j
		ldd	word_9F		; injector related
		subd	word_B9
		std	word_66
		ldab	unk_68
		clr	unk_68
		cmpb	#$D
		bcs	loc_F2DC
		cmpb	#$16
		bhi	loc_F2D7
		tsta
		bmi	loc_F2DC

loc_F2D7:				; CODE XREF: ROM:F2D2j
		ldd	#$FFFF
		std	word_66

loc_F2DC:				; CODE XREF: ROM:F2CEj	ROM:F2D5j
		cmpa	#$EA ; 'ê'
		bcc	loc_F2E8
		ldaa	unk_C6
		ldab	unk_4B
		cmpb	#4
		bcs	loc_F2EA

loc_F2E8:				; CODE XREF: ROM:F2DEj
		ldaa	#5

loc_F2EA:				; CODE XREF: ROM:F2E6j
		tsta
		bmi	loc_F2F0
		deca
		staa	unk_C6

loc_F2F0:				; CODE XREF: ROM:F2EBj
		ldaa	unk_18
		asla
		bpl	loc_F2FB
		jsr	watchdog1
		jsr	injector1

loc_F2FB:				; CODE XREF: ROM:F2F3j
		ldd	word_9F		; injector related
		std	word_B9
		subd	word_B7
		std	word_A7
		subd	word_B1
		addd	word_A9
		asra
		rorb
		ldx	word_AB
		stx	word_A9
		ldx	word_AD
		stx	word_AB
		ldx	word_AF
		stx	word_AD
		tst	unk_C6
		ble	loc_F31C
		clra
		clrb

loc_F31C:				; CODE XREF: ROM:F318j
		std	word_AF
		ldd	word_B1
		addd	word_A7
		rora
		rorb
		std	word_B1
		addd	word_A9
		std	word_A7
		ldd	#$1A1A
		orab	TmrCntStat
		stab	TmrCntStat
		oraa	unk_18
		staa	unk_18
		ldab	unk_4E
		ldaa	byte_78
		inca
		staa	byte_78
		cmpa	#3
		bls	loc_F359
		tba
		asla
		oraa	Port3		; inputs to port3 are 7	-G+, 4,3,2,1,0
		bmi	loc_F359
		ldaa	#$FE ; 'þ'
		anda	Port4		; p4-0 is output to SE056 mixed	signal ic, here	we apply a low level
		staa	Port4		; p4-0 is output to SE056 mixed	signal ic, here	we apply a low level
		clra
		staa	byte_78
		staa	unk_D1
		ldaa	byte_57
		cmpa	#$50 ; 'P'
		bls	loc_F359
		orab	#$20 ; ' '

loc_F359:				; CODE XREF: ROM:F33Ej	ROM:F344j ...
		orab	#$46 ; 'F'
		ldaa	#1
		bita	Port2
		beq	loc_F365
		ldaa	TmrCntStat
		bpl	loc_F367

loc_F365:				; CODE XREF: ROM:F35Fj
		orab	#$80 ; '€'

loc_F367:				; CODE XREF: ROM:F363j
		stab	unk_4E
		ldaa	#1
		oraa	Port4		; p4-0 is output to SE056 mixed	signal ic, here	we apply a high	level
		staa	Port4
		rti
; ---------------------------------------------------------------------------

IRQoutcmp:				; output compare pin p2-1 eventually becomes the signal	/IGT, or in other words	a high IGT pulse (normal operation I believe) is created by a low pulse	from the output	compare	module.
		ldaa	unk_18
		asla
		bmi	OutCmpFrg1
		ldaa	TmrCntStat
		tab
		comb
		bitb	#$41 ; 'A'
		bne	loc_F3B0	; if bit 6 or 1	was low	in tmrcntstat branch: if we're here for no reason (ocf flag was NOT set??) or we're here because a compare forced P2-1 low, branch
		ldab	unk_4E
		bitb	#8
		bne	loc_F3B0
		orab	#8
		stab	unk_4E
		ldab	unk_C6
		bgt	loc_F3B0
		anda	#$FA ; 'ú'
		staa	TmrCntStat
		ldd	OutCmp		; timer	compare	register
		addd	word_B5		; $b5:b6 contains a duration
		std	word_BD		; $bd:be contains next compare time?
		ldd	word_66
		subd	word_B5
		subd	word_BB
		bcc	loc_F39F
		clra
		clrb

loc_F39F:				; CODE XREF: ROM:F39Bj
		addd	word_BD
		psha
		ldaa	unk_4E
		bita	#4
		pula			; pulls	dont touch cond	codes
		beq	loc_F3AC
		jsr	OutCmpSub1	; called from output compare ISR

loc_F3AC:				; CODE XREF: ROM:F3A7j
		jsr	OutCmpSub2	; called from output compare ISR
		rti
; ---------------------------------------------------------------------------

loc_F3B0:				; CODE XREF: ROM:F37Bj	ROM:F381j ...
		oraa	#1
		staa	TmrCntStat
		ldd	OutCmp
		std	OutCmp
		rti			; final	end to output compare interrupt

; =============== S U B	R O U T	I N E =======================================


watchdog1:				; CODE XREF: ROM:F2F5P	watchdog1+19j ...
		ldaa	unk_18
		oraa	#1
		staa	unk_18
		ldx	unk_7B
		stx	word_1B		; used by an injector control sub
		cpx	Timer
		bpl	locret_F3D4
		ldd	#$209
		anda	Port1		; test status of bit 1 (injector #20)
		bne	locret_F3D4
		addd	Timer
		std	word_1B		; used by an injector control sub
		bra	watchdog1
; ---------------------------------------------------------------------------

locret_F3D4:				; CODE XREF: watchdog1+Cj
					; watchdog1+13j
		rts
; End of function watchdog1

; ---------------------------------------------------------------------------

OutCmpFrg1:				; CODE XREF: ROM:F373j
		bsr	watchdog1
		jsr	injector1
		rti
; ---------------------------------------------------------------------------

IRQSerial:				; sort of like ldaa $11	ldab $12
		ldd	TxRxCntStat
		bpl	locret_F3E7	; branch if bit	15=0, means there's no receive data (why are we interrupting?)
		cli
		anda	#$40 ; '@'      ; test for overrun or framing error
		beq	SerialMain	; no error
		jsr	loc_FB18	; error, rx reg	gets written to	tx reg after re-init, and the adc gets selected...

locret_F3E7:				; CODE XREF: ROM:F3DDj
		rti
; ---------------------------------------------------------------------------

SerialMain:				; CODE XREF: ROM:F3E2j
		ldaa	unk_4F
		rora
		ldaa	Port3		; test to see if /CS to	the ADC	is set
		bita	#$40 ; '@'
		bne	SerialDebug	; branch if ADC	was not	selected (to serial debug routine)
		stab	ADCRxData	; b has	rx data
		bcc	loc_F3FE	; branch if lsb	of $4f when loaded was 0
		ldab	unk_53		; controls a jump table	at fa9b, also deselects	ADC with LSB
		rorb
		bcs	loc_F3FE	; branch if unk_53 lsb was set
		oraa	#$40 ; '@'
		staa	Port3		; de select adc	p3-6

loc_F3FE:				; CODE XREF: ROM:F3F3j	ROM:F3F8j
		ldab	#$80 ; '€'
		orab	unk_4F		; set bit 7
		stab	unk_4F		; set bit 7

SerMainRet:				; CODE XREF: ROM:F41Ej
		sei			; disable interrupts?
		ldd	Timer		; load counter into d
		addd	#320		; add 320us, exactly 10	bits (serial byte!) from now
		std	EndTxByteTime	; caches timer values from serial interrupt
		rti
; ---------------------------------------------------------------------------

SerialDebug:				; CODE XREF: ROM:F3EFj
		ldx	#0
		abx			; add rx byte to index reg
		ldd	0,x		; grab byte pointed to by rx byte
		sei
		staa	TxReg		; tx byte pointed to by	rx byte
		ldaa	#$20 ; ' '

txwaitloop1:				; CODE XREF: ROM:F41Aj
		bita	TxRxCntStat	; test if tx reg empty
		beq	txwaitloop1	; tx wait loop
		stab	TxReg
		bra	SerMainRet	; disable interrupts?

; =============== S U B	R O U T	I N E =======================================


sub_F420:				; CODE XREF: sub_FD41-C3CP
		sei
		ldaa	Port3CntStat	; operation clears is3 flag
		ldab	Port3		; operation clears is3 flag
		cli
		clrb
		stab	Port3CntStat	; nuke all special features of port3
		rola
		ldd	#$7B79
		bcc	loc_F431
		staa	unk_98

loc_F431:				; CODE XREF: sub_F420+Dj
		ldx	word_66
		cpx	#$FD6
		bcs	loc_F43A
		stab	unk_97

loc_F43A:				; CODE XREF: sub_F420+16j
		ldx	#$FF98
		jsr	$49,x
		bpl	loc_F446
		ldaa	#2
		jsr	sub_FD11

loc_F446:				; CODE XREF: sub_F420+1Fj
		ldx	#$FC81
		ldd	word_66

loc_F44B:				; CODE XREF: sub_F420+31j
		bita	#$F0 ; 'ð'
		beq	loc_F453
		dex
		lsrd
		bra	loc_F44B
; ---------------------------------------------------------------------------

loc_F453:				; CODE XREF: sub_F420+2Dj
		pshx
		ldx	#$FEF9
		jsr	$34,x
		jsr	DivDby16
		adda	#8
		pulx
		jsr	0,x
		cmpa	#9
		bls	loc_F468
		ldd	#$9FF

loc_F468:				; CODE XREF: sub_F420+43j
		std	word_D3
		subd	#$90 ; ''
		jsr	sub_F5E3
		stab	unk_C3
		clra
		subb	word_C1
		sbca	#0
		lsld
		lsld
		lsld
		addd	word_C1
		std	word_C1
		ldd	word_C4
		ldx	word_62
		stx	word_C4
		subd	word_D3
		bcc	loc_F48A
		clra
		clrb

loc_F48A:				; CODE XREF: sub_F420+66j
		jsr	sub_F5E2
		cmpb	#6
		bcs	loc_F494
		clra
		staa	unk_87

loc_F494:				; CODE XREF: sub_F420+6Fj
		stab	unk_D5
		ldd	word_D3
		std	word_62
		lsrd
		lsrd
		lsrd
		std	word_D3
		jsr	sub_F5E3
		stab	unk_65
		ldx	word_D3
		ldd	word_D3
		cpx	#$C0 ; 'À'
		bls	loc_F4B0
		lsrd
		addb	#$60 ; '`'

loc_F4B0:				; CODE XREF: sub_F420+8Bj
		tba
		suba	#$20 ; ' '
		jsr	sub_FB43
		subb	Port1DDR
		staa	unk_64
		clra
		staa	unk_D0
		ldd	#$140
		bita	unk_4D
		bne	loc_F4DD
		ldaa	unk_65
		jsr	sub_FB46
		suba	$14,x
		bcs	loc_F4E2
		ldaa	Port3		; test MSB of port3 (G+	related)
		bpl	loc_F4D6	; branch if G+ related is clear
		ldaa	#$40 ; '@'
		jsr	sub_F119

loc_F4D6:				; CODE XREF: sub_F420+AFj
		ldx	#$FFD2
		jsr	$11,x
		bra	loc_F4EB
; ---------------------------------------------------------------------------

loc_F4DD:				; CODE XREF: sub_F420+A2j
		ldaa	#$DF ; 'ß'
		jsr	sub_F11A

loc_F4E2:				; CODE XREF: sub_F420+ABj
		sei
		orab	unk_4E
		stab	unk_4E
		clra
		staa	unk_D1
		cli

loc_F4EB:				; CODE XREF: sub_F420+BBj
		ldx	#$E6 ; 'æ'
		ldd	#$5002
		cmpa	byte_57
		bhi	loc_F506
		cmpb	unk_60
		bhi	loc_F506
		ldaa	unk_65
		cmpa	#$50 ; 'P'
		bcc	loc_F506
		cmpa	#$40 ; '@'
		bcc	loc_F508
		ldx	#$1CC

loc_F506:				; CODE XREF: sub_F420+D3j sub_F420+D7j ...
		stx	word_6E

loc_F508:				; CODE XREF: sub_F420+E1j
		ldab	unk_9E
		ldaa	unk_4C
		bmi	loc_F510
		addb	#$10

loc_F510:				; CODE XREF: sub_F420+ECj
		anda	#$3F ; '?'
		cmpb	unk_65
		bhi	loc_F51E
		ldab	unk_95
		bpl	loc_F51E
		oraa	#$C0 ; 'À'
		bra	loc_F531
; ---------------------------------------------------------------------------

loc_F51E:				; CODE XREF: sub_F420+F4j sub_F420+F8j
		ldab	unk_4C
		bpl	loc_F531
		psha
		ldaa	unk_D5
		cmpa	#6
		bhi	loc_F530
		ldd	#$139
		stab	unk_87
		bsr	loc_F534

loc_F530:				; CODE XREF: sub_F420+107j
		pula

loc_F531:				; CODE XREF: sub_F420+FCj
					; sub_F420+100j
		staa	unk_4C
		rts
; End of function sub_F420

; ---------------------------------------------------------------------------

loc_F534:				; CODE XREF: sub_FD41-C2EP
					; sub_F420+10Ep
		jsr	sub_F119
		ldaa	byte_57
		cmpa	#$48 ; 'H'
		bhi	loc_F542
		ldaa	#$DF ; 'ß'
		jsr	sub_F11A

loc_F542:				; CODE XREF: ROM:F53Bj
		ldd	#$2004
		bita	unk_4E
		beq	loc_F54E
		ldab	unk_69
		ble	loc_F550
		decb

loc_F54E:				; CODE XREF: ROM:F547j
		stab	unk_69

loc_F550:				; CODE XREF: ROM:F54Bj
		ldd	word_6A
		jsr	sub_F6FC
		std	word_7F
		ldaa	unk_4D
		rora
		bcc	loc_F571
		ldd	#$FDC
		cmpb	byte_57
		bls	loc_F568
		ldx	#$FEB6
		jsr	$65,x

loc_F568:				; CODE XREF: ROM:F561j
		std	unk_84
		ldx	#$FEC4
		jsr	$57,x
		std	unk_8C

loc_F571:				; CODE XREF: ROM:F55Aj
		ldaa	unk_D2
		cmpa	#2
		bhi	loc_F57E+1
		bsr	sub_F5CE
		ldx	#$FECB
		jsr	$50,x

loc_F57E:				; CODE XREF: ROM:F575j
		brn	sub_F5CE+1
		staa	unk_86
		ldd	word_62
		ldx	#$FE9C
		jsr	$91,x
		jsr	sub_FC7C
		adda	#8
		std	word_6C
		ldd	#$800
		jsr	sub_F6FC
		std	unk_72
		ldx	#$FED2
		jsr	$49,x
		psha
		jsr	sub_F6E3
		std	unk_70
		ldd	#$6666
		cmpb	word_42
		bls	loc_F5AC
		ldaa	#$B3 ; '³'

loc_F5AC:				; CODE XREF: ROM:F5A8j
		cmpa	unk_5D
		bhi	loc_F5BB
		ldd	#$26F0
		cmpb	unk_65
		bhi	loc_F5C3
		ldaa	#$33 ; '3'
		bra	loc_F5C3
; ---------------------------------------------------------------------------

loc_F5BB:				; CODE XREF: ROM:F5AEj
		ldd	#$19C8
		cmpb	unk_92
		bls	loc_F5C3
		clra

loc_F5C3:				; CODE XREF: ROM:F5B5j	ROM:F5B9j ...
		staa	unk_88
		ldaa	unk_4C
		bpl	loc_F5EB
		bsr	sub_F5CE
		jmp	loc_F673

; =============== S U B	R O U T	I N E =======================================


sub_F5CE:				; CODE XREF: ROM:F577p	ROM:F5C9p ...
		ldd	word_7F
		std	word_90
		std	word_8E
		clra
		staa	unk_89
		rts
; End of function sub_F5CE


; =============== S U B	R O U T	I N E =======================================


sub_F5D8:				; CODE XREF: sub_F5E3+4Ap
		bcs	loc_F5E8+1
		inx
		subd	#$80 ; '€'
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
		ldd	unk_84
		subd	#$14
		bcc	loc_F5F7

loc_F5F6:				; CODE XREF: sub_F5E3+Aj
		clra

loc_F5F7:				; CODE XREF: sub_F5E3+11j
		std	unk_84
		ldab	#$FA ; 'ú'
		addb	unk_87
		bcs	loc_F600
		clrb

loc_F600:				; CODE XREF: sub_F5E3+1Aj
		stab	unk_87
		ldd	word_90
		subd	word_7F
		bcs	loc_F61A
		deca
		bmi	loc_F61A
		bsr	sub_F5E0
		ldaa	#$CC ; 'Ì'
		mul
		ldab	#$B0 ; '°'
		cmpb	byte_57
		bhi	loc_F61A
		ldab	unk_88
		beq	loc_F61B

loc_F61A:				; CODE XREF: sub_F5E3+23j sub_F5E3+26j ...
		clra

loc_F61B:				; CODE XREF: sub_F5E3+35j
		staa	unk_89
		ldd	word_90
		addd	word_7F
		lsrd
		addd	word_90
		lsrd
		std	word_90
		ldx	word_8E
		ldd	word_7F
		subd	word_8E
		bsr	sub_F5D8
		pshb
		stx	word_8E
		ldx	#6
		ldaa	unk_60
		ldab	unk_4C
		cmpa	#$F
		bhi	loc_F641
		andb	#$F7 ; '÷'
		bra	loc_F647
; ---------------------------------------------------------------------------

loc_F641:				; CODE XREF: sub_F5E3+58j
		cmpa	#$13
		bcs	loc_F649
		orab	#8

loc_F647:				; CODE XREF: sub_F5E3+5Cj
		stab	unk_4C

loc_F649:				; CODE XREF: sub_F5E3:loc_F5E8j
					; sub_F5E3+60j
		bitb	#8
		bne	loc_F654
		ldaa	byte_57
		cmpa	#$60 ; '`'
		bcc	loc_F654
		dex

loc_F654:				; CODE XREF: sub_F5E3+68j sub_F5E3+6Ej
		ldd	word_7F

loc_F656:				; CODE XREF: sub_F5E3+77j
		addd	word_8E
		lsrd
		dex
		bne	loc_F656
		std	word_8E
		ldd	unk_8C
		subd	#$10
		bcc	loc_F666
		clra

loc_F666:				; CODE XREF: sub_F5E3+80j
		std	unk_8C
		adda	unk_8B
		ldab	unk_9E
		cmpb	unk_65
		bhi	loc_F671
		lsra

loc_F671:				; CODE XREF: sub_F5E3+8Bj
		pulb
		mul

loc_F673:				; CODE XREF: ROM:F5CBJ
		tab
		ldaa	unk_4C
		bita	#4
		beq	loc_F67B
		clrb

loc_F67B:				; CODE XREF: sub_F5E3+95j
		clra
		lsld
		lsld
		subb	unk_87
		sbca	#$FF
		pshb
		psha
		pulx
		ldab	unk_84
		abx
		abx
		ldab	unk_86
		abx
		abx
		ldd	unk_88
		abx
		tab
		abx
		pshx
		pula
		inca
		staa	word_D3
		ldaa	unk_83
		psha
		bsr	loc_F6E6+1
		addd	unk_72
		std	unk_72
		bsr	sub_F70A
		lsrd
		lsrd
		std	unk_72
		bsr	sub_F6E9

loc_F6A8:				; CODE XREF: sub_F5E3+CCj
		dec	word_D3
		beq	loc_F6B1
		addd	unk_72
		bra	loc_F6A8
; ---------------------------------------------------------------------------

loc_F6B1:				; CODE XREF: sub_F5E3+C8j
		std	unk_72
		ldx	#$FF9D
		jsr	$46,x
		jsr	sub_F7BE
; End of function sub_F5E3


; =============== S U B	R O U T	I N E =======================================


sub_F6BB:				; CODE XREF: sub_F96A+C4P
		ldd	#$801
		bita	unk_4D
		bne	sub_F6D4
		cmpb	unk_9C
		ldd	unk_72
		bcs	loc_F6D8
		ldab	unk_8B
		addb	unk_8C
		pshb
		bsr	sub_F6E3
		lsld
		addd	unk_72
		bra	loc_F6D8
; End of function sub_F6BB


; =============== S U B	R O U T	I N E =======================================


sub_F6D4:				; CODE XREF: sub_F6BB+5j sub_F96A+8AP
		ldaa	unk_76
		bsr	sub_F700

loc_F6D8:				; CODE XREF: sub_F6BB+Bj sub_F6BB+17j
		subd	unk_70
		bcs	loc_F6DE
		clra
		clrb

loc_F6DE:				; CODE XREF: sub_F6D4+6j
		addd	unk_70
		std	unk_74
		rts
; End of function sub_F6D4


; =============== S U B	R O U T	I N E =======================================


sub_F6E3:				; CODE XREF: ROM:F59EP	sub_F6BB+12p ...
		ldd	unk_72
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
		std	unk_72
		ldaa	unk_8A
; End of function sub_F6FC


; =============== S U B	R O U T	I N E =======================================


sub_F700:				; CODE XREF: sub_F6D4+2p sub_F70A+45j
		psha
		bsr	sub_F6E3
		addd	unk_72
		lsrd
		addd	unk_72
		lsrd
		rts
; End of function sub_F700


; =============== S U B	R O U T	I N E =======================================


sub_F70A:				; CODE XREF: sub_F5E3+BDp
		ldaa	unk_65
		ldab	#$CA ; 'Ê'
		mul
		psha
		ldd	word_7F
		bsr	sub_F6E9
		jsr	sub_F5E1
		stab	unk_92
		ldab	word_44
		bpl	loc_F71E
		negb

loc_F71E:				; CODE XREF: sub_F70A+11j
		ldaa	#8
		mul
		ldx	#9
		clc

loc_F725:				; CODE XREF: sub_F70A+2Aj
		bcs	loc_F72E
		cmpa	unk_92
		bcc	loc_F72E
		clc
		bra	loc_F731
; ---------------------------------------------------------------------------

loc_F72E:				; CODE XREF: sub_F70A:loc_F725j
					; sub_F70A+1Fj
		suba	unk_92
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
		ldaa	word_44
		bpl	loc_F741
		negb

loc_F741:				; CODE XREF: sub_F70A+34j
		addb	#$80 ; '€'
		tba
		jsr	sub_FB46
		adca	unk_5C
		adda	word_42
		suba	#$80 ; '€'
		staa	unk_D6
		bra	sub_F700
; End of function sub_F70A


; =============== S U B	R O U T	I N E =======================================


sub_F751:				; CODE XREF: sub_F96A+75P
		ldaa	word_42
		ldab	word_40		; if we	call this the start of user ram, it's exactly 192 bytes (inclusive)
		ldx	unk_95
		bpl	loc_F768
		cba
		rora
		eora	unk_93
		bmi	loc_F766
		ldaa	word_42
		aba
		rora
		aba
		rora
		tab

loc_F766:				; CODE XREF: sub_F751+Cj
		ldaa	word_42

loc_F768:				; CODE XREF: sub_F751+6j
		pshb
		adda	unk_93
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
		fcb $96	; –
		fcb $95	; •
		fcb $2A	; *
		fcb $1A
		fcb $96	; –
		fcb $5C	; \
		fcb $BD	; ½
		fcb $FB	; û
		fcb $46	; F
		fcb $8A	; Š
		fcb $76	; v
		fcb $25	; %
		fcb $11
		fcb $96	; –
		fcb $44	; D
		fcb $9B	; ›
		fcb $93	; “
		fcb $29	; )
		fcb  $B
		fcb $9B	; ›
		fcb $93	; “
		fcb $29	; )
		fcb   7
		fcb $16
		fcb $53	; S
		fcb $DD	; Ý
		fcb $44	; D
		fcb $7C	; |
		fcb   0
		fcb $5C	; \
		fcb $32	; 2
		fcb $16
		fcb $53	; S
		fcb $DD	; Ý
		fcb $42	; B
		fcb $32	; 2
		fcb $16
		fcb $53	; S
		fcb $DD	; Ý
		fcb $40	; @
		fcb $39	; 9
		fcb $19			; data (f7f1 entry)
		fcb $96	; –
		fcb   7
		fcb $AD	; ­
		fcb   0			; word data
		fcb $EB	; ë
		fcb   0			; word data
		fcb $4E	; N
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_F7BE

loc_F7AA:				; CODE XREF: sub_F7BE+8j
		orab	#4
		ldaa	#$71 ; 'q'

loc_F7AE:				; CODE XREF: sub_F751+26j
		staa	unk_9B

loc_F7B0:				; CODE XREF: sub_F7BE+Cj sub_F7BE+10j	...
		clr	unk_CE

loc_F7B3:				; CODE XREF: sub_F7BE+18j
		andb	#$F7 ; '÷'
		stab	unk_4D
		ldd	#$8000
		stab	unk_94
		bra	loc_F811
; END OF FUNCTION CHUNK	FOR sub_F7BE

; =============== S U B	R O U T	I N E =======================================


sub_F7BE:				; CODE XREF: sub_F5E3+D5P

; FUNCTION CHUNK AT F7AA SIZE 00000014 BYTES

		ldab	unk_4D
		bpl	loc_F7C4
		andb	#$FB ; 'û'

loc_F7C4:				; CODE XREF: sub_F7BE+2j
		ldx	unk_83
		bne	loc_F7AA
		ldx	unk_87
		bne	loc_F7B0
		ldaa	unk_4C
		bmi	loc_F7B0
		ldaa	unk_97
		bmi	loc_F7B0
		bitb	#4
		bne	loc_F7B3
		orab	#8
		stab	unk_4D
		ldd	#$6C6F
		ldx	#$400
		cpx	word_7F
		bhi	loc_F7E7
		tba

loc_F7E7:				; CODE XREF: sub_F7BE+26j
		ldx	#$FF9C
		jsr	8,x
		staa	unk_9B
		ldx	#$F7A6
		ldab	Port4		; an entry point
		bitb	#4		; p4-2 is IDL, active high
		beq	loc_F7F9
		inx
		inx			; x would then be F7A8,	different for other entry points

loc_F7F9:				; CODE XREF: sub_F7BE+37j
		ldaa	unk_9A
		asla
		ldd	unk_76
		bcc	loc_F802+1
		subd	0,x

loc_F802:				; CODE XREF: sub_F7BE+40j
		cpx	#$E300
		pshb
		ldab	unk_9D
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
		std	unk_76
		rts
; End of function sub_F7BE

; ---------------------------------------------------------------------------

loc_F814:				; CODE XREF: sub_FD41-C39P
		ldd	#$11C
		anda	unk_CD
		bne	loc_F829
		ldaa	unk_C6
		bpl	loc_F829
		ldaa	unk_95
		bpl	loc_F859
		ldaa	Port4
		anda	#$20 ; ' '      ; p4-5 is T input to pcm, test mode is active low
		bne	loc_F82C

loc_F829:				; CODE XREF: ROM:F819j	ROM:F81Dj
		jmp	loc_F8EE
; ---------------------------------------------------------------------------

loc_F82C:				; CODE XREF: ROM:F827j
		ldaa	word_C1
		suba	unk_C3
		jsr	sub_FB43
		sba
; ---------------------------------------------------------------------------
		fcb   0
		fcb $C6	; Æ
		fcb $88	; ˆ
		fcb $3D	; =
		fcb   5
		fcb   5
		fcb $D6	; Ö
		fcb   7
		fcb $C4	; Ä
		fcb   8
		fcb $27	; '
		fcb   7
		fcb $BD	; ½
		fcb $FB	; û
		fcb $46	; F
		fcb  $E
		fcb   0
		fcb $C6	; Æ
		fcb  $E
		fcb $97	; —
		fcb $A6	; ¦
		fcb $86	; †
		fcb $2D	; -
		fcb $1B
		fcb $5F	; _
		fcb $D7	; ×
		fcb $C7	; Ç
		fcb $D6	; Ö
		fcb $42	; B
		fcb $C1	; Á
		fcb $42	; B
		fcb $24	; $
		fcb   2
		fcb $8B	; ‹
		fcb  $E
		fcb $20
		fcb $54	; T
; ---------------------------------------------------------------------------

loc_F859:				; CODE XREF: ROM:F821j
		clr	unk_A6
		ldx	#$FFC8
		jsr	$1B,x
		cmpa	#5
		bcc	loc_F86C
		ldab	#$11
		addb	unk_A4
		jmp	loc_F8F0
; ---------------------------------------------------------------------------

loc_F86C:				; CODE XREF: ROM:F863j
		ldd	word_7F
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
		ldaa	unk_64
		pshx
		ldab	#$E
		abx
		jsr	loc_FF28	; another entry	point
		pulx
		psha
		ldaa	unk_64
		jsr	loc_FF28	; another entry	point
		psha
		tsx
		ldd	1,x
		suba	0,x
		jsr	sub_FF35
		ins
		pulx
		ldab	unk_99		; TVIS related
		bmi	loc_F8A5
		adda	#8

loc_F8A5:				; CODE XREF: ROM:F8A1j
		ldx	#$FF94
		jsr	$10,x
		bcc	loc_F8AD
		clra

loc_F8AD:				; CODE XREF: ROM:F8AAj
		staa	unk_A3
		ldaa	byte_57
		jsr	sub_FB46
		eora	ADCRxData
		bcs	loc_F8CD+1
		ldx	#$5AA
		ldaa	unk_A5
		beq	loc_F8C2
		ldx	#$60E

loc_F8C2:				; CODE XREF: ROM:F8BDj
		cpx	word_7F
		bcs	loc_F8CD+1
		ldaa	unk_95
		bmi	loc_F8CD+1
		ldd	#$FFD6

loc_F8CD:				; CODE XREF: ROM:F8B6j	ROM:F8C4j ...
		cpx	#$4F5F
		stab	unk_A5
		addb	unk_A4
		adca	#0
		addb	unk_A3
		adca	#0
		addb	unk_A6
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
		stab	unk_D8

loc_F8F0:				; CODE XREF: ROM:F869J
		addb	#1
		pshb
		ldd	word_66
		jsr	DivDby16
		std	word_D3
		ldd	word_66
		jsr	sub_F6E9
		lsrd
		inca
		subd	word_D3
		bcs	loc_F90D
		subd	word_A7
		bcs	loc_F90B
		clra
		clrb

loc_F90B:				; CODE XREF: ROM:F907j
		addd	word_A7

loc_F90D:				; CODE XREF: ROM:F903j
		std	word_A1
		ldd	word_D3
		addd	byte_BF
		std	word_BB
		lsrd
		std	word_D3
		ldd	word_66
		subd	word_B5
		subd	#$64 ; 'd'
		subd	word_D3
		bcs	loc_F925
		clra
		clrb

loc_F925:				; CODE XREF: ROM:F921j
		addd	word_D3
		std	unk_B3
		ldaa	#1
		ldab	unk_C6
		bmi	loc_F936
		sei
		oraa	TmrCntStat
		staa	TmrCntStat
		bra	loc_F950
; ---------------------------------------------------------------------------

loc_F936:				; CODE XREF: ROM:F92Dj
		bsr	OutCmpSub1	; called from output compare ISR
		std	word_D3
		ldd	#$C02
		eora	unk_4E
		bita	#$E
		bne	loc_F950
		bitb	Port2
		beq	loc_F950
		ldd	word_D3
		std	OutCmp
		ldx	TmrCntStat
		jsr	OutCmpSub2	; called from output compare ISR

loc_F950:				; CODE XREF: ROM:F934j	ROM:F941j ...
		cli
		rts

; =============== S U B	R O U T	I N E =======================================

; called from output compare ISR

OutCmpSub1:				; CODE XREF: ROM:F3A9P	ROM:loc_F936p
		ldd	word_66
		subd	word_A1
		subd	word_BB
		bcc	loc_F95C
		clra
		clrb

loc_F95C:				; CODE XREF: OutCmpSub1+6j
		addd	word_B9
		sei
		subd	word_BD
		cmpa	#$E8 ; 'è'
		bcs	loc_F967
		clra
		clrb

loc_F967:				; CODE XREF: OutCmpSub1+11j
		addd	word_BD
		rts
; End of function OutCmpSub1


; =============== S U B	R O U T	I N E =======================================


sub_F96A:				; CODE XREF: sub_FD41:loc_F0FAP
		ldx	#$FF69
		jsr	$7A,x
		ldd	#$77F
		anda	unk_5F
		andb	Port1		; anding with 7f=0b0111111
		cmpa	unk_D7
		bcs	loc_F97C	; has potential	to toggle bit 7	- /VF ouput generation
		orab	#$80 ; '€'

loc_F97C:				; CODE XREF: sub_F96A+Ej
		stab	Port1		; has potential	to toggle bit 7	- /VF ouput generation
		ldaa	unk_59
		cmpa	#$17
		ldaa	unk_9A
		bcs	loc_F98E
		inca
		jsr	sub_FB46
		cmpa	#$67 ; 'g'
		bra	loc_F995
; ---------------------------------------------------------------------------

loc_F98E:				; CODE XREF: sub_F96A+1Aj
		deca
		cmpa	unk_9B
		bcc	loc_F995
		ldaa	unk_9B

loc_F995:				; CODE XREF: sub_F96A+22j sub_F96A+27j
		staa	unk_9A
		eora	unk_4D
		anda	#$80 ; '€'
		beq	loc_F9F7
		eora	unk_4D
		staa	unk_4D
		bita	#8
		beq	loc_F9F7
		ldab	#1
		ldaa	unk_76
		adda	unk_93
		rora
		bmi	loc_F9AF
		negb

loc_F9AF:				; CODE XREF: sub_F96A+42j
		stab	unk_93
		ldab	unk_95
		bmi	loc_F9BF
		ldab	unk_5C
		cba
		decb
		bcs	loc_F9BD
		addb	#2

loc_F9BD:				; CODE XREF: sub_F96A+4Fj
		stab	unk_5C

loc_F9BF:				; CODE XREF: sub_F96A+49j
		ldd	#$B020
		cmpa	byte_57
		bhi	loc_F9E2
		ldx	word_7F
		cpx	#$190
		bitb	Port4		; like ANDB Port4
		bls	loc_F9E2
		ldaa	unk_CD
		bita	#1
		bne	loc_F9E2
		ldaa	unk_96
		bmi	loc_F9E2
		ldaa	unk_94
		cmpa	#5
		bcs	loc_F9E5
		jsr	sub_F751

loc_F9E2:				; CODE XREF: sub_F96A+5Aj sub_F96A+63j ...
		clra
		staa	unk_94

loc_F9E5:				; CODE XREF: sub_F96A+73j
		inc	unk_94
		ldaa	unk_76
		staa	unk_93
		ldx	#$F7A2
		jsr	$4F,x
		clra
		staa	unk_CE
		jsr	sub_F6D4

loc_F9F7:				; CODE XREF: sub_F96A+31j sub_F96A+39j
		ldaa	unk_95
		ldab	Port4		; p4-2 is IDL input, active low
		andb	#4
		beq	loc_FA0E
		tsta
		bmi	loc_FA05
		clr	unk_94

loc_FA05:				; CODE XREF: sub_F96A+96j
		ldab	unk_5D
		bmi	loc_FA3B
		inca
		bne	loc_FA39
		bra	loc_FA3B
; ---------------------------------------------------------------------------

loc_FA0E:				; CODE XREF: sub_F96A+93j
		stab	unk_87
		tsta
		bmi	loc_FA19
		cmpa	#$1C
		bcs	loc_FA31
		bra	loc_FA26
; ---------------------------------------------------------------------------

loc_FA19:				; CODE XREF: sub_F96A+A7j
		ldaa	unk_65
		cmpa	#$64 ; 'd'
		bcc	loc_FA26
		ldd	#$7D0
		jsr	sub_F121
		cli

loc_FA26:				; CODE XREF: sub_F96A+ADj sub_F96A+B3j
		ldaa	unk_4D
		anda	#1
		bne	loc_FA31
		staa	unk_9C
		jsr	sub_F6BB

loc_FA31:				; CODE XREF: sub_F96A+ABj sub_F96A+C0j
		ldab	unk_4C
		andb	#$3F ; '?'
		stab	unk_4C
		ldaa	#3

loc_FA39:				; CODE XREF: sub_F96A+A0j
		staa	unk_95

loc_FA3B:				; CODE XREF: sub_F96A+9Dj sub_F96A+A2j
		ldd	#$10FE
		anda	Port4		; p4-4 is start	signal
		beq	loc_FA60
		andb	unk_4C
		stab	unk_4C
		ldaa	unk_4B
		ldab	unk_C6
		bmi	loc_FA62
		inca
		beq	loc_FA75
		staa	unk_4B
		cmpa	#$19
		bcs	loc_FA62
		bhi	loc_FA75
		ldd	#$2328
		jsr	sub_F129
		cli
		bra	loc_FA75
; ---------------------------------------------------------------------------

loc_FA60:				; CODE XREF: sub_F96A+D6j
		staa	unk_4B

loc_FA62:				; CODE XREF: sub_F96A+E0j sub_F96A+E9j
		ldab	#$4B ; 'K'
		cmpb	unk_68
		bcc	loc_FA83
		ldab	#$12
		stab	unk_65
		tsta
		bne	loc_FA75
		ldaa	#1
		oraa	unk_4C
		staa	unk_4C

loc_FA75:				; CODE XREF: sub_F96A+E3j sub_F96A+EBj ...
		ldd	#$405
		orab	unk_4D
		stab	unk_4D
		staa	unk_C6
		staa	unk_69
		clra
		staa	unk_CE

loc_FA83:				; CODE XREF: sub_F96A+FCj
		ldaa	unk_C6
		bpl	loc_FA92
		ldd	#$14FE
		cmpa	unk_65
		bhi	loc_FA92
		andb	unk_4D
		stab	unk_4D

loc_FA92:				; CODE XREF: sub_F96A+11Bj
					; sub_F96A+122j
		ldab	unk_4D
		bitb	#1
		beq	sub_FA9B
		clr	unk_D2
; End of function sub_F96A


; =============== S U B	R O U T	I N E =======================================


sub_FA9B:				; CODE XREF: sub_FD41-CEFP
					; sub_F96A+12Cj
		ldab	unk_53		; controls a jump table	at fa9b, also deselects	ADC with LSB
		andb	#6
		ldx	#$FD39
		abx			; x can	only be	$FD39, $FD3B, $FD3D or $FD3F
		ldx	0,x
		jsr	0,x
; End of function sub_FA9B


loc_FAA7:				; CODE XREF: sub_FD41-C9EP
		ldx	#$24 ; '$'

loc_FAAA:				; CODE XREF: ROM:FAB1j
		dex
		beq	sub_FB07	; re-inits serial port,	selects	adc and	pumps AccB out the tx port
		ldd	unk_4F
		anda	#$80 ; '€'
		beq	loc_FAAA
		coma
		sei
		anda	unk_4F
		staa	unk_4F
		cli
		pshb
		bsr	sub_FB2F
		ldx	#$54 ; 'T'
		abx
		bsr	sub_FB07	; re-inits serial port,	selects	adc and	pumps AccB out the tx port
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
		fcb $96	; –
		fcb $57	; W
		fcb $36	; 6
		fcb $86	; †
		fcb   4
		fcb $BD	; ½
		fcb $FD	; ý
		fcb   2
		fcb $32	; 2
		fcb $24	; $
		fcb $1D
		fcb $86	; †
		fcb $C0	; À
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
		fcb $96	; –
		fcb $56	; V
		fcb $36	; 6
		fcb $86	; †
		fcb $40	; @
		fcb $BD	; ½
		fcb $FD	; ý
		fcb   2
		fcb $32	; 2
		fcb $24	; $
		fcb   2
		fcb $86	; †
		fcb $79	; y
		fcb $38	; 8
; ---------------------------------------------------------------------------

loc_FB04:				; CODE XREF: ROM:FAEDj
		staa	0,x
		rts

; =============== S U B	R O U T	I N E =======================================

; re-inits serial port,	selects	adc and	pumps AccB out the tx port

sub_FB07:				; CODE XREF: ROM:FAABj	ROM:FAC1p
		ldaa	Port3
		bita	#$40 ; '@'
		beq	loc_FB15	; test to see if we're talking to the ADC (p3-6 low)
		pshx

loc_FB0E:				; CODE XREF: sub_FB07+Bj
		ldx	Timer		; load timer
		cpx	EndTxByteTime	; word_51 is 320us greater than	the termination	of the last serial interrupt
		bmi	loc_FB0E	; loop while time haas not expired yet,	while presumably tx is busy
		pulx

loc_FB15:				; CODE XREF: sub_FB07+4j
		inc	unk_53		; controls a jump table	at fa9b, also deselects	ADC with LSB

loc_FB18:				; CODE XREF: ROM:F3E4P
		bsr	sub_FB2F	; called from serial interrupt when receive error was detected
		ldaa	#$C		; external clock, 62500	baud (not that thats relevant i	guess)
		staa	UARTRateMode
		ldaa	#$1A		; Rx int enable, rx enable, tx enable
		staa	TxRxCntStat
		ldaa	TxRxCntStat	; read from reg	to clear any pending error bits
		ldaa	#$BF ; '¿'
		sei
		anda	Port3		; safely clear p3-6 without clobbering other pins
		staa	Port3		; safely clear p3-6 without clobbering other pins
		stab	TxReg
		cli
		rts
; End of function sub_FB07


; =============== S U B	R O U T	I N E =======================================


sub_FB2F:				; CODE XREF: ROM:FABBp
					; sub_FB07:loc_FB18p
		ldab	unk_53		; controls a jump table	at fa9b, also deselects	ADC with LSB
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


sub_FB43:				; CODE XREF: sub_F420+93P ROM:F830P ...
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
		ldaa	unk_54
		bsr	sub_FB46
		orab	$536
		ldaa	#$20 ; ' '
		jsr	sub_FD02
		pula
		bcc	loc_FB6E
		ldd	#$FF73
		stab	unk_5D
		bra	loc_FBD4
; ---------------------------------------------------------------------------

loc_FB6E:				; CODE XREF: ROM:FB65j
		ldab	unk_CC
		bitb	#$20 ; ' '
		bne	loc_FBD2
		ldab	unk_95
		bmi	loc_FB7C
		ldaa	unk_5B
		bra	loc_FB8F
; ---------------------------------------------------------------------------

loc_FB7C:				; CODE XREF: ROM:FB76j
		adda	unk_5B
		rora
		adda	unk_5B
		rora
		cmpb	#$83 ; 'ƒ'
		bhi	loc_FB89
		inc	unk_5B

loc_FB89:				; CODE XREF: ROM:FB84j
		ldab	unk_5B
		cba
		bcs	loc_FB8F
		tba

loc_FB8F:				; CODE XREF: ROM:FB7Aj	ROM:FB8Cj
		bsr	sub_FB46
		bvs	loc_FB97+1
		bcc	loc_FB97
		ldaa	#$26 ; '&'

loc_FB97:				; CODE XREF: ROM:FB93j	ROM:FB91j
		staa	unk_5B
		ldaa	unk_54
		suba	unk_5B
		bcc	loc_FBA0
		clra

loc_FBA0:				; CODE XREF: ROM:FB9Dj
		staa	unk_5D
		ldaa	unk_95
		bmi	loc_FBD2
		ldaa	unk_5D
		suba	unk_5A
		bcs	loc_FBD2
		cmpa	#4
		bcs	loc_FBD2
		bsr	sub_FB43
; ---------------------------------------------------------------------------
		fcb $1C
		fcb   0
		fcb $CE	; Î
		fcb $FE	; þ
		fcb $A7	; §
		fcb $5F	; _
		fcb $AD	; ­
		fcb $84	; „
		fcb $D6	; Ö
		fcb $65	; e
		fcb $C1	; Á
		fcb $50	; P
		fcb $25	; %
		fcb   1
		fcb $44	; D
		fcb $36	; 6
		fcb $DC	; Ü
		fcb $6C	; l
		fcb $93	; “
		fcb $6A	; j
		fcb $23	; #
		fcb   9
		fcb $BD	; ½
		fcb $F6	; ö
		fcb $E9	; é
		fcb   5
		fcb $BD	; ½
		fcb $F1	; ñ
		fcb $21	; !
		fcb  $E
		fcb $21	; !
		fcb $31	; 1
; ---------------------------------------------------------------------------

loc_FBD2:				; CODE XREF: ROM:FB72j	ROM:FBA4j ...
		ldaa	unk_5D

loc_FBD4:				; CODE XREF: ROM:FB6Cj
		staa	unk_5A
		rts
; ---------------------------------------------------------------------------
		ldx	#$FEE2
		jsr	$39,x
		ldab	unk_D2
		cmpb	#$4C ; 'L'
		bhi	loc_FBE4	; p4-3 is ac input, active high
		adda	#$10

loc_FBE4:				; CODE XREF: ROM:FBE0j
		ldab	Port4		; p4-3 is ac input, active high
		bitb	#8
		beq	loc_FBED+2	; illegal address
		jsr	sub_FB46

loc_FBED:				; CODE XREF: ROM:FBE8j
		stx	$3C97		; illegal address
		lds	unk_96
		rorb
		ldx	#$FED9
		jsr	$4C,x
		staa	unk_8A
		ldx	#$FF0A
		jsr	$11,x
		ldab	byte_57
		subb	#$DA ; 'Ú'
		bcs	loc_FC1E
		tba
		jsr	sub_FB46
		sei
; ---------------------------------------------------------------------------
		fcb   0
		fcb $CE	; Î
		fcb $FF
		fcb $11
		fcb $5F	; _
		fcb $AD	; ­
		fcb $19
		fcb $D6	; Ö
		fcb $95	; •
		fcb $2B	; +
		fcb   7
		fcb $DE	; Þ
		fcb $7F	; 
		fcb $8C	; Œ
		fcb   9
		fcb $C4	; Ä
		fcb $24	; $
		fcb   2
		fcb $86	; †
		fcb $1C
; ---------------------------------------------------------------------------

loc_FC1E:				; CODE XREF: ROM:FC03j
		staa	unk_A4
		ldaa	unk_4A
		cmpa	#$5A ; 'Z'
		bne	loc_FC33
		ldx	#$C

loc_FC29:				; CODE XREF: ROM:FC31j
		dex
		dex
		beq	loc_FC47
		ldd	$3E,x
		aba
		inca
		beq	loc_FC29

loc_FC33:				; CODE XREF: ROM:FC24j
		ldx	#$807F
		stx	word_42
		stx	word_40		; if we	call this the start of user ram, it's exactly 192 bytes (inclusive)
		ldx	#$FF
		stx	word_46
		stx	word_48
		stx	word_44
		ldaa	#$5A ; 'Z'
		staa	unk_4A

loc_FC47:				; CODE XREF: ROM:FC2Bj
		ldab	unk_65
		ldaa	Port1		; interested in	 bit 6 /TVIS
		anda	#$BF ; '¿'
		cmpb	#$9E ; 'ž'
		bcs	loc_FC57	; has toggles bit 6 - /TVIS
		cmpb	#$AE ; '®'
		bcs	loc_FC59
		oraa	#$40 ; '@'

loc_FC57:				; CODE XREF: ROM:FC4Fj
		staa	Port1		; has toggles bit 6 - /TVIS

loc_FC59:				; CODE XREF: ROM:FC53j
		ldaa	unk_99		; TVIS related
		ldab	Port1		; interested in	bit 6 /TVIS
		aslb
		bmi	loc_FC67
		deca
		bpl	loc_FC6C
		ldaa	#$F4 ; 'ô'
		bra	loc_FC6C
; ---------------------------------------------------------------------------

loc_FC67:				; CODE XREF: ROM:FC5Ej
		inca
		bmi	loc_FC6C
		ldaa	#2

loc_FC6C:				; CODE XREF: ROM:FC61j	ROM:FC65j ...
		staa	unk_99		; TVIS related

; =============== S U B	R O U T	I N E =======================================


CPUModeTst:				; CODE XREF: sub_FD41-D1CP
					; sub_FD41:loc_FE48P ...
		ldd	#$E004
		anda	Port2		; interested in	mode bits
		cmpa	#$E0 ; 'à'
		bne	locret_FC7B	; branch if not	mode7 =	internal
		eorb	Port1		; toggle the watchdog
		stab	Port1		; toggle watchdog bit 2

locret_FC7B:				; CODE XREF: CPUModeTst+7j
		rts
; End of function CPUModeTst


; =============== S U B	R O U T	I N E =======================================


sub_FC7C:				; CODE XREF: ROM:F589P	ROM:FC99p
		lsrd
; End of function sub_FC7C


; =============== S U B	R O U T	I N E =======================================


DivDby16:				; CODE XREF: sub_F420+39P ROM:F8F5P
		lsrd
		lsrd
		lsrd
		lsrd
		rts
; End of function DivDby16

; ---------------------------------------------------------------------------
		ldaa	Port3		; test level of	bit4 (input from mixed signal se056)
		anda	#$10
		suba	#$10		; bit4 status is hidden	in carry
		ldaa	#1
		jsr	sub_FD02
		ldaa	byte_55
		suba	#$53 ; 'S'
		bcc	loc_FC94
		clra

loc_FC94:				; CODE XREF: ROM:FC91j
		ldx	#$FEE9
		jsr	$3C,x
		bsr	sub_FC7C
		addd	#$1D0
		std	word_81		; injector related
		ldaa	byte_55
		ldx	#$FF12
		jsr	$13,x
		lsrd
		lsrd
		lsrd
		addd	byte_BF
		lsrd
		std	byte_BF
		ldab	byte_55
		clra
		lsld
		lsld
		addd	#$180
		std	word_B5
		bra	loc_FCD6
; ---------------------------------------------------------------------------
		ldaa	unk_95
		bpl	loc_FCC9
		ldab	word_42
		cmpb	#$42 ; 'B'
		bcc	loc_FCC9
		ldaa	Port1		; interested in	bit 5, output to port buffer
		bra	loc_FCD2	; bit 5	($20) goes to port buffer, is output
; ---------------------------------------------------------------------------

loc_FCC9:				; CODE XREF: ROM:FCBDj	ROM:FCC3j
		ldd	#$DF4C
		anda	Port1		; ignoring bit 4
		cmpb	unk_D2
		bcs	loc_FCD4	; can set bit 5	(buffer)

loc_FCD2:				; CODE XREF: ROM:FCC7j
		oraa	#$20 ; ' '      ; bit 5 ($20) goes to port buffer, is output

loc_FCD4:				; CODE XREF: ROM:FCD0j
		staa	Port1		; can set bit 5	(buffer)

loc_FCD6:				; CODE XREF: ROM:FCB9j
		ldx	#$FFD0
		jsr	$11,x
		ldab	Port4		; P4-4,	STA input to pcm, high when starting i think
		bitb	#$10		; test P4-4, STA input to pcm, high when starting i think
		bne	loc_FCEE
		ldab	unk_CF
		clr	unk_CF
		cmpb	#$F3 ; 'ó'
		bcs	loc_FCEE
		cmpa	#$F3 ; 'ó'
		bcc	loc_FCFE

loc_FCEE:				; CODE XREF: ROM:FCDFj	ROM:FCE8j
		cmpa	#$25 ; '%'
		bcs	loc_FCF8
		ldaa	unk_65
		cmpa	#$28 ; '('
		bcc	loc_FCFE

loc_FCF8:				; CODE XREF: ROM:FCF0j
		ldab	unk_D1
		cmpb	#9
		bcs	locret_FD2C

loc_FCFE:				; CODE XREF: ROM:FCECj	ROM:FCF6j
		ldaa	#$10
		bra	sub_FD11

; =============== S U B	R O U T	I N E =======================================


sub_FD02:				; CODE XREF: ROM:FB61P	ROM:FC8AP

; FUNCTION CHUNK AT FD2D SIZE 0000000C BYTES

		bcc	loc_FD2D
		bita	unk_CC
		bne	loc_FD0C
		oraa	unk_CC
		bra	loc_FD35
; ---------------------------------------------------------------------------

loc_FD0C:				; CODE XREF: sub_FD02+4j
		sec
		bita	#$1F
		beq	loc_FD1B
; End of function sub_FD02


; =============== S U B	R O U T	I N E =======================================


sub_FD11:				; CODE XREF: sub_FD41-C73P
					; sub_F420+23P	...
		ldab	Port4
		bitb	#$20 ; ' '      ; p4-5 is Timing check input. low is check mode
		beq	loc_FD1B
		ldab	#$DA ; 'Ú'
		stab	unk_C8

loc_FD1B:				; CODE XREF: sub_FD02+Dj sub_FD11+4j
		tab
		orab	unk_CD
		stab	unk_CD
		ldab	Port4		; p4-4 is ac input, active high
		bitb	#$10
		bne	locret_FD2C
		oraa	word_48
		tab
		comb
		std	word_48

locret_FD2C:				; CODE XREF: ROM:FCFCj	sub_FD11+13j
		rts
; End of function sub_FD11

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_FD02

loc_FD2D:				; CODE XREF: sub_FD02j
		coma
		tab
		andb	unk_CD
		stab	unk_CD
		anda	unk_CC

loc_FD35:				; CODE XREF: sub_FD02+8j
		staa	unk_CC
		clc
		rts
; END OF FUNCTION CHUNK	FOR sub_FD02
; ---------------------------------------------------------------------------
		fdb $FCBB		; jump table 4 evctors
		fdb $FB58
		fdb $FC82
		fdb $FBD7

; =============== S U B	R O U T	I N E =======================================


sub_FD41:				; CODE XREF: sub_FD41:loc_F0F7P

; FUNCTION CHUNK AT F000 SIZE 00000119 BYTES

		ldx	#$FEAF
		jsr	$6C,x
		staa	unk_83
		ldx	#$FEBD
		jsr	$5E,x
		staa	unk_8B
		ldd	#$B020
		cmpa	byte_57
		bhi	loc_FD5A
		cmpb	unk_92
		bls	loc_FD5D

loc_FD5A:				; CODE XREF: sub_FD41+13j
		clr	unk_CE

loc_FD5D:				; CODE XREF: sub_FD41+17j
		ldx	#$FFD3
		jsr	$10,x
		ldaa	unk_60
		bne	loc_FD79	; p4-5,	test input active low
		ldd	#$2001
		cmpa	unk_65
		bhi	loc_FD79	; p4-5,	test input active low
		ldaa	unk_C6
		bpl	loc_FD79	; p4-5,	test input active low
		andb	unk_4C
		orab	word_46
		tba
		comb
		std	word_46

loc_FD79:				; CODE XREF: sub_FD41+23j sub_FD41+2Aj ...
		ldab	Port4		; p4-5,	test input active low
		andb	#$20 ; ' '
		beq	loc_FDAE
		ldab	unk_4D
		andb	#8
		beq	loc_FD9D
		ldaa	unk_76
		adda	unk_D6
		rora
		ldab	#4
		cmpa	#$99 ; '™'
		sbcb	#0
		cmpa	#$87 ; '‡'
		sbcb	#0
		cmpa	#$79 ; 'y'
		sbcb	#0
		cmpa	#$67 ; 'g'
		sbcb	#0
		aslb

loc_FD9D:				; CODE XREF: sub_FD41+42j
		stab	unk_D7
		clra
		clrb
		std	word_C9
		coma
		staa	unk_CB
		ldab	unk_4D
		bitb	#1
		bne	loc_FE1B	; may set bit 3	- Idle up solenoid active high
		bra	loc_FDCE
; ---------------------------------------------------------------------------

loc_FDAE:				; CODE XREF: sub_FD41+3Cj
		ldaa	unk_95
		bmi	loc_FDB8	; p4-2 is IDL, p4-3 is AC, so idling and ac perhaps?
		ldaa	unk_9A
		bpl	loc_FDC6
		bra	loc_FDC4
; ---------------------------------------------------------------------------

loc_FDB8:				; CODE XREF: sub_FD41+6Fj
		ldaa	Port4		; p4-2 is IDL, p4-3 is AC, so idling and ac perhaps?
		eora	#4
		anda	#$C
		oraa	word_46
		oraa	word_48
		bne	loc_FDC6

loc_FDC4:				; CODE XREF: sub_FD41+75j
		ldab	#8

loc_FDC6:				; CODE XREF: sub_FD41+73j sub_FD41+81j
		stab	unk_D7
		ldab	unk_CB
		addb	#1
		beq	loc_FE00

loc_FDCE:				; CODE XREF: sub_FD41+6Bj
		ldaa	unk_C8
		inca
		bne	loc_FE0B
		bcs	loc_FE19
		subb	#$11
		bcc	loc_FE01
		ldd	word_C9
		bne	loc_FDF3
		staa	unk_CB
		ldaa	word_46
		anda	#1
		ldab	Port4		; another IDL+AC test
		eorb	#4
		bitb	#$C
		beq	loc_FDED
		oraa	#2

loc_FDED:				; CODE XREF: sub_FD41+A8j
		ldab	word_48
		std	word_C9
		beq	loc_FE11

loc_FDF3:				; CODE XREF: sub_FD41+9Aj sub_FD41+B6j
		inc	unk_CB
		lsrd
		bcc	loc_FDF3
		std	word_C9
		ldaa	#$11
		ldab	unk_CB
		mul

loc_FE00:				; CODE XREF: sub_FD41+8Bj
		clc

loc_FE01:				; CODE XREF: sub_FD41+96j
		stab	unk_CB
		bcs	loc_FE09
		bitb	#$F0 ; 'ð'
		beq	loc_FE11

loc_FE09:				; CODE XREF: sub_FD41+C2j
		ldaa	#$7C ; '|'

loc_FE0B:				; CODE XREF: sub_FD41+90j
		bvc	loc_FE19
		ldaa	#$FC ; 'ü'
		bcc	loc_FE19

loc_FE11:				; CODE XREF: sub_FD41+B0j sub_FD41+C6j
		ldaa	#$6D ; 'm'
		ldx	word_C9
		bne	loc_FE19
		ldaa	#$5E ; '^'

loc_FE19:				; CODE XREF: sub_FD41+92j
					; sub_FD41:loc_FE0Bj ...
		staa	unk_C8

loc_FE1B:				; CODE XREF: sub_FD41+69j
		ldab	Port1		; may set bit 3	- Idle up solenoid active high
		andb	#$F7 ; '÷'
		tsta
		bpl	loc_FE24
		orab	#8

loc_FE24:				; CODE XREF: sub_FD41+DFj
		stab	Port1
		ldab	Port4		; p4-5,	test mode, active low
		bitb	#$20 ; ' '
		beq	loc_FE33
		ldaa	unk_4C
		anda	#$FB ; 'û'

loc_FE30:				; CODE XREF: sub_FD41+100j
		staa	unk_4C

locret_FE32:				; CODE XREF: sub_FD41+F6j
		rts
; ---------------------------------------------------------------------------

loc_FE33:				; CODE XREF: sub_FD41+E9j
		ldaa	unk_95
		anda	unk_5D
		bpl	locret_FE32
		bitb	#$10
		bne	loc_FE43
		ldaa	unk_4C
		oraa	#4
		bra	loc_FE30
; ---------------------------------------------------------------------------

loc_FE43:				; CODE XREF: sub_FD41+FAj
		ldab	#$C0 ; 'À'
		sei
		stab	Port1

loc_FE48:				; CODE XREF: sub_FD41+144j
		jsr	CPUModeTst
		clra
		clrb
		ldx	#$F000

ChkSumLoop:				; CODE XREF: sub_FD41+113j
		addd	0,x
		inx
		inx
		bne	ChkSumLoop	; loop until x overflows
		subd	#$AA55
		beq	loc_FE5F	; branch if checksum equals aa55
		ldaa	#%11001000
		bra	loc_FE8B
; ---------------------------------------------------------------------------

loc_FE5F:				; CODE XREF: sub_FD41+118j
		jsr	CPUModeTst
		ldd	#$55AA

loc_FE65:				; CODE XREF: sub_FD41+13Ej
		ldx	#$C0 ; 'À'

loc_FE68:				; CODE XREF: sub_FD41+12Bj
		std	$3E,x
		dex
		dex
		bne	loc_FE68

loc_FE6E:				; CODE XREF: sub_FD41+13Aj
		inx
		cmpa	$3F,x
		bne	loc_FE89	; watchdog and p1-7 (???)
		inx
		cmpb	$3F,x
		bne	loc_FE89	; watchdog and p1-7 (???)
		cpx	#$C0 ; 'À'
		bne	loc_FE6E
		comb
		coma
		bmi	loc_FE65
		ldaa	Port4		; p4-5,	test mode, active low
		anda	#$20 ; ' '
		beq	loc_FE48
		bra	loc_FE99
; ---------------------------------------------------------------------------

loc_FE89:				; CODE XREF: sub_FD41+130j
					; sub_FD41+135j
		ldaa	#$48 ; 'H'      ; watchdog and p1-7 (???)

loc_FE8B:				; CODE XREF: sub_FD41+11Cj
		staa	Port1

loc_FE8D:				; CODE XREF: sub_FD41+14Dj
					; sub_FD41+156j
		decb
		bne	loc_FE8D
		jsr	CPUModeTst
		ldaa	Port4		; p4-5,	test mode, active low
		anda	#$20 ; ' '
		beq	loc_FE8D

loc_FE99:				; CODE XREF: sub_FD41+146j
		jmp	reset
; End of function sub_FD41

; ---------------------------------------------------------------------------
		fcb $1F			; data (ff2d entry)
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
		fcb $80	; €
		fcb $A8	; ¨
		fcb $C2	; Â
		fcb $D9	; Ù
		fcb $E6	; æ
		fcb $F3	; ó		; data (ff1b entry)
		fcb $80	; €
		fcb $45	; E
		fcb $1E
		fcb   0
		fcb   0
		fcb   0
		fcb $98	; ˜		; data (ff1b entry)
		fcb $53	; S
		fcb $28	; (
		fcb $19
		fcb  $F
		fcb   6
		fcb   6
		fcb $66	; f		; data (ff1b entry)
		fcb $58	; X
		fcb $47	; G
		fcb $2E	; .
		fcb $17
		fcb   8
		fcb   0
		fcb $6C	; l		; data (ff1b entry)
		fcb $57	; W
		fcb $45	; E
		fcb $33	; 3
		fcb $23	; #
		fcb $11
		fcb   0
		fcb $F3	; ó		; data (ff1b entry)
		fcb $80	; €
		fcb $1E
		fcb   5
		fcb   0
		fcb   0
		fcb   0
		fcb $FF			; data (ff1b entry)
		fcb $D8	; Ø
		fcb $90	; 
		fcb $68	; h
		fcb $49	; I
		fcb $43	; C
		fcb $40	; @		; 6
		fcb $66	; f		; data (ff25 entry)
		fcb $66	; f
		fcb $6A	; j
		fcb $77	; w
		fcb $83	; ƒ
		fcb $8C	; Œ
		fcb $99	; ™
		fcb $AA	; ª
		fcb $B9	; ¹
		fcb $6C	; l		; data (ff1b entry)
		fcb $6C	; l
		fcb $68	; h
		fcb $60	; `
		fcb $50	; P
		fcb $40	; @
		fcb $30	; 0		; 6
		fcb $FF			; data (ff25 entry)
		fcb $C2	; Â
		fcb $4B	; K
		fcb $18
		fcb   0
		fcb   0
		fcb   0
		fcb $FF			; data (ff28 entry)
		fcb $DC	; Ü
		fcb $B2	; ²
		fcb $9B	; ›
		fcb $8A	; Š
		fcb $7C	; |
		fcb $70	; p
		fcb $66	; f
		fcb $5D	; ]
		fcb $53	; S		; data (ff2d entry)
		fcb $49	; I
		fcb $40	; @
		fcb $36	; 6
		fcb $2A	; *
		fcb $1D
		fcb  $A
		fcb   0
		fcb $A5	; ¥
		fcb $84	; „
		fcb $6A	; j
		fcb $55	; U
		fcb $43	; C
		fcb $34	; 4
		fcb $27	; '
		fcb $1C
		fcb $13
		fcb $38	; 8		; data (ff1b entry)
		fcb $38	; 8
		fcb $37	; 7
		fcb $32	; 2
		fcb $2D	; -
		fcb $1C
		fcb $1C			; 6
		fcb $1C
		fcb   6			; data (ff25 entry)
		fcb   6
		fcb $FF
		fcb $FF
		fcb $D8	; Ø
		fcb $96	; –
		fcb $77	; w
		fcb $5E	; ^
		fcb $51	; Q
; ---------------------------------------------------------------------------

ProcData1:				; entry	point
		ldaa	byte_57
		clrb
		cmpa	#$C0 ; 'À'      ; 192
		bls	loc_FF26	; branch if lower or same
		ldaa	6,x		; if byte_57 > #$C0, automatically load	the last value of all ff1b entry tables	and return
		rts
; ---------------------------------------------------------------------------
		clrb			; an entry point

loc_FF26:				; CODE XREF: ROM:FF20j
		lsrd			; next instruction is like a 3 byte nop
; ---------------------------------------------------------------------------
		fcb $21	; !		; branch never,	I've heard this is an old trick, hiding code in brn vector
; ---------------------------------------------------------------------------

loc_FF28:				; CODE XREF: ROM:F88AP	ROM:F891P
		clrb			; another entry	point
		lsrd
		lsrd			; next executed	instruction after ff26 entry
		lsrd
		lsrd
		pshb			; lower	nibble of what was initially in	a gets pushed, or another entry	point and push b
		tab
		abx
		ldaa	1,x		; for ff1b tables b={0,1,2,3}
		suba	0,x
		pulb

; =============== S U B	R O U T	I N E =======================================


sub_FF35:				; CODE XREF: ROM:F89AP
		bcc	loc_FF3C	; with A containing negative difference	of table points	(there's only 6), b containing lower nibble, this may interpolate
		nega
		negb
		beq	loc_FF3C	; with A containing negative difference	of table points	(there's only 6), b containing lower nibble, this may interpolate
		inx

loc_FF3C:				; CODE XREF: sub_FF35j	sub_FF35+4j
		mul			; with A containing negative difference	of table points	(there's only 6), b containing lower nibble, this may interpolate
		adda	0,x
		rts			; returns data from tables in AccA
; End of function sub_FF35

; ---------------------------------------------------------------------------
		fcb $58	; X		; data used by F880
		fcb $63	; c
		fcb $71	; q
		fcb $7E	; ~
		fcb $8A	; Š
		fcb $96	; –
		fcb $96	; –
		fcb $97	; —
		fcb $97	; —
		fcb $8F	; 
		fcb $8E	; Ž
		fcb $8F	; 
		fcb $8D	; 
		fcb $8F	; 
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
		fcb $64	; d		; data (ffe3 entry)
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
		fcb   0			; data (ffa4 entry)
		fcb   0
		fcb   0
		fcb  $B
		fcb   5			; data (ffe1 entry)
		fcb   5
		fcb   5
		fcb   0
		fcb   7			; data (ffa4 entry)
		fcb   0			; data (ffe3 entry)
		fcb $FB	; û
		fcb   0
		fcb   0
		fcb   7
		fcb $FB	; û
		fcb $FE	; þ
; ---------------------------------------------------------------------------

loc_FFA4:
		ldab	byte_58
		lsrb
		lsrb
		lsrb
		lsrb
		lsrb
		abx
		suba	0,x
		rts
; ---------------------------------------------------------------------------
		fcb $4D	; M		; data used by F036
		fcb   5
		fcb $43	; C
		fcb   0
		fcb $5B	; [
		fcb $26	; &
		fcb $80	; €
		fcb   0
		fcb $54	; T
		fcb $73	; s
		fcb $B3	; ³
		fcb $79	; y
		fcb $C0	; À
		fcb $20
		fcb   0
		fcb $65	; e
		fcb $12
		fcb $FF
		fcb $FF
		fcb $10
		fcb   4
		fcb   2
		fcb $8A	; Š
		fcb $11
		fcb $94	; ”
		fcb   1			; data (ffe3 entry)
		fcb $CC	; Ì
		fcb $7F	; 
		fcb $FF
		fcb   2
		fcb   1
		fcb   2
		fcb   0			; data (ffe3 entry)
		fcb $95	; •		; data (ffe1 entry)
		fcb $60	; `
		fcb $34	; 4		; data (ffe3 entry)
		fcb $7A	; z		; data (ffe3 entry)
		fcb $7C	; |
		fcb $F4	; ô
		fcb $71	; q
		fcb $71	; q
		fcb $FF
		fcb $E6	; æ
		fcb   0
		fcb $C6	; Æ
		fcb   4
		fcb $FF
		fcb $5E	; ^
		fcb   0
		fcb   0
; ---------------------------------------------------------------------------

loc_FFE1:				; this sub is executed twice from this entry point
		bsr	*+2

loc_FFE3:				; another entry	point
		ldaa	$FF,x
		inca
		beq	loc_FFEA
		inc	$FF,x

loc_FFEA:				; CODE XREF: ROM:FFE6j
		inx
		ldaa	$FE,x
		rts
; ---------------------------------------------------------------------------
		fdb $C7BE		; illegal opcode trap? c7be is out of rom... this could	be data	or even	code for all i know
		fdb $F3DB		; serial interrupt rdrf	/ orfe / tore
		fdb $F000		; timer	overflow
		fdb $F370		; timer	output compare
		fdb $F1B1		; timer	input capture NE related
		fdb $F000		; /irq or /S3
		fdb $F000		; swi
		fdb $F000		; /NMI
		fdb $F000		; reset	entry vector
; end of 'ROM'


		end
