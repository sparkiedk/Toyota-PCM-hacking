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
Port4:		rmb 1			; DATA XREF: sub_FD41-CCDr inj1on+2r ...
TmrCntStat1:	rmb 1
Timer:		rmb 2
OutCmp1:	rmb 2
InpCap1:	rmb 2
Port3CntStat:	rmb 1			; 7- /IS3 flag	6- /IS3	/IRQ enable 5x 4- output strobe	select 3 latch enable 210x
UARTRateMode:	rmb 1
TxRxCntStat:	rmb 1
RxReg:		rmb 1
TxReg:		rmb 1
RAMCnt:		rmb 1
		rmb 1
		rmb 1
		rmb 1
TmrCntStat2:	rmb 1			; $TCSR2
		rmb 1
		rmb 1
OutCmp2:	rmb 2			; compare output on P1-1, injector /#20
InpCap2:	rmb 2			; captures from	port 1-0, mixed	signal se056
		rmb 1			; top of sfr space
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
word_40:	rmb 2			; DATA XREF: sub_F751+2r ROM:F79Fw ...
					; if we	call this the start of user ram, it's exactly 192 bytes (inclusive)
word_42:	rmb 2			; DATA XREF: ROM:F5A6r	ROM:F749r ...
word_44:	rmb 2			; DATA XREF: sub_F70A+Fr sub_F70A+32r	...
word_46:	rmb 2
word_48:	rmb 2
byte_4A:	rmb 1			; DATA XREF: ROM:FC20r	ROM:FC45w
byte_4B:	rmb 1
byte_4C:	rmb 1			; DATA XREF: sub_FD41-CCFr
					; sub_FD41-CC0w ...
					; msb inhibits injection
byte_4D:	rmb 1			; DATA XREF: sub_FD41-CC4r sub_F121+1r ...
unk_4E:		rmb 1			; used for flags in outcmp,inpcap
ADCflags:	rmb 1			; flag which can be modified in	an interrupt, msb inidicates adc data is pending in adcrxdata
ADCRxData:	rmb 1
EndTxByteTime:	rmb 2			; caches timer values from serial interrupt
ADCcontrol:	rmb 1			; controls a jump table	at fa9b, also deselects	ADC with LSB, also controls which channel to select
ADC_TPS:	rmb 1			; DATA XREF: ROM:jmptable2r ROM:FB99r
ADC_AFMr:	rmb 1			; DATA XREF: ROM:FC8Dr	ROM:FCA0r ...
ADC_ThA:	rmb 1			; DATA XREF: ROM:FAF6r	ROM:FBF1r
ADC_ThW:	rmb 1			; DATA XREF: ROM:F351r	sub_F420+D1r ...
					; water	temp in	farenheit
ADC_PWRr:	rmb 1			; DATA XREF: ROM:loc_FFA4r
ADC_Oxy:	rmb 1
byte_5A:	rmb 1			; DATA XREF: ROM:FBA8r	ROM:loc_FBD4w
byte_5B:	rmb 1			; DATA XREF: ROM:FB78r	ROM:loc_FB7Cr ...
					; TPS related
byte_5C:	rmb 1			; DATA XREF: ROM:F77Dr	ROM:F794w ...
byte_5D:	rmb 1			; DATA XREF: ROM:loc_F5ACr
					; sub_F96A:loc_FA05r ...
					; =adc_tps - byte_5b, tps related
unk_5E:		rmb 1			; timer	based
unk_5F:		rmb 1
byte_60:	rmb 1			; DATA XREF: sub_FD41-C4Cw
					; sub_F420+D5r	...
unk_61:		rmb 1
word_62:	rmb 2			; DATA XREF: sub_F420+60r sub_F420+78w ...
byte_64:	rmb 1			; DATA XREF: sub_F420+98w ROM:F884r ...
byte_65:	rmb 1			; DATA XREF: sub_F129:loc_F12Ar
					; sub_F420+82w	...
deltaNE:	rmb 2			; outcomp
SatCount_68:	rmb 1
byte_69:	rmb 1			; DATA XREF: ROM:F21Ar	ROM:F221r ...
SE056plstime:	rmb 2			; DATA XREF: ROM:loc_F1F0w ROM:F1FDr ...
SE056Maxtime:	rmb 2			; DATA XREF: ROM:loc_F1DAr ROM:F1DEr ...
SE056Mintime:	rmb 2
word_70:	rmb 2			; DATA XREF: ROM:F5A1w
					; sub_F6D4:loc_F6D8r ...
word_72:	rmb 2			; DATA XREF: ROM:F596w	sub_F5E3+B9r ...
unk_74:		rmb 1
unk_75:		rmb 1
word_76:	rmb 2
IC2LowCnt:	rmb 1			; counts input capture 2 trailing edges, reset by p3 msb low (G+ related)
Inj10OffTime:	rmb 2
word_7B:	rmb 2
word_7D:	rmb 2
word_7F:	rmb 2			; DATA XREF: ROM:F555w	sub_F5CEr ...
word_81:	rmb 2			; DATA XREF: sub_F168:loc_F16Er
					; ROM:FC9Ew
					; injector related
unk_83:		rmb 1
byte_84:	rmb 1			; DATA XREF: ROM:loc_F568w sub_F5E3+Cr ...
		rmb 1
byte_86:	rmb 1			; DATA XREF: ROM:F580w	sub_F5E3+A6r
byte_87:	rmb 1			; DATA XREF: sub_F420+72w
					; sub_F420+10Cw ...
byte_88:	rmb 1			; DATA XREF: ROM:loc_F5C3w
					; sub_F5E3+33r	...
byte_89:	rmb 1			; DATA XREF: sub_F5CE+7w
					; sub_F5E3:loc_F61Bw
byte_8A:	rmb 1			; DATA XREF: sub_F6FC+2r ROM:FBF8w
unk_8B:		rmb 1
unk_8C:		rmb 1
		rmb 1
word_8E:	rmb 2			; DATA XREF: sub_F5CE+4w sub_F5E3+44r	...
word_90:	rmb 2			; DATA XREF: sub_F5CE+2w sub_F5E3+1Fr	...
byte_92:	rmb 1			; DATA XREF: ROM:F5BEr	sub_F70A+Dw ...
byte_93:	rmb 1			; DATA XREF: sub_F751+Ar sub_F751+18r	...
byte_94:	rmb 1
byte_95:	rmb 1			; DATA XREF: sub_FD41:loc_F0D1r
					; ROM:F1E9r ...
unk_96:		rmb 1
SatCount_97:	rmb 1
SatCount_98:	rmb 1
unk_99:		rmb 1			; TVIS related
unk_9A:		rmb 1			; oxygen sensor	related
unk_9B:		rmb 1
SatCount_9C:	rmb 1
unk_9D:		rmb 1
byte_9E:	rmb 1			; DATA XREF: sub_F420:loc_F508r
					; sub_F5E3+87r	...
InCp2TrEg:	rmb 2			; probably not just trailing edge
word_A1:	rmb 2			; OC1/igt related
byte_A3:	rmb 1			; DATA XREF: ROM:loc_F8ADw ROM:F8D6r
					; stores output	from 3d	lookup
byte_A4:	rmb 1			; DATA XREF: ROM:F867r	ROM:F8D2r ...
byte_A5:	rmb 1			; DATA XREF: ROM:F8BBr	ROM:F8D0w
byte_A6:	rmb 1			; DATA XREF: ROM:loc_F847w
					; ROM:loc_F859w ...
deltaInCp2TL:	rmb 2
word_A9:	rmb 2			; last word_ab
word_AB:	rmb 2			; last word_ad
word_AD:	rmb 2			; last word_af
word_AF:	rmb 2
word_B1:	rmb 2
word_B3:	rmb 2
word_B5:	rmb 2			; DATA XREF: ROM:F391r	ROM:F397r ...
					; ADC_AFMr*4+384
NEtrEdge:	rmb 2			; leading edge time of tinp2. corresponds to tr	edge of	NE
LastIC2treg:	rmb 2
word_BB:	rmb 2			; outcomp
word_BD:	rmb 2			; output compare routine only
word_BF:	rmb 2			; DATA XREF: ROM:F911r	ROM:FCAAr ...
word_C1:	rmb 2
unk_C3:		rmb 1
word_C4:	rmb 2
unk_C6:		rmb 1
SatCount_C7:	rmb 1			; DATA XREF: ROM:F84Dw
unk_C8:		rmb 1
word_C9:	rmb 2
unk_CB:		rmb 1
byte_CC:	rmb 1			; DATA XREF: ROM:loc_FB6Er sub_FD02+2r ...
					; used for flagging bad	sensors	probably, bits:	6-ThA, 5-TPS, 2-ThW, 0-afm(not from adc)
unk_CD:		rmb 1
SatCount_CE:	rmb 1			; DATA XREF: sub_FD41-C60w
					; sub_F7BE:loc_F7B0w ...
SatCount_CF:	rmb 1
SatCount_D0:	rmb 1			; DATA XREF: sub_F420+9Bw
SatCount_D1:	rmb 1
SatCount_D2:	rmb 1
word_D3:	rmb 2
unk_D5:		rmb 1
byte_D6:	rmb 1			; DATA XREF: ROM:F74Dw	sub_FD41+46r
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
		sei			; really make it not interrupt.
		lds	#$FF		; init stackptr
		ldaa	#$C0 ; '¿'
		staa	RAMCnt		; enable ram, set ram bit which	gets cleared by	standby	power loss
		ldaa	#3		; leading edges, but no	interrupts
		staa	TmrCntStat1	; set input edge and output level high,	disable	all interrupts
		staa	TmrCntStat2	; set input edge and output level high,	disable	all interrupts
		std	Timer		; because why not write	to the timer?
		ldd	#$BFFF
		std	Port3		; $port	3 all outputs high except 6, select ADC	- Port4	all bits high
		ldd	#$9FFF
		std	Port1		; port1	bits 7,4,3,2,1 high port 2 all bits high
		ldx	#$6081		; because they're worried they'll wear out accD?
		stx	Port3DDR	; $4 is	direction 3 $5 is direction 4
		ldx	#$EE12
		stx	Port1DDR	; $0 is	direction 1 $1 is direction 2
		jsr	CPUModeTst	; does a mode test and toggles watchdog	pin
		ldx	#$B4 ; '¥'

Clear_RAM:				; CODE XREF: sub_FD41-D13j
		clr	$4B,x		; $4b is 75dec,	$b4 is 180dec, so clear	memory starting	from $ff to $4C	inclusive
		dex
		bne	Clear_RAM	; $4b is 75dec,	$b4 is 180dec, so clear	memory starting	from $ff to $4C	inclusive
		ldd	TxRxCntStat	; $11 is txrx control and stat reg, $12	is rxdata reg
		ldaa	#2		; tx enable, no	interrupts
		staa	TxRxCntStat
		ldx	#$FFAE

initRAMadd:				; CODE XREF: sub_FD41-D00j
		inx
		ldab	0,x		; load ram address to initialize, 0 signals termination	of init	data
		beq	initRAMdone	; FFAF=$4d, so initially doesn't branch, but this is the only way out!

initRAMdata:				; CODE XREF: sub_FD41-CF5j
		inx
		ldaa	0,x
		beq	initRAMadd	; run length encoded ram constants are null terminated
		pshx
		ldx	#0
		abx			; b contains pointer to	ram value to init with AccA
		staa	0,x		; init the RAM!
		pulx
		incb			; continue to increment	pointer
		bra	initRAMdata
; ---------------------------------------------------------------------------

initRAMdone:				; CODE XREF: sub_FD41-D05j
		ldab	#$10
		cli			; enable interrupts

loc_F051:				; CODE XREF: sub_FD41-CEAj
		pshb
		jsr	procJmpTable
		pulb
		decb
		bne	loc_F051
		ldab	Timer
		stab	unk_5E		; timer	based
		ldaa	#$1B
		sei
		staa	TmrCntStat1	; timer	control	$1b enables inp	cap int, enables out comp int, rising edge inp trigger,	compare	triggers leading edge.
		staa	TmrCntStat2	; timer	control	$1b enables inp	cap int, enables out comp int, rising edge inp trigger,	compare	triggers leading edge.

Main_Loop:				; CODE XREF: sub_FD41:end_mainJ
		lds	#$FF		; re-init stack	ptr
		ldd	#$EE12
		std	Port1DDR	; re init ddr1 and ddr2
		ldx	#$6081		; re init ddr3 and ddr4
		stx	Port3DDR
		cli
		ldd	byte_4C		; msb inhibits injection
		eorb	Port4		; port 4
		andb	#$40 ; '@'      ; p4-6 is SPD input
		beq	loc_F083
		inc	unk_61
		eorb	byte_4D
		anda	#$FE ; '˛'
		std	byte_4C		; msb inhibits injection

loc_F083:				; CODE XREF: sub_FD41-CC9j
		ldd	unk_5E		; timer	based
		cmpa	Timer
		bpl	loc_F0FD
		adda	#$10
		incb			; adds 4097
		std	unk_5E		; timer	based
		ldaa	#$DF ; 'ﬂ'
		sei
		anda	Port3		; clear	bit5 (mixed signal se056)
		staa	Port3		; clear	bit5 (mixed signal se056)
		cli
		ldd	#$1FE
		andb	ADCcontrol	; clear	bit0
		stab	ADCcontrol	; clear	bit0
		sei
		oraa	ADCflags	; set bit 0
		staa	ADCflags	; set bit 0
		cli
		jsr	loc_FAA7
		ldaa	unk_5F
		asla
		beq	loc_F0BB
		anda	#$3E ; '>'
		beq	loc_F0F7
		ldab	byte_4C		; msb inhibits injection
		bitb	#4
		beq	loc_F0B9
		anda	#$E
		beq	loc_F0F7

loc_F0B9:				; CODE XREF: sub_FD41-C8Ej
		bra	loc_F0FA
; ---------------------------------------------------------------------------

loc_F0BB:				; CODE XREF: sub_FD41-C98j
		ldx	#$FFCF
		jsr	$14,x		; ffe3,	saturate count satcount_CE
		cmpa	#$98 ; 'ò'
		ldab	byte_4C		; msb inhibits injection
		bitb	#4
		beq	loc_F0CA
		cmpa	#4

loc_F0CA:				; CODE XREF: sub_FD41-C7Bj
		bcs	loc_F0D1
		ldaa	#8
		jsr	sub_FD11

loc_F0D1:				; CODE XREF: sub_FD41:loc_F0CAj
		ldd	byte_95
		bpl	loc_F0E8
		incb
		bpl	loc_F0F0
		ldaa	unk_9D
		suba	#1
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb $E6	; Ê
		fcb $8F	; è
; ---------------------------------------------------------------------------
		clr	SatCount_CE
		ldab	#$89 ; 'â'
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
		std	byte_60

loc_F0F7:				; CODE XREF: sub_FD41-C94j
					; sub_FD41-C8Aj
		jsr	sub_FD41

loc_F0FA:				; CODE XREF: sub_FD41:loc_F0B9j
		jsr	sub_F96A

loc_F0FD:				; CODE XREF: sub_FD41-CBAj
		ldaa	#2
		bita	unk_4E		; used for flags in outcmp,inpcap
		beq	loc_F10D
		bsr	sub_F119
		jsr	sub_F420	; clears IGf bit from port3cntstat
		jsr	loc_F814
		bra	end_main
; ---------------------------------------------------------------------------

loc_F10D:				; CODE XREF: sub_FD41-C40j
		ldaa	#1
		bita	unk_4E		; used for flags in outcmp,inpcap
		beq	end_main
		jsr	loc_F534

end_main:				; CODE XREF: sub_FD41-C36j
					; sub_FD41-C30j
		jmp	Main_Loop	; re-init stack	ptr
; END OF FUNCTION CHUNK	FOR sub_FD41

; =============== S U B	R O U T	I N E =======================================


sub_F119:				; CODE XREF: sub_FD41-C3Ep
					; sub_F420+B3P	...
		coma
; End of function sub_F119


; =============== S U B	R O U T	I N E =======================================


mask4E:					; CODE XREF: sub_F420+BFP ROM:F53FP
		sei
		anda	unk_4E		; used for flags in outcmp,inpcap
		staa	unk_4E		; could	toggle some bits low
		cli
		rts
; End of function mask4E


; =============== S U B	R O U T	I N E =======================================


sub_F121:				; CODE XREF: sub_F96A+B8P ROM:FBCCP
		psha
		ldaa	byte_4D
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
		ldaa	byte_65
		cmpa	#$8C ; 'å'
		bcc	loc_F127
		pula

loc_F131:				; CODE XREF: ROM:F21EP
		tsta
		beq	locret_F128
		sei
		bsr	inj1on

inj2on:					; CODE XREF: ROM:endIC1_2P
		ldx	#$DD9F		; std word_9f
		ldaa	Port1		; test injector	#20 (bit 1)
		rora
		rora			; injector 20 bit in carry
		ldd	word_7B
		bsr	sub_F168	; plays	with timer, incp2treg, word_81
		addd	#30
		std	word_7B		; add 30 to word_7b
		ldd	#$FE0C
		anda	TmrCntStat2	; set lsb low
		staa	TmrCntStat2	; set lsb low
		ldx	Timer
		abx
		stx	OutCmp2		; force	OC2 low
		rts
; End of function sub_F129


; =============== S U B	R O U T	I N E =======================================


inj1on:					; CODE XREF: sub_F129+Cp sub_F194p

; FUNCTION CHUNK AT F191 SIZE 00000003 BYTES

		std	InCp2TrEg	; probably not just trailing edge
		ldaa	Port4		; p4-7 is injector #10
		rola			; injector #10 status in carry bit
		ldd	Inj10OffTime
		bsr	sub_F168	; plays	with timer, incp2treg, word_81
		subd	#0
		std	Inj10OffTime
		ldaa	#$7F ; ''
		anda	Port4		; turn on injector #10
		bra	loc_F191
; End of function inj1on


; =============== S U B	R O U T	I N E =======================================

; plays	with timer, incp2treg, word_81

sub_F168:				; CODE XREF: sub_F129+17p inj1on+7p
		bcs	loc_F16E
		subd	Timer
		bpl	loc_F170

loc_F16E:				; CODE XREF: sub_F168j
		ldd	word_81		; injector related

loc_F170:				; CODE XREF: sub_F168+4j
		addd	InCp2TrEg	; probably not just trailing edge
		bpl	loc_F177
		ldd	#32767		; saturate to 7fff

loc_F177:				; CODE XREF: sub_F168+Aj
		addd	Timer
		rts
; End of function sub_F168


; =============== S U B	R O U T	I N E =======================================


injector1:				; CODE XREF: ROM:F2F8P	ROM:F3D7P

; FUNCTION CHUNK AT F196 SIZE 0000001B BYTES

		ldaa	Port4
		bmi	locret_F1B0	; exit if injector #10 is not on
		ldd	Inj10OffTime
		subd	#320
		subd	Timer
		bpl	loc_F196	; branch if not	within 320us of	inj off	time
		ldx	Inj10OffTime

loc_F189:				; CODE XREF: injector1+11j
		cpx	Timer
		bpl	loc_F189	; spin waiting for timer
		ldaa	#$80 ; 'Ä'
		oraa	Port4		; turn off injector #10
; End of function injector1

; START	OF FUNCTION CHUNK FOR inj1on

loc_F191:				; CODE XREF: inj1on+12j
		staa	Port4
		rts
; END OF FUNCTION CHUNK	FOR inj1on

; =============== S U B	R O U T	I N E =======================================

; store	d in incp2treg,	turn injector 1	on, get	another	valuve for inj10offtime

sub_F194:				; CODE XREF: ROM:F23AP
		bsr	inj1on
; End of function sub_F194

; START	OF FUNCTION CHUNK FOR injector1

loc_F196:				; CODE XREF: injector1+Bj
		ldd	#$2FE
		anda	Port1		; test bit 1 (injector #20)
		bne	loc_F1A3	; branch if injector #20 is not	on
		ldx	OutCmp2		; compare output on P1-1, injector /#20
		cpx	Inj10OffTime
		bmi	locret_F1B0	; bomb out if OC2 happens earlier than inj10offtime

loc_F1A3:				; CODE XREF: injector1+21j
		lsra
		andb	TmrCntStat2	; $TCSR2
		aba
		staa	TmrCntStat2	; maintain status quo: next out	cmp will set /#20 to the same value it currently is.
		ldd	Inj10OffTime
		subd	#250
		std	OutCmp2		; compare output on P1-1, injector /#20

locret_F1B0:				; CODE XREF: injector1+2j
					; injector1+27j
		rts
; END OF FUNCTION CHUNK	FOR injector1
; ---------------------------------------------------------------------------

IRQinpcap:
		ldaa	TmrCntStat1
		bita	TmrCntStat2	; $TCSR2
		bmi	IRQinpcap2	; branch if BOTH input capture flags are set
		tsta
		bra	IRQinpcap3	; branch if only input capture 1, or MSB of $4e	is set
; ---------------------------------------------------------------------------

IRQinpcap2:				; CODE XREF: ROM:F1B5j
		ldaa	unk_4E		; used for flags in outcmp,inpcap

IRQinpcap3:				; CODE XREF: ROM:F1B8j
		bmi	procInCp1	; branch if only input capture 1, or MSB of $4e	is set
		jmp	procInCp2	; input	capture	2 is triggered by edges	from pin 7 of se056, which appears to be /NE clipped @5V levels
; ---------------------------------------------------------------------------

procInCp1:				; CODE XREF: ROM:IRQinpcap3j
		ldd	InpCap1		; IC1 is ONLY EVER triggered by	leading	edges on p2-0
		subd	LastIC2treg
		pshb
		psha
		pulx			; xgdx
		ldaa	unk_4E		; used for flags in outcmp,inpcap
		bpl	endIC1_1	; msb gets flagged based on input capture level
		oraa	#1
		anda	#$7F ; ''
		staa	unk_4E		; set bit 0, clear bit 7
		cli
		inx			; input	capture	time - B9 +1
		cpx	SE056Mintime
		bcc	loc_F1DA	; bounce if greater than or equal to
		ldx	SE056Mintime

loc_F1DA:				; CODE XREF: ROM:F1D6j
		cpx	SE056Maxtime
		bcs	loc_F1E0	; bounce if less than
		ldx	SE056Maxtime

loc_F1E0:				; CODE XREF: ROM:F1DCj
		ldaa	unk_CD		; X is now capped between word_6e (low)	and word_6C (high)
		bita	#1
		beq	loc_F1F0	; bounce is lsb	of unk_cd is low
		ldx	#800
		ldaa	byte_95		; bounce if MSb	of byte_95 is high
		bmi	loc_F1F0	; either 800 or	1600 or	if we're lucky: InpCap1 - LastIC2treg
		ldx	#1600

loc_F1F0:				; CODE XREF: ROM:F1E4j	ROM:F1EBj
		stx	SE056plstime	; either 800 or	1600 or	if we're lucky: InpCap1 - LastIC2treg
		ldaa	SatCount_97
		oraa	byte_4C		; msb inhibits injection
		oraa	SatCount_98
		bmi	endIC1_1	; return if satcounts are $80 or greater, or msb of byte_4c is set
		ldaa	unk_75
		psha
		ldd	SE056plstime
		jsr	mulDbyStack	; multiplies unk_75 by word_6a,	returns	only upper 16 bits of result
		pshb
		ldx	#0
		ldab	unk_74
		abx
		pulb
		beq	loc_F211	; bounce if x is zero

loc_F20C:				; CODE XREF: ROM:F20Fj
		addd	SE056plstime
		dex
		bne	loc_F20C	; multiply loop

loc_F211:				; CODE XREF: ROM:F20Aj
		tsta
		bpl	loc_F217	; result of multiplication of unk_75 and word_6a, clipped to $7fff
		ldd	#$7FFF

loc_F217:				; CODE XREF: ROM:F212j
		std	word_7D		; result of multiplication of unk_75 and word_6a, clipped to $7fff
		sei			; mask interrupts for this section
		ldx	byte_69
		bmi	loc_F22C	; bounce if byte_69 has	underflowed
		jsr	loc_F131
		ldaa	byte_69
		bne	endIC1_1	; end of IC1 interrupt
		deca			; decrement byte_69
		staa	byte_69		; decrement byte_69
		ldd	word_7D
		bra	choose_bank
; ---------------------------------------------------------------------------

loc_F22C:				; CODE XREF: ROM:F21Cj
		lsld
		bpl	choose_bank	; double word_7d in AccD and cap at 32767
		ldd	#$7FFF

choose_bank:				; CODE XREF: ROM:F22Aj	ROM:F22Dj
		psha
		ldaa	IC2LowCnt	; decide which bank to fire from the looks of it
		bita	#2
		pula			; AccD is either word_7d or double word_7d capped at 32767
		beq	endIC1_2	; turns	off OC2	(turns on injector #20)
		jsr	sub_F194	; turns	on injector #10, also sets up the next oc2 interrupt

endIC1_1:				; CODE XREF: ROM:F1CAj	ROM:F1F8j ...
		rti			; end of IC1 interrupt
; ---------------------------------------------------------------------------

endIC1_2:				; CODE XREF: ROM:F238j
		jsr	inj2on+1	; turns	off OC2	(turns on injector #20)
		rti			; end of IC1 interrupt sometimes
; ---------------------------------------------------------------------------

procInCp2:				; CODE XREF: ROM:F1BEJ
		ldaa	TmrCntStat2	; input	capture	2 is triggered by edges	from pin 7 of se056, which appears to be /NE clipped @5V levels
		ldx	InpCap2		; captures from	port 1-0, mixed	signal se056
		bita	#2		; test IEDG
		beq	InCp2low	; branch if input edge that triggered capture was low

InCp2high:				; leading edge time of tinp2. corresponds to tr	edge of	NE
		stx	NEtrEdge
		ldaa	Port2		; looking at /IGT
		bita	#%10
		beq	IGTisON		; branch if /IGT is low
		ldaa	unk_C6
		bgt	IGTisON		; IGT on
		ldd	#$FA0D
		anda	TmrCntStat1	; disable timer	overflow interrupt, output on cmp set low
		staa	TmrCntStat1	; disable timer	overflow interrupt, output on cmp set low
		ldx	Timer
		abx
		stx	OutCmp1		; outcmp=timer+0D, which is 13us from now...

IGTisON:				; CODE XREF: ROM:F250j	ROM:F254j
		ldd	OutCmp1		; IGT on
		addd	word_B3
		std	InCp2TrEg	; probably not just trailing edge
		ldaa	word_A1		; OC1/igt related
		inca
		bmi	loc_F27B	; bounce if word_a1 is unsuitable for next oepration
		ldd	NEtrEdge	; leading edge time of tinp2. corresponds to tr	edge of	NE
		addd	deltaInCp2TL
		subd	word_A1		; OC1/igt related
		cmpa	InCp2TrEg	; probably not just trailing edge
		bpl	loc_F279
		ldd	InCp2TrEg	; this value gets stored in outcmp1 if the result in D is significantly	smaller	(256)

loc_F279:				; CODE XREF: ROM:F275j
		bsr	OC1HighDtoOC1

loc_F27B:				; CODE XREF: ROM:F26Bj
		ldd	#$FDF3
		anda	TmrCntStat2	; set oc2 ouput	level low on next compare
		staa	TmrCntStat2	; set oc2 ouput	level low on next compare
		andb	unk_4E		; used for flags in outcmp,inpcap
		stab	unk_4E		; set bits 2,3 low
		rti

; =============== S U B	R O U T	I N E =======================================


OC1HighDtoOC1:				; CODE XREF: ROM:loc_F279p ROM:F2BCp
		psha
		ldaa	#$19
		oraa	TmrCntStat1	; set oc1 level	high
		staa	TmrCntStat1	; set oc1 level	high
		pula
; End of function OC1HighDtoOC1


; =============== S U B	R O U T	I N E =======================================

; write	d to outcmp

stdOC1:					; CODE XREF: ROM:loc_F3ACP ROM:F94DP
		std	OutCmp1
		subd	Timer
		cmpa	#240		; 240*256=61440us
		bcs	stdOC1Dgood

stdOC1Dnogd:				; CODE XREF: ROM:F2AAj
		ldd	#15
		addd	Timer
		std	OutCmp1		; set outcmp to	timer +	F, which is 15us from now

stdOC1Dgood:				; CODE XREF: stdOC1+6j	ROM:F2A4j
		rts
; End of function stdOC1

; ---------------------------------------------------------------------------

forceIGToff:
		ldd	#$219
		bita	Port2		; test for /IGT
		bne	stdOC1Dgood	; return if /IGT is off
		orab	TmrCntStat1	; set oc1 level	to high
		stab	TmrCntStat1	; set oc1 level	to high
		bra	stdOC1Dnogd	; forces an OC1	shortly
; ---------------------------------------------------------------------------

InCp2low:				; CODE XREF: ROM:F248j
		stx	InCp2TrEg	; probably not just trailing edge
		ldaa	unk_4E		; checking bit 3
		bita	#8
		bne	IC2low3
		ldaa	word_A1		; OC1/igt related
		bpl	IC2low2+1	; force	IGT off
		ldd	InCp2TrEg	; probably not just trailing edge
		subd	word_A1		; OC1/igt related
		bsr	OC1HighDtoOC1

IC2low2:				; CODE XREF: ROM:F2B6j
		cpx	#$8DDE		; 8dde is BSR forceIGToff, which jumps to f29F

IC2low3:				; CODE XREF: ROM:F2B2j
		ldd	InCp2TrEg	; probably not just trailing edge
		subd	LastIC2treg
		std	deltaNE		; =incp2treg-word_b9
		ldab	SatCount_68
		clr	SatCount_68	; reset	satcount_68
		cmpb	#13
		bcs	IC2low5		; bounce if satcount_68	was lower than 13
		cmpb	#22
		bhi	IC2low4		; bounce if satcount_68	was higher than	22
		tsta
		bmi	IC2low5

IC2low4:				; CODE XREF: ROM:F2D2j
		ldd	#$FFFF		; about	458 RPM
		std	deltaNE		; set to FFFF

IC2low5:				; CODE XREF: ROM:F2CEj	ROM:F2D5j
		cmpa	#$EA ; 'Í'
		bcc	IC2low6
		ldaa	unk_C6
		ldab	byte_4B
		cmpb	#4
		bcs	IC2low7

IC2low6:				; CODE XREF: ROM:F2DEj
		ldaa	#5

IC2low7:				; CODE XREF: ROM:F2E6j
		tsta
		bmi	IC2low8
		deca
		staa	unk_C6

IC2low8:				; CODE XREF: ROM:F2EBj
		ldaa	TmrCntStat2	; $TCSR2
		asla
		bpl	IC2low9
		jsr	injector2
		jsr	injector1

IC2low9:				; CODE XREF: ROM:F2F3j
		ldd	InCp2TrEg	; probably not just trailing edge
		std	LastIC2treg	; =incp2treg
		subd	NEtrEdge	; leading edge time of tinp2. corresponds to tr	edge of	NE
		std	deltaInCp2TL
		subd	word_B1
		addd	word_A9		; last word_ab
		asra			; equivalent to	an arithmetic shift right D (preserves sign of value in	d)
		rorb
		ldx	word_AB		; begin	the shuffle of buffles,	this is	a delay	by 4 routine...	for a 4	cylinder motor nonetheless
		stx	word_A9		; last word_ab
		ldx	word_AD		; last word_af
		stx	word_AB		; last word_ad
		ldx	word_AF
		stx	word_AD		; last word_af
		tst	unk_C6
		ble	IC2low10
		clra
		clrb

IC2low10:				; CODE XREF: ROM:F318j
		std	word_AF
		ldd	word_B1
		addd	deltaInCp2TL
		rora
		rorb
		std	word_B1
		addd	word_A9		; last word_ab
		std	deltaInCp2TL
		ldd	#$1A1A
		orab	TmrCntStat1	; IC1 edge 1, OC1 unaffected
		stab	TmrCntStat1
		oraa	TmrCntStat2	; IC2 edge 1, OC2 unaffected
		staa	TmrCntStat2	; $TCSR2
		ldab	unk_4E		; used for flags in outcmp,inpcap
		ldaa	IC2LowCnt	; counts input capture 2 trailing edges, reset by p3 msb low (G+ related)
		inca
		staa	IC2LowCnt	; counts input capture 2 trailing edges, reset by p3 msb low (G+ related)
		cmpa	#3
		bls	IC2low11
		tba
		asla
		oraa	Port3		; inputs to port3 are 7	-G+, 4,3,2,1,0
		bmi	IC2low11	; branch if G+ related is high
		ldaa	#$FE ; '˛'
		anda	Port4		; p4-0 is output to SE056 mixed	signal ic, begin generating 50us low pulse
		staa	Port4		; p4-0 is output to SE056 mixed	signal ic, begin generating 50us low pulse
		clra
		staa	IC2LowCnt	; counts input capture 2 trailing edges, reset by p3 msb low (G+ related)
		staa	SatCount_D1	; clear	unk_d1
		ldaa	ADC_ThW		; compare to 80
		cmpa	#80
		bls	IC2low11	; branch if less than 80 deg F
		orab	#$20 ; ' '

IC2low11:				; CODE XREF: ROM:F33Ej	ROM:F344j ...
		orab	#$46 ; 'F'
		ldaa	#1
		bita	Port2		; looking at mixed signal chip input bit 0, input capture pin
		beq	IC2low12	; branch if inpcap pin is low
		ldaa	TmrCntStat1	; interested in	ICF bit	7
		bpl	IC2low13	; branch if ICF	was not	set

IC2low12:				; CODE XREF: ROM:F35Fj
		orab	#$80 ; 'Ä'

IC2low13:				; CODE XREF: ROM:F363j
		stab	unk_4E		; potential to set bits	7,6,5,2,1 high
		ldaa	#1
		oraa	Port4		; p4-0 is output to SE056 mixed	signal ic, finish 50us low pulse
		staa	Port4		; p4-0 is output to SE056 mixed	signal ic, finish 50us low pulse
		rti
; ---------------------------------------------------------------------------

IRQoutcmp:				; output compare pin p2-1 eventually becomes the signal	/IGT, or in other words	a high IGT pulse (normal operation I believe) is created by a low pulse	from the output	compare	module.
		ldaa	TmrCntStat2
		asla
		bmi	procOCmp2	; branch if ocf2 is set
		ldaa	TmrCntStat1
		tab
		comb
		bitb	#$41 ; 'A'
		bne	OutCmpBombout	; if bit 6 or 1	was low	in tmrcntstat branch: if we're here for no reason (ocf flag was NOT set??) or we're here because a compare forced /IGT low, branch
		ldab	unk_4E		; test bit 3, if high leave interrupt without doing much
		bitb	#8
		bne	OutCmpBombout
		orab	#8
		stab	unk_4E		; set bit 3 high
		ldab	unk_C6		; bail out of interrupt	if >0
		bgt	OutCmpBombout
		anda	#$FA ; '˙'      ; a still contains tmrcntstat
		staa	TmrCntStat1	; next compare forces /IGT low (active)
		ldd	OutCmp1		; load last compare time, which	should have initiated this interrupt
		addd	word_B5		; word_b5 contains a duration
		std	word_BD		; word_bd contains next	compare	time?
		ldd	deltaNE		; outcomp
		subd	word_B5		; ADC_AFMr*4+384
		subd	word_BB		; outcomp
		bcc	loc_F39F
		clra
		clrb

loc_F39F:				; CODE XREF: ROM:F39Bj
		addd	word_BD		; output compare routine only
		psha
		ldaa	unk_4E		; used for flags in outcmp,inpcap
		bita	#4
		pula			; pulls	dont touch cond	codes
		beq	loc_F3AC
		jsr	OutCmp1Sub1	; called from output compare ISR

loc_F3AC:				; CODE XREF: ROM:F3A7j
		jsr	stdOC1		; write	d to outcmp
		rti
; ---------------------------------------------------------------------------

OutCmpBombout:				; CODE XREF: ROM:F37Bj	ROM:F381j ...
		oraa	#1
		staa	TmrCntStat1	; set output high on cmp
		ldd	OutCmp1		; do nothing
		std	OutCmp1		; do nothign, could we be waiting for the NEXT compare after overflow?
		rti			; final	end to output compare interrupt

; =============== S U B	R O U T	I N E =======================================


injector2:				; CODE XREF: ROM:F2F5P	injector2+19j ...
		ldaa	TmrCntStat2	; $TCSR2
		oraa	#1
		staa	TmrCntStat2	; next OC2 will	set /#20 high
		ldx	word_7B
		stx	OutCmp2		; compare output on P1-1, injector /#20
		cpx	Timer
		bpl	injector2ret	; terminate if next compare is after current time
		ldd	#$209		; which	is also	521us
		anda	Port1		; test status of bit 1 (injector #20)
		bne	injector2ret	; terminate if injector	#20 is off
		addd	Timer
		std	OutCmp2		; compare output on P1-1, injector /#20
		bra	injector2
; ---------------------------------------------------------------------------

injector2ret:				; CODE XREF: injector2+Cj
					; injector2+13j
		rts
; End of function injector2

; ---------------------------------------------------------------------------

procOCmp2:				; CODE XREF: ROM:F373j
		bsr	injector2
		jsr	injector1
		rti
; ---------------------------------------------------------------------------

IRQSerial:				; sort of like ldaa $11	ldab $12
		ldd	TxRxCntStat
		bpl	SerBombOut	; branch if bit	15=0, means there's no receive data (why are we interrupting?)
		cli
		anda	#$40 ; '@'      ; test for overrun or framing error
		beq	SerIRQMain	; no error
		jsr	loc_FB18	; error, after re-init the adc gets selected and output	from adcchanselect gets	written	to txreg

SerBombOut:				; CODE XREF: ROM:F3DDj
		rti
; ---------------------------------------------------------------------------

SerIRQMain:				; CODE XREF: ROM:F3E2j
		ldaa	ADCflags	; flag which can be modified in	an interrupt, msb inidicates adc data is pending in adcrxdata
		rora
		ldaa	Port3		; test to see if /CS to	the ADC	is set
		bita	#$40 ; '@'
		bne	SerialDebug	; branch if ADC	was not	selected (to serial debug routine)
		stab	ADCRxData	; b has	rx data
		bcc	SerIRQflag	; branch if lsb	of $4f when loaded was 0
		ldab	ADCcontrol	; controls a jump table	at fa9b, also deselects	ADC with LSB, also controls which channel to select
		rorb
		bcs	SerIRQflag	; branch if ADCcontrol was odd
		oraa	#$40 ; '@'
		staa	Port3		; de select adc	p3-6 if	ADCcontrol was even

SerIRQflag:				; CODE XREF: ROM:F3F3j	ROM:F3F8j
		ldab	#$80 ; 'Ä'
		orab	ADCflags	; set bit 7
		stab	ADCflags	; set bit 7

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
		bcc	loc_F431	; carry	bit will be set	from trailing edge on /IS3 pin (IGF)
		staa	SatCount_98	; set unk_98 to	$7B

loc_F431:				; CODE XREF: sub_F420+Dj
		ldx	deltaNE		; outcomp
		cpx	#4054		; exactly 7400rpm, set to 3332 for 9003	RPM
		bcs	loc_F43A	; increment unk_97, increment unk_98
		stab	SatCount_97	; set unk_97 to	$79

loc_F43A:				; CODE XREF: sub_F420+16j
		ldx	#$FF98		; increment unk_97, increment unk_98
		jsr	$49,x		; FFE1,	saturate count satcount_97 and satcount_98
		bpl	loc_F446	; rts, prior instructions are LSRD
		ldaa	#2
		jsr	sub_FD11

loc_F446:				; CODE XREF: sub_F420+1Fj
		ldx	#$FC81		; rts, prior instructions are LSRD
		ldd	deltaNE		; the next few lines of	code do	SOMETHING with deltaNE,	could calculate	an RPM variable	maybe

loc_F44B:				; CODE XREF: sub_F420+31j
		bita	#$F0 ; ''
		beq	loc_F453	; test if msN is clear
		dex			; decrementing x to point to equivalent	lsrd instructions in DivDby16
		lsrd
		bra	loc_F44B
; ---------------------------------------------------------------------------

loc_F453:				; CODE XREF: sub_F420+2Dj
		pshx
		ldx	#$FEF9
		jsr	$34,x		; ff2d
		jsr	DivDby16
		adda	#8
		pulx
		jsr	0,x
		cmpa	#9
		bls	loc_F468	; table	output,	suitably divided, capped to $9ff (2559d)
		ldd	#2559

loc_F468:				; CODE XREF: sub_F420+43j
		std	word_D3		; table	output,	suitably divided, capped to $9ff (2559d)
		subd	#144
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
		staa	byte_87

loc_F494:				; CODE XREF: sub_F420+6Fj
		stab	unk_D5
		ldd	word_D3
		std	word_62
		lsrd
		lsrd
		lsrd
		std	word_D3
		jsr	sub_F5E3	; if a==0, b is	unmolested; otherwise b=$FF
		stab	byte_65
		ldx	word_D3
		ldd	word_D3
		cpx	#192
		bls	loc_F4B0
		lsrd
		addb	#96

loc_F4B0:				; CODE XREF: sub_F420+8Bj
		tba
		suba	#32
		jsr	boundDataneg	; Limits AccA to bounds	set by two bytes after call
; ---------------------------------------------------------------------------
		fcb $D0	; –		; 208
		fcb   0
; ---------------------------------------------------------------------------
		staa	byte_64
		clra
		staa	SatCount_D0
		ldd	#$140
		bita	byte_4D
		bne	loc_F4DD
		ldaa	byte_65
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
		suba	$14,x
		bcs	loc_F4E2
		ldaa	Port3
		bpl	loc_F4D6
		ldaa	#$40 ; '@'
		jsr	sub_F119

loc_F4D6:				; CODE XREF: sub_F420+AFj
		ldx	#$FFD2
		jsr	$11,x		; ffe3,	saturate count satcount_d1
		bra	loc_F4EB
; ---------------------------------------------------------------------------

loc_F4DD:				; CODE XREF: sub_F420+A2j
		ldaa	#$DF ; 'ﬂ'
		jsr	mask4E		; set bit5 low

loc_F4E2:				; CODE XREF: sub_F420+ABj
		sei
		orab	unk_4E		; used for flags in outcmp,inpcap
		stab	unk_4E		; potential to set bit 6 high
		clra
		staa	SatCount_D1	; clear	unk_d1
		cli

loc_F4EB:				; CODE XREF: sub_F420+BBj
		ldx	#$E6 ; 'Ê'
		ldd	#$5002
		cmpa	ADC_ThW		; compare to 80d
		bhi	loc_F506	; branch if over 80 deg	F
		cmpb	byte_60
		bhi	loc_F506
		ldaa	byte_65
		cmpa	#$50 ; 'P'
		bcc	loc_F506
		cmpa	#$40 ; '@'
		bcc	loc_F508
		ldx	#$1CC

loc_F506:				; CODE XREF: sub_F420+D3j sub_F420+D7j ...
		stx	SE056Mintime

loc_F508:				; CODE XREF: sub_F420+E1j
		ldab	byte_9E
		ldaa	byte_4C		; msb inhibits injection
		bmi	loc_F510
		addb	#$10

loc_F510:				; CODE XREF: sub_F420+ECj
		anda	#$3F ; '?'
		cmpb	byte_65
		bhi	loc_F51E
		ldab	byte_95
		bpl	loc_F51E
		oraa	#$C0 ; '¿'
		bra	loc_F531
; ---------------------------------------------------------------------------

loc_F51E:				; CODE XREF: sub_F420+F4j sub_F420+F8j
		ldab	byte_4C		; msb inhibits injection
		bpl	loc_F531
		psha
		ldaa	unk_D5
		cmpa	#6
		bhi	loc_F530
		ldd	#$139
		stab	byte_87
		bsr	loc_F534

loc_F530:				; CODE XREF: sub_F420+107j
		pula

loc_F531:				; CODE XREF: sub_F420+FCj
					; sub_F420+100j
		staa	byte_4C		; msb inhibits injection
		rts
; End of function sub_F420

; ---------------------------------------------------------------------------

loc_F534:				; CODE XREF: sub_FD41-C2EP
					; sub_F420+10Ep
		jsr	sub_F119
		ldaa	ADC_ThW		; compare to 72d
		cmpa	#72
		bhi	loc_F542	; branch if over 72 deg	F
		ldaa	#$DF ; 'ﬂ'
		jsr	mask4E		; set bit5 low

loc_F542:				; CODE XREF: ROM:F53Bj
		ldd	#$2004
		bita	unk_4E		; test bit 5
		beq	loc_F54E	; can be set to	4, or decremented
		ldab	byte_69
		ble	loc_F550
		decb

loc_F54E:				; CODE XREF: ROM:F547j
		stab	byte_69		; can be set to	4, or decremented

loc_F550:				; CODE XREF: ROM:F54Bj
		ldd	SE056plstime
		jsr	sub_F6FC
		std	word_7F
		ldaa	byte_4D
		rora
		bcc	loc_F571
		ldd	#$FDC
		cmpb	ADC_ThW		; compare to 220d
		bls	loc_F568	; branch if less than 220 deg F	(ie, not overheating)
		ldx	#$FEB6
		jsr	$65,x		; ff1b

loc_F568:				; CODE XREF: ROM:F561j
		std	byte_84
		ldx	#$FEC4
		jsr	$57,x		; ff1b
		std	unk_8C

loc_F571:				; CODE XREF: ROM:F55Aj
		ldaa	SatCount_D2
		cmpa	#2
		bhi	loc_F57F
		bsr	sub_F5CE
		ldx	#$FECB
		jsr	$50,x		; ff1b
; ---------------------------------------------------------------------------
		fcb $21	; !		; brn
; ---------------------------------------------------------------------------

loc_F57F:				; CODE XREF: ROM:F575j
		clra
		staa	byte_86
		ldd	word_62
		ldx	#$FE9C
		jsr	$91,x		; ff2d
		jsr	DivDby32
		adda	#8
		std	SE056Maxtime
		ldd	#$800
		jsr	sub_F6FC
		std	word_72
		ldx	#$FED2
		jsr	$49,x		; ff1b
		psha
		jsr	sub_F6E3
		std	word_70
		ldd	#$6666
		cmpb	word_42
		bls	loc_F5AC
		ldaa	#$B3 ; '≥'

loc_F5AC:				; CODE XREF: ROM:F5A8j
		cmpa	byte_5D		; =adc_tps - byte_5b, tps related
		bhi	loc_F5BB
		ldd	#$26F0
		cmpb	byte_65
		bhi	loc_F5C3
		ldaa	#$33 ; '3'
		bra	loc_F5C3
; ---------------------------------------------------------------------------

loc_F5BB:				; CODE XREF: ROM:F5AEj
		ldd	#$19C8
		cmpb	byte_92
		bls	loc_F5C3
		clra

loc_F5C3:				; CODE XREF: ROM:F5B5j	ROM:F5B9j ...
		staa	byte_88
		ldaa	byte_4C		; msb inhibits injection
		bpl	loc_F5EB
		bsr	sub_F5CE
		jmp	loc_F673

; =============== S U B	R O U T	I N E =======================================


sub_F5CE:				; CODE XREF: ROM:F577p	ROM:F5C9p
		ldd	word_7F
		std	word_90
		std	word_8E
		clra
		staa	byte_89
		rts
; End of function sub_F5CE


; =============== S U B	R O U T	I N E =======================================


sub_F5D8:				; CODE XREF: sub_F5E3+4Ap
		bcs	loc_F5E9
		inx
		subd	#$80 ; 'Ä'
		bcs	loc_F5E9
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
; ---------------------------------------------------------------------------
		fcb $21	; !		; brn
; ---------------------------------------------------------------------------

loc_F5E9:				; CODE XREF: sub_F5D8j	sub_F5D8+6j
		clrb

locret_F5EA:				; CODE XREF: sub_F5E3+1j
		rts
; ---------------------------------------------------------------------------

loc_F5EB:				; CODE XREF: ROM:F5C7j
		bita	#4
		bne	loc_F5F6
		ldd	byte_84
		subd	#$14
		bcc	loc_F5F7

loc_F5F6:				; CODE XREF: sub_F5E3+Aj
		clra

loc_F5F7:				; CODE XREF: sub_F5E3+11j
		std	byte_84
		ldab	#$FA ; '˙'
		addb	byte_87
		bcs	loc_F600
		clrb

loc_F600:				; CODE XREF: sub_F5E3+1Aj
		stab	byte_87
		ldd	word_90
		subd	word_7F
		bcs	loc_F61A
		deca
		bmi	loc_F61A
		bsr	sub_F5E0
		ldaa	#$CC ; 'Ã'
		mul
		ldab	#176
		cmpb	ADC_ThW		; water	temp in	farenheit
		bhi	loc_F61A
		ldab	byte_88
		beq	loc_F61B

loc_F61A:				; CODE XREF: sub_F5E3+23j sub_F5E3+26j ...
		clra

loc_F61B:				; CODE XREF: sub_F5E3+35j
		staa	byte_89
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
		ldaa	byte_60
		ldab	byte_4C		; msb inhibits injection
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
		stab	byte_4C		; msb inhibits injection

loc_F649:				; CODE XREF: sub_F5E3+60j
		bitb	#8
		bne	loc_F654
		ldaa	ADC_ThW		; water	temp in	farenheit
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
		ldab	byte_9E
		cmpb	byte_65
		bhi	loc_F671
		lsra

loc_F671:				; CODE XREF: sub_F5E3+8Bj
		pulb
		mul

loc_F673:				; CODE XREF: ROM:F5CBJ
		tab
		ldaa	byte_4C		; msb inhibits injection
		bita	#4
		beq	loc_F67B
		clrb

loc_F67B:				; CODE XREF: sub_F5E3+95j
		clra
		lsld
		lsld
		subb	byte_87
		sbca	#$FF
		pshb
		psha
		pulx
		ldab	byte_84
		abx
		abx
		ldab	byte_86
		abx
		abx
		ldd	byte_88
		abx
		tab
		abx
		pshx
		pula
		inca
		staa	word_D3
		ldaa	unk_83
		psha
		bsr	loc_F6E6+1	; DC72 is LDD $72
		addd	word_72
		std	word_72
		bsr	sub_F70A
		lsrd
		lsrd
		std	word_72
		bsr	mulDbyStack	; returns upper	16b in d

loc_F6A8:				; CODE XREF: sub_F5E3+CCj
		dec	word_D3
		beq	loc_F6B1
		addd	word_72
		bra	loc_F6A8
; ---------------------------------------------------------------------------

loc_F6B1:				; CODE XREF: sub_F5E3+C8j
		std	word_72
		ldx	#$FF9D
		jsr	$46,x		; ffe3,	saturate count satcount_9c
		jsr	sub_F7BE
; End of function sub_F5E3


; =============== S U B	R O U T	I N E =======================================


sub_F6BB:				; CODE XREF: sub_F96A+C4P
		ldd	#$801
		bita	byte_4D
		bne	sub_F6D4
		cmpb	SatCount_9C
		ldd	word_72
		bcs	loc_F6D8
		ldab	unk_8B
		addb	unk_8C
		pshb
		bsr	sub_F6E3
		lsld
		addd	word_72
		bra	loc_F6D8
; End of function sub_F6BB


; =============== S U B	R O U T	I N E =======================================


sub_F6D4:				; CODE XREF: sub_F6BB+5j sub_F96A+8AP
		ldaa	word_76
		bsr	sub_F700	; word_72 multiplied by	msB of word_76 with some shifting returned in d

loc_F6D8:				; CODE XREF: sub_F6BB+Bj sub_F6BB+17j
		subd	word_70
		bcs	loc_F6DE
		clra
		clrb

loc_F6DE:				; CODE XREF: sub_F6D4+6j
		addd	word_70
		std	unk_74
		rts
; End of function sub_F6D4


; =============== S U B	R O U T	I N E =======================================


sub_F6E3:				; CODE XREF: ROM:F59EP	sub_F6BB+12p ...
		ldd	word_72
		lsld

loc_F6E6:				; CODE XREF: sub_F5E3+B7p
		cpx	#$DC72		; DC72 is LDD $72
; End of function sub_F6E3


; =============== S U B	R O U T	I N E =======================================

; returns upper	16b in d

mulDbyStack:				; CODE XREF: ROM:F1FFP	sub_F5E3+C3p ...
		psha
		tsx			; transfer sack	ptr to index register
		ldaa	3,x		; 0,x is acca, (1/2),x is return vector
		mul			; whats	accb up	to?
		pulb
		psha
		ldaa	3,x
		mul
		addb	0,x
		adca	#0
		ins			; sort of like popping the stack, but without corrupting a register in the process
		pulx
		ins			; gets rid of 8b that was pushed before	sub call
		jmp	0,x		; like an rts from hell
; End of function mulDbyStack


; =============== S U B	R O U T	I N E =======================================


sub_F6FC:				; CODE XREF: ROM:F552P	ROM:F593P
		std	word_72
		ldaa	byte_8A
; End of function sub_F6FC


; =============== S U B	R O U T	I N E =======================================


sub_F700:				; CODE XREF: sub_F6D4+2p ROM:F74Fj
		psha
		bsr	sub_F6E3	; wultiply word_72 by stack with some shifting
		addd	word_72
		lsrd
		addd	word_72
		lsrd
		rts
; End of function sub_F700


; =============== S U B	R O U T	I N E =======================================


sub_F70A:				; CODE XREF: sub_F5E3+BDp
		ldaa	byte_65
		ldab	#202
		mul
		psha
		ldd	word_7F
		bsr	mulDbyStack	; returns upper	16b in d
		jsr	sub_F5E1
		stab	byte_92
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
		cmpa	byte_92
		bcc	loc_F72E
		clc
		bra	loc_F731
; ---------------------------------------------------------------------------

loc_F72E:				; CODE XREF: sub_F70A:loc_F725j
					; sub_F70A+1Fj
		suba	byte_92
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
		addb	#$80 ; 'Ä'
		tba
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
; End of function sub_F70A		; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb $99	; ô
		fcb $5C	; \
; ---------------------------------------------------------------------------
		adda	word_42
		suba	#$80 ; 'Ä'
		staa	byte_D6
		bra	sub_F700

; =============== S U B	R O U T	I N E =======================================


sub_F751:				; CODE XREF: sub_F96A+75P
		ldaa	word_42
		ldab	word_40		; if we	call this the start of user ram, it's exactly 192 bytes (inclusive)
		ldx	byte_95
		bpl	loc_F768
		cba
		rora
		eora	byte_93
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
		adda	byte_93
		subb	#$F
		cba
		bcc	loc_F771
		tba

loc_F771:				; CODE XREF: sub_F751+1Dj
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
; End of function sub_F751		; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb $B3	; ≥
		fcb $24	; $
; ---------------------------------------------------------------------------
		bcs	loc_F798
		psha
		ldaa	byte_95
		bpl	loc_F797
		ldaa	byte_5C
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb $8A	; ä
		fcb $76	; v
; ---------------------------------------------------------------------------
		bcs	loc_F797
		ldaa	word_44
		adda	byte_93
		bvs	loc_F797
		adda	byte_93
		bvs	loc_F797
		tab
		comb
		std	word_44
		inc	byte_5C

loc_F797:				; CODE XREF: ROM:F77Bj	ROM:F784j ...
		pula

loc_F798:				; CODE XREF: ROM:F776j
		tab
		comb
		std	word_42
		pula
		tab
		comb
		std	word_40		; if we	call this the start of user ram, it's exactly 192 bytes (inclusive)
		rts
; ---------------------------------------------------------------------------
		fcb $19			; data (f7f1 entry)
		fcb $96	; ñ
		fcb   7
		fcb $AD	; ≠
		fcb   0			; word data
		fcb $EB	; Î
		fcb   0			; word data
		fcb $4E	; N
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_F7BE

loc_F7AA:				; CODE XREF: sub_F7BE+8j
		orab	#4
		ldaa	#$71 ; 'q'

loc_F7AE:
		staa	unk_9B

loc_F7B0:				; CODE XREF: sub_F7BE+Cj sub_F7BE+10j	...
		clr	SatCount_CE

loc_F7B3:				; CODE XREF: sub_F7BE+18j
		andb	#$F7 ; '˜'
		stab	byte_4D
		ldd	#$8000
		stab	byte_94
		bra	loc_F811
; END OF FUNCTION CHUNK	FOR sub_F7BE

; =============== S U B	R O U T	I N E =======================================


sub_F7BE:				; CODE XREF: sub_F5E3+D5P

; FUNCTION CHUNK AT F7AA SIZE 00000014 BYTES

		ldab	byte_4D
		bpl	loc_F7C4
		andb	#$FB ; '˚'

loc_F7C4:				; CODE XREF: sub_F7BE+2j
		ldx	unk_83
		bne	loc_F7AA
		ldx	byte_87
		bne	loc_F7B0
		ldaa	byte_4C		; msb inhibits injection
		bmi	loc_F7B0
		ldaa	SatCount_97
		bmi	loc_F7B0
		bitb	#4
		bne	loc_F7B3
		orab	#8
		stab	byte_4D
		ldd	#$6C6F
		ldx	#1024
		cpx	word_7F
		bhi	loc_F7E7	; bounce
		tba

loc_F7E7:				; CODE XREF: sub_F7BE+26j
		ldx	#$FF9C
		jsr	8,x		; ffa4
		staa	unk_9B
		ldx	#$F7A6		; 235@offset 0,	78 at offset 2

loc_F7F1:				; p4-2 is IDL, active high when	IDL switch is closed
		ldab	Port4
		bitb	#4		; p4-2 is IDL, active high when	IDL switch is closed
		beq	loc_F7F9	; bounce if not	throttle closed
		inx
		inx			; x would then be F7A8,	different for other entry points

loc_F7F9:				; CODE XREF: sub_F7BE+37j
		ldaa	unk_9A		; oxygen sensor	related
		asla
		ldd	word_76
		bcc	loc_F802+1	; if msb of unk_9a is low, addd	0,x
		subd	0,x

loc_F802:				; CODE XREF: sub_F7BE+40j
		cpx	#$E300		; e300 is addd 0,x
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
		std	word_76
		rts
; End of function sub_F7BE

; ---------------------------------------------------------------------------

loc_F814:				; CODE XREF: sub_FD41-C39P
		ldd	#$11C
		anda	unk_CD
		bne	loc_F829
		ldaa	unk_C6
		bpl	loc_F829
		ldaa	byte_95
		bpl	loc_F859
		ldaa	Port4		; p4-5 is T input to pcm, test mode is active low
		anda	#$20 ; ' '      ; p4-5 is T input to pcm, test mode is active low
		bne	loc_F82C

loc_F829:				; CODE XREF: ROM:F819j	ROM:F81Dj
		jmp	loc_F8EE
; ---------------------------------------------------------------------------

loc_F82C:				; CODE XREF: ROM:F827j
		ldaa	word_C1
		suba	unk_C3
		jsr	boundDataneg	; Limits AccA to bounds	set by two bytes after call
; ---------------------------------------------------------------------------
		fcb $10
		fcb   0
; ---------------------------------------------------------------------------
		ldab	#$88 ; 'à'
		mul
		lsld
		lsld
		ldab	Port4		; p4-3 is ac input, active high
		andb	#8		; p4-3 is ac input, active high
		beq	loc_F847
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb  $E
		fcb   0
; ---------------------------------------------------------------------------
		ldab	#$E

loc_F847:				; CODE XREF: ROM:F83Ej
		staa	byte_A6
		ldaa	#$2D ; '-'
		aba
		clrb
		stab	SatCount_C7
		ldab	word_42
		cmpb	#$42 ; 'B'
		bcc	loc_F857
		adda	#$E

loc_F857:				; CODE XREF: ROM:F853j
		bra	loc_F8AD
; ---------------------------------------------------------------------------

loc_F859:				; CODE XREF: ROM:F821j
		clr	byte_A6
		ldx	#$FFC8
		jsr	$1B,x		; ffe3,	saturate count satcount_C7
		cmpa	#5
		bcc	loc_F86C
		ldab	#$11
		addb	byte_A4
		jmp	loc_F8F0
; ---------------------------------------------------------------------------

loc_F86C:				; CODE XREF: ROM:F863j
		ldd	word_7F
		cmpa	#$B
		bls	loc_F875	; now maximum value can	only be	$9FF, this is basically	subtracting 512
		ldd	#3071		; saturate word_7f to $0BFF

loc_F875:				; CODE XREF: ROM:F870j
		suba	#2		; now maximum value can	only be	$9FF, this is basically	subtracting 512
		bcc	loc_F87B	; bounce if good, otherwise null out
		clra
		clrb

loc_F87B:				; CODE XREF: ROM:F877j
		lsrd			; divide by 2, maximum range is	now 4FF
		pshb
		ldab	#$E		; suggests table size is 14 bytes
		mul			; output can range from	0,E,1c,2a,38
		ldx	#$FF40
		abx
		ldaa	byte_64
		pshx
		ldab	#$E
		abx
		jsr	loc_FF28	; another entry	point
		pulx
		psha
		ldaa	byte_64
		jsr	loc_FF28	; another entry	point
		psha
		tsx
		ldd	1,x
		suba	0,x
		jsr	sub_FF35	; finish up the	3d table interpolation by calling the final portion of the 2d table interpolate	code
		ins
		pulx
		ldab	unk_99		; TVIS related
		bmi	loc_F8A5	; bounce around	tweaking the output of 3d table	lookup
		adda	#8

loc_F8A5:				; CODE XREF: ROM:F8A1j
		ldx	#$FF94		; use output of	3d table lookup	as input to this function
		jsr	$10,x		; ffa4
		bcc	loc_F8AD	; bounce if no carry
		clra

loc_F8AD:				; CODE XREF: ROM:loc_F857j ROM:F8AAj
		staa	byte_A3		; stores output	from 3d	lookup
		ldaa	ADC_ThW		; water	temp in	farenheit
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb $98	; ò
		fcb $50	; P
; ---------------------------------------------------------------------------
		bcs	loc_F8CD+1	; clra clrb
		ldx	#$5AA
		ldaa	byte_A5
		beq	loc_F8C2
		ldx	#1550

loc_F8C2:				; CODE XREF: ROM:F8BDj
		cpx	word_7F
		bcs	loc_F8CD+1	; clra clrb
		ldaa	byte_95
		bmi	loc_F8CD+1	; clra clrb
		ldd	#$FFD6

loc_F8CD:				; CODE XREF: ROM:F8B6j	ROM:F8C4j ...
		cpx	#$4F5F		; clra clrb
		stab	byte_A5
		addb	byte_A4
		adca	#0
		addb	byte_A3		; stores output	from 3d	lookup
		adca	#0
		addb	byte_A6
		adca	#0
		bpl	loc_F8E2
		clra
		clrb

loc_F8E2:				; CODE XREF: ROM:F8DEj
		jsr	sub_F5E3
		tba
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb $B8	; ∏
		fcb $1F
; ---------------------------------------------------------------------------
		tab
		subb	#$1C

loc_F8EE:				; CODE XREF: ROM:loc_F829J
		stab	unk_D8

loc_F8F0:				; CODE XREF: ROM:F869J
		addb	#1
		pshb
		ldd	deltaNE		; outcomp
		jsr	DivDby16
		std	word_D3
		ldd	deltaNE		; outcomp
		jsr	mulDbyStack	; returns upper	16b in d
		lsrd
		inca
		subd	word_D3
		bcs	loc_F90D
		subd	deltaInCp2TL
		bcs	loc_F90B
		clra
		clrb

loc_F90B:				; CODE XREF: ROM:F907j
		addd	deltaInCp2TL

loc_F90D:				; CODE XREF: ROM:F903j
		std	word_A1		; OC1/igt related
		ldd	word_D3
		addd	word_BF
		std	word_BB		; outcomp
		lsrd
		std	word_D3
		ldd	deltaNE		; outcomp
		subd	word_B5		; ADC_AFMr*4+384
		subd	#100
		subd	word_D3
		bcs	loc_F925
		clra
		clrb

loc_F925:				; CODE XREF: ROM:F921j
		addd	word_D3
		std	word_B3
		ldaa	#1
		ldab	unk_C6
		bmi	loc_F936
		sei
		oraa	TmrCntStat1	; set output compare level to high
		staa	TmrCntStat1	; set output compare level to high
		bra	loc_F950
; ---------------------------------------------------------------------------

loc_F936:				; CODE XREF: ROM:F92Dj
		bsr	OutCmp1Sub1	; called from output compare ISR
		std	word_D3
		ldd	#$C02
		eora	unk_4E		; xor with $0C %00001100
		bita	#%1110
		bne	loc_F950	; branch if bits 2,3 were low or bit 1 was high
		bitb	Port2		; looking at /IGT
		beq	loc_F950	; branch if /IGT low
		ldd	word_D3
		std	OutCmp1
		ldx	TmrCntStat1
		jsr	stdOC1		; write	d to outcmp

loc_F950:				; CODE XREF: ROM:F934j	ROM:F941j ...
		cli
		rts

; =============== S U B	R O U T	I N E =======================================

; called from output compare ISR

OutCmp1Sub1:				; CODE XREF: ROM:F3A9P	ROM:loc_F936p
		ldd	deltaNE		; outcomp
		subd	word_A1		; OC1/igt related
		subd	word_BB		; outcomp
		bcc	loc_F95C
		clra
		clrb

loc_F95C:				; CODE XREF: OutCmp1Sub1+6j
		addd	LastIC2treg
		sei
		subd	word_BD		; output compare routine only
		cmpa	#$E8 ; 'Ë'
		bcs	loc_F967
		clra
		clrb

loc_F967:				; CODE XREF: OutCmp1Sub1+11j
		addd	word_BD		; output compare routine only
		rts
; End of function OutCmp1Sub1


; =============== S U B	R O U T	I N E =======================================


sub_F96A:				; CODE XREF: sub_FD41:loc_F0FAP
		ldx	#$FF69
		jsr	$7A,x		; ffe3,	saturate count satcount_68
		ldd	#$77F
		anda	unk_5F
		andb	Port1		; anding with 7f=0b0111111
		cmpa	unk_D7
		bcs	loc_F97C	; has potential	to toggle bit 7	- /VF ouput generation
		orab	#$80 ; 'Ä'

loc_F97C:				; CODE XREF: sub_F96A+Ej
		stab	Port1		; has potential	to toggle bit 7	- /VF ouput generation
		ldaa	ADC_Oxy
		cmpa	#23
		ldaa	unk_9A		; oxygen sensor	related
		bcs	oxy_low
		inca
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb $81	; Å
		fcb $67	; g
; ---------------------------------------------------------------------------
		bra	loc_F995
; ---------------------------------------------------------------------------

oxy_low:				; CODE XREF: sub_F96A+1Aj
		deca
		cmpa	unk_9B
		bcc	loc_F995
		ldaa	unk_9B

loc_F995:				; CODE XREF: sub_F96A+22j sub_F96A+27j
		staa	unk_9A		; oxygen sensor	related
		eora	byte_4D
		anda	#$80 ; 'Ä'
		beq	loc_F9F7
		eora	byte_4D
		staa	byte_4D
		bita	#8
		beq	loc_F9F7
		ldab	#1
		ldaa	word_76
		adda	byte_93
		rora
		bmi	loc_F9AF
		negb

loc_F9AF:				; CODE XREF: sub_F96A+42j
		stab	byte_93
		ldab	byte_95
		bmi	loc_F9BF
		ldab	byte_5C
		cba
		decb
		bcs	loc_F9BD
		addb	#2

loc_F9BD:				; CODE XREF: sub_F96A+4Fj
		stab	byte_5C

loc_F9BF:				; CODE XREF: sub_F96A+49j
		ldd	#$B020
		cmpa	ADC_ThW		; compare water	temp to	176 deg	F
		bhi	loc_F9E2
		ldx	word_7F
		cpx	#400
		bitb	Port4		; interested in	bit 5 -	test input
		bls	loc_F9E2	; branch if test is pulled low or the carry was	set (word_7f-400)
		ldaa	unk_CD
		bita	#1
		bne	loc_F9E2
		ldaa	unk_96
		bmi	loc_F9E2
		ldaa	byte_94
		cmpa	#5
		bcs	loc_F9E5
		jsr	sub_F751

loc_F9E2:				; CODE XREF: sub_F96A+5Aj sub_F96A+63j ...
		clra
		staa	byte_94

loc_F9E5:				; CODE XREF: sub_F96A+73j
		inc	byte_94
		ldaa	word_76
		staa	byte_93
		ldx	#$F7A2
		jsr	$4F,x		; f7f1 - data product seems to be word_76
		clra
		staa	SatCount_CE	; reset	satcount_ce
		jsr	sub_F6D4	; end product seems to be word_74

loc_F9F7:				; CODE XREF: sub_F96A+31j sub_F96A+39j
		ldaa	byte_95
		ldab	Port4		; p4-2 is IDL input, active low
		andb	#4
		beq	loc_FA0E	; bounce if not	throttle closed
		tsta
		bmi	loc_FA05
		clr	byte_94

loc_FA05:				; CODE XREF: sub_F96A+96j
		ldab	byte_5D		; =adc_tps - byte_5b, tps related
		bmi	loc_FA3B
		inca
		bne	loc_FA39
		bra	loc_FA3B
; ---------------------------------------------------------------------------

loc_FA0E:				; CODE XREF: sub_F96A+93j
		stab	byte_87
		tsta			; AccA is still	byte_95
		bmi	loc_FA19
		cmpa	#$1C
		bcs	loc_FA31
		bra	loc_FA26
; ---------------------------------------------------------------------------

loc_FA19:				; CODE XREF: sub_F96A+A7j
		ldaa	byte_65
		cmpa	#100
		bcc	loc_FA26
		ldd	#2000
		jsr	sub_F121
		cli

loc_FA26:				; CODE XREF: sub_F96A+ADj sub_F96A+B3j
		ldaa	byte_4D
		anda	#1
		bne	loc_FA31
		staa	SatCount_9C
		jsr	sub_F6BB

loc_FA31:				; CODE XREF: sub_F96A+ABj sub_F96A+C0j
		ldab	byte_4C		; msb inhibits injection
		andb	#$3F ; '?'      ; clear bits 7 and 6
		stab	byte_4C		; msb inhibits injection
		ldaa	#3

loc_FA39:				; CODE XREF: sub_F96A+A0j
		staa	byte_95

loc_FA3B:				; CODE XREF: sub_F96A+9Dj sub_F96A+A2j
		ldd	#$10FE
		anda	Port4		; p4-4 is start	signal
		beq	loc_FA60	; bounce if not	starting
		andb	byte_4C		; msb inhibits injection
		stab	byte_4C		; clear	lsb if starting
		ldaa	byte_4B
		ldab	unk_C6
		bmi	loc_FA62
		inca
		beq	loc_FA75
		staa	byte_4B		; increment unk_4b
		cmpa	#25
		bcs	loc_FA62	; less than 25
		bhi	loc_FA75	; more than 25
		ldd	#9000		; exactly 25
		jsr	sub_F129
		cli
		bra	loc_FA75
; ---------------------------------------------------------------------------

loc_FA60:				; CODE XREF: sub_F96A+D6j
		staa	byte_4B

loc_FA62:				; CODE XREF: sub_F96A+E0j sub_F96A+E9j
		ldab	#$4B ; 'K'
		cmpb	SatCount_68
		bcc	loc_FA83
		ldab	#$12
		stab	byte_65		; write	$12 to unk_65
		tsta
		bne	loc_FA75
		ldaa	#1
		oraa	byte_4C		; msb inhibits injection
		staa	byte_4C		; msb inhibits injection

loc_FA75:				; CODE XREF: sub_F96A+E3j sub_F96A+EBj ...
		ldd	#$405
		orab	byte_4D
		stab	byte_4D
		staa	unk_C6
		staa	byte_69
		clra
		staa	SatCount_CE

loc_FA83:				; CODE XREF: sub_F96A+FCj
		ldaa	unk_C6
		bpl	loc_FA92
		ldd	#$14FE
		cmpa	byte_65
		bhi	loc_FA92
		andb	byte_4D
		stab	byte_4D

loc_FA92:				; CODE XREF: sub_F96A+11Bj
					; sub_F96A+122j
		ldab	byte_4D
		bitb	#1
		beq	procJmpTable
		clr	SatCount_D2
; End of function sub_F96A


; =============== S U B	R O U T	I N E =======================================


procJmpTable:				; CODE XREF: sub_FD41-CEFP
					; sub_F96A+12Cj
		ldab	ADCcontrol	; controls a jump table	at fa9b, also deselects	ADC with LSB, also controls which channel to select
		andb	#6
		ldx	#JumpTable	; jump table 4 vectors
		abx			; x can	only be	$FD39, $FD3B, $FD3D or $FD3F
		ldx	0,x
		jsr	0,x		; assuming adccontrol is simply	incrementing, even probability of either subroutine
; End of function procJmpTable


loc_FAA7:				; CODE XREF: sub_FD41-C9EP
		ldx	#36

waitADCdata:				; CODE XREF: ROM:FAB1j
		dex
		beq	TXtoADC		; Transmist adc	channel	selection to ADC
		ldd	ADCflags	; accb contains	adcrxdata
		anda	#$80 ; 'Ä'
		beq	waitADCdata	; loop while msb of adcflags is	low
		coma
		sei
		anda	ADCflags	; flag which can be modified in	an interrupt, msb inidicates adc data is pending in adcrxdata
		staa	ADCflags	; ack the msb by clearing it, and possibly everthing else too.
		cli
		pshb			; adcrxdata on the stack
		bsr	ADCchanSelect
		ldx	#$54 ; 'T'
		abx			; x now	contains $54+0..5
		bsr	TXtoADC		; Transmist adc	channel	selection to ADC
		pulb
		ldaa	#1

revBitOrder:				; CODE XREF: ROM:FAC8j
		rorb			; push new lsb into carry
		rola			; pull old lsb out of carry
		bcc	revBitOrder	; this loop will reverse the bit order of the value in B and leave the new value in A
		cpx	#$57 ; 'W'
		bne	procThA		; do not jump for $57, jump for	$56
		pshx			; process data from water temp sensor ThW
		ldx	#$FEF0
		jsr	$38,x		; ff28
		bsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb $F1	; Ò		; 241 deg F
		fcb   4			; 4 deg	F
; ---------------------------------------------------------------------------
		bcc	loc_FADD	; if the carry was clear the data was not clipped
		ldaa	ADC_ThW		; water	temp in	farenheit

loc_FADD:				; CODE XREF: ROM:FAD9j
		psha
		ldaa	#4
		jsr	sub_FD02	; acca=$04
		pula
		bcc	saveADCdata1
		ldaa	#$C0 ; '¿'      ; default water temp?
		bra	saveADCdata1
; ---------------------------------------------------------------------------

procThA:				; CODE XREF: ROM:FACDj
		cpx	#$56 ; 'V'
		bne	saveADCdata2
		pshx			; process data from air	temp sensor ThA
		bsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb $FA	; ˙
		fcb   6
; ---------------------------------------------------------------------------
		bcc	loc_FAF8
		ldaa	ADC_ThA

loc_FAF8:				; CODE XREF: ROM:FAF4j
		psha
		ldaa	#$40 ; '@'
		jsr	sub_FD02	; acca=$40
		pula
		bcc	saveADCdata1
		ldaa	#$79 ; 'y'      ; default air temp?

saveADCdata1:				; CODE XREF: ROM:FAE4j	ROM:FAE8j ...
		pulx

saveADCdata2:				; CODE XREF: ROM:FAEDj
		staa	0,x
		rts

; =============== S U B	R O U T	I N E =======================================

; Transmist adc	channel	selection to ADC

TXtoADC:				; CODE XREF: ROM:FAABj	ROM:FAC1p
		ldaa	Port3
		bita	#$40 ; '@'
		beq	loc_FB15	; test to see if we're talking to the ADC (p3-6 low)
		pshx

txwaitFB0E:				; CODE XREF: TXtoADC+Bj
		ldx	Timer		; load timer
		cpx	EndTxByteTime	; word_51 is 320us greater than	the termination	of the last serial interrupt
		bmi	txwaitFB0E	; loop while time haas not expired yet,	while presumably tx is busy
		pulx

loc_FB15:				; CODE XREF: TXtoADC+4j
		inc	ADCcontrol	; controls a jump table	at fa9b, also deselects	ADC with LSB, also controls which channel to select

loc_FB18:				; CODE XREF: ROM:F3E4P
		bsr	ADCchanSelect	; called here from serial interrupt when receive error was detected
		ldaa	#$C		; external clock, 62500	baud (not that thats relevant i	guess)
		staa	UARTRateMode
		ldaa	#$1A		; Rx int enable, rx enable, tx enable
		staa	TxRxCntStat
		ldaa	TxRxCntStat	; read from reg	to clear any pending error bits
		ldaa	#$BF ; 'ø'
		sei
		anda	Port3		; safely clear ADC /CS without clobbering other	pins
		staa	Port3		; safely clear ADC /CS without clobbering other	pins
		stab	TxReg		; tx a value based on the value	in ADCcontrol
		cli
		rts
; End of function TXtoADC


; =============== S U B	R O U T	I N E =======================================


ADCchanSelect:				; CODE XREF: ROM:FABBp
					; TXtoADC:loc_FB18p
		ldab	ADCcontrol	; controls a jump table	at fa9b, also deselects	ADC with LSB, also controls which channel to select
		lsrb			; lsb into carry bit
		bcs	loc_FB37	; branch if lsb	was high
		ldab	#5		; otherwise return 5
		rts
; ---------------------------------------------------------------------------

loc_FB37:				; CODE XREF: ADCchanSelect+3j
		andb	#7
		cmpb	#7
		beq	loc_FB40	; if adccontrol	was initially $xF, return 4
		andb	#3		; if adccontrol	was any	odd number NOT $xF, return values in the range of 0..3
		rts
; ---------------------------------------------------------------------------

loc_FB40:				; CODE XREF: ADCchanSelect+Cj
		ldab	#4		; if adccontrol	was initially $xF, return 4
		rts
; End of function ADCchanSelect


; =============== S U B	R O U T	I N E =======================================

; Limits AccA to bounds	set by two bytes after call

boundDataneg:				; CODE XREF: sub_F420+93P ROM:F830P ...
		bcc	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
		clra
; End of function boundDataneg


; =============== S U B	R O U T	I N E =======================================

; Limits AccA to bounds	set by two bytes after call
; Carry	bit is only set	if data	has been clipped at either level
;

boundData:				; CODE XREF: sub_FD41-C65P
					; sub_F420+A6P	...
		pulx
		cmpa	0,x
		bls	boundData2
		ldaa	0,x
		bra	boundData3
; ---------------------------------------------------------------------------

boundData2:				; CODE XREF: boundData+3j
		cmpa	1,x
		bcc	boundDataend
		ldaa	1,x

boundData3:				; CODE XREF: boundData+7j
		sec

boundDataend:				; CODE XREF: boundData+Bj
		jmp	2,x
; End of function boundData

; ---------------------------------------------------------------------------

jmptable2:				; DATA XREF: ROM:FD3Bo
		ldaa	ADC_TPS
		bsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb $FA	; ˙
		fcb   5
; ---------------------------------------------------------------------------
		psha
		ldaa	#$20 ; ' '
		jsr	sub_FD02	; acca=$20
		pula
		bcc	loc_FB6E
		ldd	#$FF73
		stab	byte_5D		; =adc_tps - byte_5b, tps related
		bra	loc_FBD4
; ---------------------------------------------------------------------------

loc_FB6E:				; CODE XREF: ROM:FB65j
		ldab	byte_CC		; used for flagging bad	sensors	probably, bits:	6-ThA, 5-TPS, 2-ThW, 0-afm(not from adc)
		bitb	#$20 ; ' '
		bne	loc_FBD2
		ldab	byte_95
		bmi	loc_FB7C
		ldaa	byte_5B		; TPS related
		bra	loc_FB8F
; ---------------------------------------------------------------------------

loc_FB7C:				; CODE XREF: ROM:FB76j
		adda	byte_5B		; TPS related
		rora
		adda	byte_5B		; TPS related
		rora
		cmpb	#$83 ; 'É'
		bhi	loc_FB89
		inc	byte_5B		; TPS related

loc_FB89:				; CODE XREF: ROM:FB84j
		ldab	byte_5B		; TPS related
		cba			; a-b
		bcs	loc_FB8F	; select lower
		tba

loc_FB8F:				; CODE XREF: ROM:FB7Aj	ROM:FB8Cj
		bsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb $29	; )
		fcb   5
; ---------------------------------------------------------------------------
		bcc	loc_FB97
		ldaa	#$26 ; '&'

loc_FB97:				; CODE XREF: ROM:FB93j
		staa	byte_5B		; TPS related
		ldaa	ADC_TPS
		suba	byte_5B		; TPS related
		bcc	loc_FBA0
		clra

loc_FBA0:				; CODE XREF: ROM:FB9Dj
		staa	byte_5D		; =adc_tps - byte_5b, tps related
		ldaa	byte_95
		bmi	loc_FBD2
		ldaa	byte_5D		; =adc_tps - byte_5b, tps related
		suba	byte_5A
		bcs	loc_FBD2
		cmpa	#4
		bcs	loc_FBD2
		bsr	boundDataneg	; Limits AccA to bounds	set by two bytes after call
; ---------------------------------------------------------------------------
		fcb $1C
		fcb   0
; ---------------------------------------------------------------------------
		ldx	#$FEA7
		clrb
		jsr	$84,x		; ff2b
		ldab	byte_65
		cmpb	#80
		bcs	loc_FBC1
		lsra

loc_FBC1:				; CODE XREF: ROM:FBBEj
		psha
		ldd	SE056Maxtime
		subd	SE056plstime
		bls	loc_FBD1	; increment the	stack pointer
		jsr	mulDbyStack	; returns upper	16b in d
		lsld
		jsr	sub_F121
		cli
; ---------------------------------------------------------------------------
		fcb $21	; !		; branch never,	next byte is ignored when falling through
; ---------------------------------------------------------------------------

loc_FBD1:				; CODE XREF: ROM:FBC6j
		ins

loc_FBD2:				; CODE XREF: ROM:FB72j	ROM:FBA4j ...
		ldaa	byte_5D		; =adc_tps - byte_5b, tps related

loc_FBD4:				; CODE XREF: ROM:FB6Cj
		staa	byte_5A
		rts
; ---------------------------------------------------------------------------

jmptable4:				; DATA XREF: ROM:FD3Fo
		ldx	#$FEE2
		jsr	$39,x		; ff1b
		ldab	SatCount_D2
		cmpb	#$4C ; 'L'
		bhi	loc_FBE4	; p4-3 is ac input, active high
		adda	#$10

loc_FBE4:				; CODE XREF: ROM:FBE0j
		ldab	Port4		; p4-3 is ac input, active high
		bitb	#8
		beq	loc_FBEF
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb $FF			; data for fb46
		fcb $3C	; <
; ---------------------------------------------------------------------------

loc_FBEF:				; CODE XREF: ROM:FBE8j
		staa	byte_9E
		ldaa	ADC_ThA
		ldx	#$FED9
		jsr	$4C,x		; ff25
		staa	byte_8A
		ldx	#$FF0A
		jsr	$11,x		; ff1b
		ldab	ADC_ThW		; water	temp in	farenheit
		subb	#$DA ; '⁄'
		bcs	loc_FC1E
		tba
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		fcb  $F
		fcb   0
; ---------------------------------------------------------------------------
		ldx	#$FF11
		clrb
		jsr	$19,x		; ff2a
		ldab	byte_95
		bmi	loc_FC1C
		ldx	word_7F
		cpx	#2500
		bcc	loc_FC1E

loc_FC1C:				; CODE XREF: ROM:FC13j
		ldaa	#$1C

loc_FC1E:				; CODE XREF: ROM:FC03j	ROM:FC1Aj
		staa	byte_A4
		ldaa	byte_4A
		cmpa	#$5A ; 'Z'
		bne	loc_FC33
		ldx	#$C

loc_FC29:				; CODE XREF: ROM:FC31j
		dex			; tests	to see if these	bytes match the	initialization conditions set below
		dex
		beq	loc_FC47
		ldd	$3E,x		; first	load is	$48, last load is $40
		aba
		inca
		beq	loc_FC29	; tests	to see if these	bytes match the	initialization conditions set below

loc_FC33:				; CODE XREF: ROM:FC24j
		ldx	#$807F
		stx	word_42
		stx	word_40		; if we	call this the start of user ram, it's exactly 192 bytes (inclusive)
		ldx	#$FF
		stx	word_46
		stx	word_48
		stx	word_44
		ldaa	#$5A ; 'Z'
		staa	byte_4A

loc_FC47:				; CODE XREF: ROM:FC2Bj
		ldab	byte_65
		ldaa	Port1		; interested in	 bit 6 /TVIS
		anda	#$BF ; 'ø'      ; and with bf force bit 6 low, tvis on
		cmpb	#$9E ; 'û'      ; 158
		bcs	loc_FC57	; branch if mem	$65 less than $9e
		cmpb	#$AE ; 'Æ'      ; 174
		bcs	loc_FC59	; branch if mem	$65 less than $ae - causes no change to	tvis bit
		oraa	#$40 ; '@'      ; tvis off

loc_FC57:				; CODE XREF: ROM:FC4Fj
		staa	Port1		; has capability to toggle bit 6 - /TVIS

loc_FC59:				; CODE XREF: ROM:FC53j
		ldaa	unk_99		; TVIS related
		ldab	Port1		; interested in	bit 6 /TVIS
		aslb
		bmi	loc_FC67
		deca
		bpl	loc_FC6C
		ldaa	#$F4 ; 'Ù'
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
		cmpa	#$E0 ; '‡'
		bne	locret_FC7B	; branch if not	mode7 =	internal
		eorb	Port1		; toggle the watchdog
		stab	Port1		; toggle watchdog bit 2

locret_FC7B:				; CODE XREF: CPUModeTst+7j
		rts
; End of function CPUModeTst


; =============== S U B	R O U T	I N E =======================================


DivDby32:				; CODE XREF: ROM:F589P	ROM:FC99p
		lsrd
; End of function DivDby32


; =============== S U B	R O U T	I N E =======================================


DivDby16:				; CODE XREF: sub_F420+39P ROM:F8F5P
		lsrd
		lsrd
		lsrd
		lsrd
		rts
; End of function DivDby16

; ---------------------------------------------------------------------------

jmptable3:				; DATA XREF: ROM:FD3Do
		ldaa	Port3		; test level of	bit4 (input from mixed signal se056)
		anda	#$10
		suba	#$10		; bit4 status is hidden	in carry
		ldaa	#1
		jsr	sub_FD02	; acca=$01
		ldaa	ADC_AFMr
		suba	#83
		bcc	loc_FC94
		clra

loc_FC94:				; CODE XREF: ROM:FC91j
		ldx	#$FEE9
		jsr	$3C,x		; ff25
		bsr	DivDby32
		addd	#464
		std	word_81		; injector related
		ldaa	ADC_AFMr
		ldx	#$FF12
		jsr	$13,x		; ff25
		lsrd
		lsrd
		lsrd
		addd	word_BF
		lsrd
		std	word_BF
		ldab	ADC_AFMr
		clra
		lsld
		lsld
		addd	#384
		std	word_B5		; ADC_AFMr*4+384
		bra	loc_FCD6
; ---------------------------------------------------------------------------

jmptable1:				; DATA XREF: ROM:JumpTableo
		ldaa	byte_95
		bpl	loc_FCC9
		ldab	word_42
		cmpb	#66
		bcc	loc_FCC9
		ldaa	Port1		; interested in	bit 5, output to port buffer
		bra	loc_FCD2	; bit 5	($20) goes to port buffer, is output
; ---------------------------------------------------------------------------

loc_FCC9:				; CODE XREF: ROM:FCBDj	ROM:FCC3j
		ldd	#$DF4C
		anda	Port1		; ignoring bit 4
		cmpb	SatCount_D2	; 76-satcount_d2
		bcs	loc_FCD4	; buffer off

loc_FCD2:				; CODE XREF: ROM:FCC7j
		oraa	#$20 ; ' '      ; bit 5 ($20) goes to port buffer, is output

loc_FCD4:				; CODE XREF: ROM:FCD0j
		staa	Port1		; can set or clear bit 5 (buffer)

loc_FCD6:				; CODE XREF: ROM:FCB9j
		ldx	#$FFD0
		jsr	$11,x		; FFE1,	saturate count satcount_CF and satcount_D0
		ldab	Port4		; P4-4,	STA input to pcm, high when starting
		bitb	#$10		; test P4-4, STA input to pcm, high when starting i think
		bne	loc_FCEE
		ldab	SatCount_CF
		clr	SatCount_CF
		cmpb	#243
		bcs	loc_FCEE
		cmpa	#$F3 ; 'Û'
		bcc	loc_FCFE

loc_FCEE:				; CODE XREF: ROM:FCDFj	ROM:FCE8j
		cmpa	#$25 ; '%'
		bcs	loc_FCF8
		ldaa	byte_65
		cmpa	#$28 ; '('
		bcc	loc_FCFE

loc_FCF8:				; CODE XREF: ROM:FCF0j
		ldab	SatCount_D1
		cmpb	#9
		bcs	locret_FD2C

loc_FCFE:				; CODE XREF: ROM:FCECj	ROM:FCF6j
		ldaa	#$10
		bra	sub_FD11

; =============== S U B	R O U T	I N E =======================================


sub_FD02:				; CODE XREF: ROM:FAE0P	ROM:FAFBP ...

; FUNCTION CHUNK AT FD2D SIZE 0000000C BYTES

		bcc	loc_FD2D
		bita	byte_CC		; used for flagging bad	sensors	probably, bits:	6-ThA, 5-TPS, 2-ThW, 0-afm(not from adc)
		bne	loc_FD0C
		oraa	byte_CC		; used for flagging bad	sensors	probably, bits:	6-ThA, 5-TPS, 2-ThW, 0-afm(not from adc)
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
		bitb	#$20 ; ' '      ; p4-5 is Test mode input. low is check mode
		beq	loc_FD1B
		ldab	#218
		stab	unk_C8

loc_FD1B:				; CODE XREF: sub_FD02+Dj sub_FD11+4j
		tab
		orab	unk_CD
		stab	unk_CD
		ldab	Port4		; p4-4 is STA input, active high
		bitb	#$10
		bne	locret_FD2C	; bomb out if STA starting
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
		anda	byte_CC		; used for flagging bad	sensors	probably, bits:	6-ThA, 5-TPS, 2-ThW, 0-afm(not from adc)

loc_FD35:				; CODE XREF: sub_FD02+8j
		staa	byte_CC		; used for flagging bad	sensors	probably, bits:	6-ThA, 5-TPS, 2-ThW, 0-afm(not from adc)
		clc
		rts
; END OF FUNCTION CHUNK	FOR sub_FD02
; ---------------------------------------------------------------------------
JumpTable:	fdb jmptable1		; DATA XREF: procJmpTable+4o
					; jump table 4 vectors
		fdb jmptable2
		fdb jmptable3		; test level of	bit4 (input from mixed signal se056)
		fdb jmptable4

; =============== S U B	R O U T	I N E =======================================


sub_FD41:				; CODE XREF: sub_FD41:loc_F0F7P

; FUNCTION CHUNK AT F000 SIZE 00000119 BYTES

		ldx	#$FEAF
		jsr	$6C,x		; ff1b
		staa	unk_83
		ldx	#$FEBD
		jsr	$5E,x		; ff1b
		staa	unk_8B
		ldd	#$B020
		cmpa	ADC_ThW		; compare against 176
		bhi	loc_FD5A
		cmpb	byte_92
		bls	loc_FD5D

loc_FD5A:				; CODE XREF: sub_FD41+13j
		clr	SatCount_CE

loc_FD5D:				; CODE XREF: sub_FD41+17j
		ldx	#$FFD3
		jsr	$10,x		; ffe3,	saturate count satcount_D2
		ldaa	byte_60
		bne	loc_FD79	; p4-5,	test input active low
		ldd	#$2001
		cmpa	byte_65
		bhi	loc_FD79	; p4-5,	test input active low
		ldaa	unk_C6
		bpl	loc_FD79	; p4-5,	test input active low
		andb	byte_4C		; msb inhibits injection
		orab	word_46
		tba
		comb
		std	word_46

loc_FD79:				; CODE XREF: sub_FD41+23j sub_FD41+2Aj ...
		ldab	Port4		; p4-5,	test input active low
		andb	#$20 ; ' '
		beq	loc_FDAE
		ldab	byte_4D
		andb	#8
		beq	loc_FD9D
		ldaa	word_76
		adda	byte_D6
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
		stab	unk_D7
		clra
		clrb
		std	word_C9
		coma
		staa	unk_CB
		ldab	byte_4D
		bitb	#1
		bne	loc_FE1B	; may set bit 3	- Idle up solenoid active high
		bra	loc_FDCE
; ---------------------------------------------------------------------------

loc_FDAE:				; CODE XREF: sub_FD41+3Cj
		ldaa	byte_95
		bmi	loc_FDB8	; p4-2 is IDL, p4-3 is AC, so idling and ac perhaps?
		ldaa	unk_9A		; oxygen sensor	related
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
		ldx	word_C9
		bne	loc_FE19
		ldaa	#$5E ; '^'

loc_FE19:				; CODE XREF: sub_FD41+92j
					; sub_FD41:loc_FE0Bj ...
		staa	unk_C8

loc_FE1B:				; CODE XREF: sub_FD41+69j
		ldab	Port1		; may set bit 3	- Idle up solenoid active high
		andb	#$F7 ; '˜'
		tsta
		bpl	loc_FE24	; toggle VISC signal (idle up)
		orab	#8

loc_FE24:				; CODE XREF: sub_FD41+DFj
		stab	Port1		; toggle VISC signal (idle up)
		ldab	Port4		; p4-5,	test mode, active low
		bitb	#$20 ; ' '
		beq	loc_FE33
		ldaa	byte_4C		; msb inhibits injection
		anda	#$FB ; '˚'

loc_FE30:				; CODE XREF: sub_FD41+100j
		staa	byte_4C		; msb inhibits injection

locret_FE32:				; CODE XREF: sub_FD41+F6j
		rts
; ---------------------------------------------------------------------------

loc_FE33:				; CODE XREF: sub_FD41+E9j
		ldaa	byte_95
		anda	byte_5D		; =adc_tps - byte_5b, tps related
		bpl	locret_FE32
		bitb	#$10
		bne	loc_FE43
		ldaa	byte_4C		; msb inhibits injection
		oraa	#4
		bra	loc_FE30
; ---------------------------------------------------------------------------

loc_FE43:				; CODE XREF: sub_FD41+FAj
		ldab	#$C0 ; '¿'
		sei
		stab	Port1		; /#20 low, watchdog low, VISC low, bit5 low, /TVIS high /VF high

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
		beq	nukeram1	; branch if checksum equals aa55
		ldaa	#%11001000
		bra	loc_FE8B	; /VF high,/TVIS can toggle, bit5 low, VISC high, watchdog low,	/#20 low
; ---------------------------------------------------------------------------

nukeram1:				; CODE XREF: sub_FD41+118j
		jsr	CPUModeTst
		ldd	#$55AA

nukeram2:				; CODE XREF: sub_FD41+13Ej
		ldx	#$C0 ; '¿'

nukeram3:				; CODE XREF: sub_FD41+12Bj
		std	$3E,x		; this loop nukes all of user ram with alternating 55s and AAs
		dex
		dex
		bne	nukeram3	; this loop nukes all of user ram with alternating 55s and AAs

testram:				; CODE XREF: sub_FD41+13Aj
		inx
		cmpa	$3F,x
		bne	loc_FE89	; watchdog and /VF
		inx
		cmpb	$3F,x
		bne	loc_FE89	; watchdog and /VF
		cpx	#$C0 ; '¿'
		bne	testram
		comb
		coma
		bmi	nukeram2
		ldaa	Port4		; p4-5,	test mode, active low
		anda	#$20 ; ' '
		beq	loc_FE48
		bra	loc_FE99
; ---------------------------------------------------------------------------

loc_FE89:				; CODE XREF: sub_FD41+130j
					; sub_FD41+135j
		ldaa	#%1001000	; watchdog and /VF

loc_FE8B:				; CODE XREF: sub_FD41+11Cj
		staa	Port1		; /VF high,/TVIS can toggle, bit5 low, VISC high, watchdog low,	/#20 low

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
		fcb   0			; data (ff2b entry)
		fcb $23	; #
		fcb $57	; W
		fcb $80	; Ä
		fcb $A8	; ®
		fcb $C2	; ¬
		fcb $D9	; Ÿ
		fcb $E6	; Ê
		fcb $F3	; Û		; data (ff1b entry)
		fcb $80	; Ä
		fcb $45	; E
		fcb $1E
		fcb   0
		fcb   0
		fcb   0
		fcb $98	; ò		; data (ff1b entry)
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
		fcb $F3	; Û		; data (ff1b entry)
		fcb $80	; Ä
		fcb $1E
		fcb   5
		fcb   0
		fcb   0
		fcb   0			; 6
		fcb $FF			; data (ff1b entry)
		fcb $D8	; ÿ
		fcb $90	; ê
		fcb $68	; h
		fcb $49	; I
		fcb $43	; C
		fcb $40	; @		; 6
		fcb $66	; f		; data (ff25 entry)
		fcb $66	; f
		fcb $6A	; j
		fcb $77	; w
		fcb $83	; É
		fcb $8C	; å
		fcb $99	; ô
		fcb $AA	; ™
		fcb $B9	; π		; 8
		fcb $6C	; l		; data (ff1b entry)
		fcb $6C	; l
		fcb $68	; h
		fcb $60	; `
		fcb $50	; P
		fcb $40	; @
		fcb $30	; 0		; 6
		fcb $FF			; data (ff25 entry), offset by -83d
		fcb $C2	; ¬
		fcb $4B	; K
		fcb $18
		fcb   0
		fcb   0
		fcb   0
		fcb $FF			; data for converting raw ThW measurement from ADC (ff28 entry)
		fcb $DC	; ‹
		fcb $B2	; ≤
		fcb $9B	; õ
		fcb $8A	; ä
		fcb $7C	; |
		fcb $70	; p
		fcb $66	; f
		fcb $5D	; ]		; 8
		fcb $53	; S		; data (ff2d entry)
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
		fcb $38	; 8		; data (ff1b entry)
		fcb $38	; 8
		fcb $37	; 7
		fcb $32	; 2
		fcb $2D	; -
		fcb $1C
		fcb $1C			; 6
		fcb $1C			; data (ff2a entry)
		fcb   6			; data (ff25 entry)
		fcb   6
		fcb $FF
		fcb $FF
		fcb $D8	; ÿ
		fcb $96	; ñ
		fcb $77	; w
		fcb $5E	; ^
		fcb $51	; Q
; ---------------------------------------------------------------------------

TableThW:				; entry	point, ff1b
		ldaa	ADC_ThW
		clrb
		cmpa	#192		; 192 deg F
		bls	Tab1		; should be blt, avoid interpolation in	the case of adc_thw==192, and out of bounds memory access
		ldaa	6,x		; if ADC_ThW>192 automatically load the	last value of all ff1b entry tables and	return
		rts
; ---------------------------------------------------------------------------

TableAFMr:				; an entry point, possibly reserved for	ADC_AFMr, ff25
		clrb

Tab1:					; CODE XREF: ROM:FF20j
		lsrd			; next instruction is like a 2 byte nop
; ---------------------------------------------------------------------------
		fcb $21	; !		; brn, skips the clrb if e fall	through	this line
; ---------------------------------------------------------------------------

loc_FF28:				; CODE XREF: ROM:F88AP	ROM:F891P
		clrb			; another entry	point
		lsrd			; next executed	instruction after ff26 entry
		lsrd
		lsrd
		lsrd			; tablethw, tableafmr: shifted right 5 times, ff28 shifted right 4 times
		pshb			; lower	nibble of what was initially in	a gets pushed, or another entry	point and push b
		tab
		abx
		ldaa	1,x		; for tablethw b=0..6, tableafmr b=0..7, ff28 b=0..15
		suba	0,x		; a now	contains the difference	between	the two	table points
		pulb			; b now	has the	remainder of what was rotated from A

; =============== S U B	R O U T	I N E =======================================

; if table(n+1)-table(n) is positive, we dont need to fart around

sub_FF35:				; CODE XREF: ROM:F89AP
		bcc	loc_FF3C	; A has	table(n+1)-table(n), b has remainder of	what was used to get table(n)
		nega
		negb
		beq	loc_FF3C	; A has	table(n+1)-table(n), b has remainder of	what was used to get table(n)
		inx

loc_FF3C:				; CODE XREF: sub_FF35j	sub_FF35+4j
		mul			; A has	table(n+1)-table(n), b has remainder of	what was used to get table(n)
		adda	0,x		;  after mul A contains	offset from table(n)
		rts			; returns data from tables in AccA
; End of function sub_FF35

; ---------------------------------------------------------------------------
		fcb $58	; X		; 3d table, x input is byte_64,	y input	is processed word_7f
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
		fcb $44	; D		; new table 1
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
		fcb $21	; !		; new table 2
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
		fcb $13			; possible new table for f880 3
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
		fcb  $B			; new table 4
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
		fcb  $B			; new table 5
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
		fcb $56	; V		; end 3d table
		fcb   0			; data (ffa4 entry)
		fcb   0
		fcb   0
		fcb  $B
		fcb   5			; data (ffe1 entry)
		fcb   5
		fcb   5
		fcb   0
		fcb   7			; data (ffa4 entry)
		fcb   0
		fcb $FB	; ˚
		fcb   0
		fcb   0
		fcb   7
		fcb $FB	; ˚
		fcb $FE	; ˛
; ---------------------------------------------------------------------------

loc_FFA4:
		ldab	ADC_PWRr
		lsrb
		lsrb
		lsrb
		lsrb
		lsrb			; div by 32, only bits 2..0 can	be 1
		abx			; the range of accb is 0..7
		suba	0,x
		rts
; ---------------------------------------------------------------------------
		fcb $4D	; M		; Data used to initialize RAM (address,	data0,data1,...dataN,$00)
		fcb   5			; word data for	4d = $0543
		fcb $43	; C
		fcb   0
		fcb $5B	; [		; new address
		fcb $26	; &		; data for word	5b = $2680
		fcb $80	; Ä
		fcb   0			; stop RLE
		fcb $54	; T		; new address
		fcb $73	; s		; $54 =	73
		fcb $B3	; ≥		; $55 =	B3
		fcb $79	; y		; 56
		fcb $C0	; ¿		; 57
		fcb $20			; 58
		fcb   0			; stop RLE
		fcb $65	; e		; new address
		fcb $12			; 65
		fcb $FF			; 66
		fcb $FF			; 67
		fcb $10			; 68
		fcb   4			; 69
		fcb   2			; 6a
		fcb $8A	; ä		; 6b
		fdb 4500		; 6c
		fdb 460			; 6e
		fcb $7F	; 		; 70
		fcb $FF			; 71
		fcb   2			; 72
		fcb   1			; 73
		fcb   2			; 74
		fcb   0			; stop RLE
		fcb $95	; ï		; new address
		fcb $60	; `		; 95
		fcb $34	; 4		; 96
		fcb $7A	; z		; 97
		fcb $7C	; |		; 98
		fcb $F4	; Ù		; 99
		fcb $71	; q		; 9a
		fcb $71	; q		; 9b
		fcb $FF			; 9c
		fcb $E6	; Ê		; 9d
		fcb   0			; stop RLE
		fcb $C6	; ∆		; new address
		fcb   4			; c6
		fcb $FF			; c7
		fcb $5E	; ^		; c8
		fcb   0			; termination of init data
		fcb   0
; ---------------------------------------------------------------------------

loc_FFE1:				; this sub is executed twice from this entry point
		bsr	*+2

loc_FFE3:				; Saturate count routine, increments ram value until reaching $FF, increments X, returns counter value
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
		fdb $F1B1		; timer	input capture from mixed signal	SE056
		fdb $F000		; /irq or /S3
		fdb $F000		; swi
		fdb $F000		; /NMI
		fdb $F000		; reset	entry vector
; end of 'ROM'


		end
