
; Processor:	    6303 []
; Target assembler: 68HC11 Macro Assembler v1.2	(c) Copyright 2000 Tech	Edge Pty. Ltd.

; ===========================================================================

; Segment type:	Regular
		code ; RegRAM
Port1DDR:	ds 1			; DATA XREF: sub_FD41-D1Ew
					; sub_FD41-CD7w
Port2DDR:	ds 1
Port1:		ds 1			; DATA XREF: sub_FD41-D28w ROM:F13Ar ...
Port2:		ds 1
Port3DDR:	ds 1			; DATA XREF: sub_FD41-D23w
					; sub_FD41-CD2w
Port4DDR:	ds 1
Port3:		ds 1			; DATA XREF: sub_FD41-D2Dw
					; sub_FD41-CB0r ...
Port4:		ds 1			; DATA XREF: sub_FD41-CCDr inj1on+2r ...
TmrCntStat1:	ds 1			; DATA XREF: sub_FD41-D36w
					; sub_FD41-CE1w ...
Timer:		ds 2			; DATA XREF: sub_FD41-D32w
					; sub_FD41-CE8r ...
OutCmp1:	ds 2
InpCap1:	ds 2
Port3CntStat:	ds 1			; 7- /IS3 flag	6- /IS3	/IRQ enable 5x 4- output strobe	select 3 latch enable 210x
UARTRateMode:	ds 1
TxRxCntStat:	ds 1			; DATA XREF: sub_FD41-D11r
					; sub_FD41-D0Dw ...
RxReg:		ds 1
TxReg:		ds 1
RAMCnt:		ds 1			; DATA XREF: sub_FD41-D3Aw
		ds 1
		ds 1
		ds 1
TmrCntStat2:	ds 1			; DATA XREF: sub_FD41-D34w
					; sub_FD41-CDFw ...
					; $TCSR2
		ds 1
		ds 1
OutCmp2:	ds 2			; DATA XREF: ROM:F151w	inj1off+23r ...
					; compare output on P1-1, injector /#20
InpCap2:	ds 2			; captures from	port 1-0, mixed	signal se056
unk_1F:		ds 1			; top of sfr space
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
unk_2D:		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
unk_32:		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
unk_37:		ds 1
unk_38:		ds 1
		ds 1
		ds 1
		ds 1
unk_3C:		ds 1
		ds 1
		ds 1
		ds 1
word_40:	ds 2			; DATA XREF: sub_F751+2r ROM:F79Fw ...
word_42:	ds 2			; DATA XREF: ROM:F5A6r	ROM:F749r ...
word_44:	ds 2			; DATA XREF: sub_F70A+Fr sub_F70A+32r	...
word_46:	ds 2			; DATA XREF: ROM:FC3Dw	sub_FD41+32r ...
word_48:	ds 2			; DATA XREF: ROM:FC3Fw
					; flagbadstuf3+15r ...
byte_4A:	ds 1			; DATA XREF: ROM:FC20r	ROM:FC45w
byte_4B:	ds 1
byte_4C:	ds 1			; DATA XREF: sub_FD41-CCFr
					; sub_FD41-CC0w ...
					; msb inhibits injection
byte_4D:	ds 1			; DATA XREF: sub_FD41-CC4r
					; ForceInjAccD+1r ...
					; bit 6	is cache of SPD	pin, flags
byte_4E:	ds 1			; DATA XREF: sub_FD41-C42r
					; sub_FD41-C32r ...
					; used for flags in outcmp,inpcap
ADCflags:	ds 1			; DATA XREF: sub_FD41-CA3r
					; sub_FD41-CA1w ...
					; flag which can be modified in	an interrupt, msb inidicates adc data is pending in adcrxdata
ADCRxData:	ds 1
EndTxByteTime:	ds 2			; caches timer values from serial interrupt
ADCcontrol:	ds 1			; DATA XREF: sub_FD41-CA8r
					; sub_FD41-CA6w ...
					; controls a jump table	at fa9b, also deselects	ADC with LSB, also controls which channel to select
ADC_TPS:	ds 1			; DATA XREF: ROM:jmptable2r ROM:FB99r
ADC_12V:	ds 1			; DATA XREF: ROM:FC8Dr	ROM:FCA0r ...
					; +B1 terminal divided by 5... =255*12/25
ADC_ThA:	ds 1			; DATA XREF: ROM:FAF6r	ROM:FBF1r
ADC_ThW:	ds 1			; DATA XREF: ROM:F351r	sub_F420+D1r ...
					; water	temp in	farenheit
ADC_PWRr:	ds 1			; DATA XREF: ROM:loc_FFA4r
ADC_Oxy:	ds 1
byte_5A:	ds 1			; DATA XREF: ROM:FBA8r	ROM:loc_FBD4w
byte_5B:	ds 1			; DATA XREF: ROM:FB78r	ROM:loc_FB7Cr ...
					; TPS related
byte_5C:	ds 1			; DATA XREF: ROM:F77Dr	ROM:F794w ...
byte_5D:	ds 1			; DATA XREF: ROM:loc_F5ACr
					; sub_F96A:loc_FA05r ...
					; =adc_tps - byte_5b, tps related
NextADCsamptime:ds 1			; DATA XREF: sub_FD41-CE6w
					; sub_FD41:loc_F083r ...
					; timer	based
byte_5F:	ds 1			; DATA XREF: sub_FD41-C9Br sub_F96A+8r
SpdPlsdiff:	ds 1			; DATA XREF: sub_FD41-C4Cw
					; sub_F420+D5r	...
speedpulses:	ds 1			; DATA XREF: sub_FD41-CC7w
					; sub_FD41-C4Er
FullRPM:	ds 2			; DATA XREF: sub_F420+60r sub_F420+78w ...
					; full range first dervitive continuous	RPM variable, rpms: 600, 8000 values: 192, 2560
RPMish:		ds 1			; DATA XREF: sub_F420+98w ROM:F884r ...
					; rpms:	[600, 4800, 7200] RPMish value:	[24, 192, 208] - linear	interpolate between points
lilRPM:		ds 1			; DATA XREF: ForceInjAccD2:loc_F12Ar
					; sub_F420+82w	...
					; 24 = 600 rpm 255 = 6375 RPM
deltaNE:	ds 2			; outcomp
SatCount_68:	ds 1			; seems	to count main loops between incp2 trailing edges
byte_69:	ds 1			; DATA XREF: ROM:F21Ar	ROM:F221r ...
SE056plstime:	ds 2			; DATA XREF: ROM:loc_F1F0w ROM:F1FDr ...
SE056Maxtime:	ds 2			; DATA XREF: ROM:loc_F1DAr ROM:F1DEr ...
SE056Mintime:	ds 2
word_70:	ds 2			; DATA XREF: ROM:F5A1w
					; sub_F6D4:loc_F6D8r ...
					; upper	16 bits	of word_72*2*FED2 coolant temp table
word_72:	ds 2			; DATA XREF: ROM:F596w	sub_F5E3+B9r ...
FuelRatioH:	ds 1			; fuel ratio high nibble
FuelRatioL:	ds 1			; fuel ratio low nibble
word_76:	ds 2			; DATA XREF: sub_F6D4r	Calc76+3Er ...
					; probably oxygen sensor adjustment, default value is $8000
IC2LowCnt:	ds 1			; counts input capture 2 trailing edges, reset by p3 msb low (G+ related)
Inj10OffTime:	ds 2
Inj20OffTime:	ds 2			; DATA XREF: ROM:F13Er	ROM:F145w ...
InjLoadPulse:	ds 2
Load:		ds 2			; DATA XREF: ROM:F555w	reinitLoadsr ...
					; roughly equal	to se056 pulse time * air temp table * fuzz factor
InjDeadTime:	ds 2			; DATA XREF: CalcInjOffTime:loc_F16Er
					; ROM:FC9Ew
					; max value is 2504, table output of ADC_12V
byte_83:	ds 1			; DATA XREF: sub_F5E3+B4r
					; Calc76:loc_F7C4r ...
					; TableTHW output (FEAF	decreasing)
byte_84:	ds 1			; DATA XREF: ROM:loc_F568w sub_F5E3+Cr ...
		ds 1
byte_86:	ds 1			; DATA XREF: ROM:F580w	sub_F5E3+A6r
byte_87:	ds 1			; DATA XREF: sub_F420+72w
					; sub_F420+10Cw ...
byte_88:	ds 1			; DATA XREF: ROM:loc_F5C3w
					; sub_F5E3+33r	...
byte_89:	ds 1			; DATA XREF: reinitLoads+7w
					; sub_F5E3:loc_F61Bw
					; load related?
ThAcorr:	ds 1			; DATA XREF: Calc72+2r	ROM:FBF8w
byte_8B:	ds 1			; DATA XREF: sub_F5E3+85r sub_F6BB+Dr	...
					; tableTHW output (FEBD	decreasing)
word_8C:	ds 2
Loadfilt1:	ds 2			; DATA XREF: reinitLoads+4w
					; sub_F5E3+44r	...
Loadfilt2:	ds 2			; DATA XREF: reinitLoads+2w
					; sub_F5E3+1Fr	...
byte_92:	ds 1			; DATA XREF: ROM:F5BEr	sub_F70A+Dw ...
					; comes	about by load *	lilRPM
byte_93:	ds 1			; DATA XREF: sub_F751+Ar sub_F751+18r	...
byte_94:	ds 1
byte_95:	ds 1			; DATA XREF: sub_FD41:loc_F0D1r
					; ROM:F1E9r ...
					; MSB may be IDL/throttle closed condition
byte_96:	ds 1			; DATA XREF: sub_FD41:loc_F0F0w
					; sub_F96A+6Br
SatCount_97:	ds 1
SatCount_98:	ds 1
TVIScounter:	ds 1			; TVIS counter,	negative (F4) when on, positive	(2) when off, counts back and forth after a transition
byte_9A:	ds 1			; DATA XREF: Calc76:loc_F7F9r
					; sub_F96A+18r	...
					; oxygen sensor	related
unk_9B:		ds 1
SatCount_9C:	ds 1
byte_9D:	ds 1			; DATA XREF: sub_FD41-C69r
					; sub_FD41:loc_F0EEw ...
DecelCutRPM:	ds 1			; DATA XREF: sub_F420:DecelFuelCutr
					; sub_F5E3+87r	...
					; lilRPM related
InCp2TrEg:	ds 2			; DATA XREF: ROM:inj2onw inj1onw ...
					; probably not just trailing edge
AdvanceinUS:	ds 2			; OC1/igt related
BaseAdvance:	ds 1			; DATA XREF: ROM:temploadADVw
					; ROM:F8D6r
					; stores output	from 3d	lookup
ThW_tADV:	ds 1			; DATA XREF: ROM:F867r	ROM:F8D2r ...
byte_A5:	ds 1			; DATA XREF: ROM:F8BBr	ROM:F8D0w
					; timing, either 0 or d6
IDLcompADV:	ds 1			; DATA XREF: ROM:notest2w ROM:Pre3dw ...
NEhighWidth:	ds 2
NEhiDERV_3:	ds 2			; last word_ab
NEhiDERV_2:	ds 2			; last word_ad
NEhiDERV_1:	ds 2			; last word_af
NEhiDERV:	ds 2
NEhiwidfilt:	ds 2
word_B3:	ds 2
altDwell:	ds 2			; DATA XREF: ROM:F391r	ROM:F397r ...
					; ADC_12V*4+384, abs max 1404
NEtrEdge:	ds 2			; leading edge time of tinp2. corresponds to tr	edge of	NE
NEleEdge:	ds 2			; set during IC1 low handler
Dwell:		ds 2			; Probably dwell
word_BD:	ds 2			; output compare routine only
word_BF:	ds 2			; DATA XREF: ROM:F911r	ROM:FCAAr ...
					; tops out at 8160 at 8.6V
IdleRPMfilt:	ds 2
IdleRPMs:	ds 1			; precision RPM	counter	for idle control, saturates at 1246 RPM
word_C4:	ds 2			; rpm related
byte_C6:	ds 1			; DATA XREF: ROM:F252r	ROM:F2E0r ...
SatCount_C7:	ds 1			; DATA XREF: ROM:F84Dw
byte_C8:	ds 1			; DATA XREF: flagbadstuf3+8w
					; sub_FD41:loc_FDCEr ...
word_C9:	ds 2			; DATA XREF: sub_FD41+60w sub_FD41+98r ...
byte_CB:	ds 1			; DATA XREF: sub_FD41+63w sub_FD41+87r ...
byte_CC:	ds 1			; DATA XREF: ROM:loc_FB6Er
					; FlagBadStuff+2r ...
					; used for flagging bad	sensors	probably, bits:	6-ThA, 5-TPS, 2-ThW, 0-afm(not from adc)
unk_CD:		ds 1
SatCount_CE:	ds 1			; DATA XREF: sub_FD41-C60w
					; Calc76:fake76_3w ...
SatCount_CF:	ds 1
SatCount_D0:	ds 1			; DATA XREF: sub_F420+9Bw
SatCount_D1:	ds 1
SatCount_D2:	ds 1
word_D3:	ds 2			; looks	like a temp variable for subs
unk_D5:		ds 1
byte_D6:	ds 1			; DATA XREF: ROM:F74Dw	sub_FD41+46r
byte_D7:	ds 1			; DATA XREF: sub_F96A+Cr
					; sub_FD41:loc_FD9Dw ...
unk_D8:		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
unk_E6:		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
unk_FA:		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
TopStack:	ds 1
; end of 'RegRAM'

; ---------------------------------------------------------------------------
; File Name   :	C:\Documents and Settings\Sparkie\Desktop\bluetop temp\cap.bin
; Format      :	Binary file
; Base Address:	0000h Range: F000h - 10000h Loaded length: 1000h
; ===========================================================================

; Segment type:	Pure code
		code ; ROM
		org $F000
; START	OF FUNCTION CHUNK FOR sub_FD41

reset:					; CODE XREF: sub_FD41:loc_FE99J
		sei
		sei			; really make it not interrupt.
		lds	#$FF		; init stackptr
		ldaa	#$C0 ; 'À'
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
		ldx	#$B4 ; '´'

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
		stab	NextADCsamptime	; timer	based
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
		inc	speedpulses
		eorb	byte_4D		; bit 6	is cache of SPD	pin, flags
		anda	#$FE		; clear	lsb of 4c
		std	byte_4C		; msb inhibits injection

loc_F083:				; CODE XREF: sub_FD41-CC9j
		ldd	NextADCsamptime	; timer	based
		cmpa	Timer
		bpl	loc_F0FD	; bounce if we already sampled the ADC
		adda	#$10
		incb			; adds 4097
		std	NextADCsamptime	; timer	based
		ldaa	#$DF ; 'ß'
		sei
		anda	Port3		; clear	bit5 (mixed signal se056)
		staa	Port3		; clear	bit5 (mixed signal se056)
		cli
		ldd	#$1FE
		andb	ADCcontrol	; clear	bit0
		stab	ADCcontrol	; clear	bit0
		sei
		ora	ADCflags	; set bit 0
		staa	ADCflags	; set bit 0
		cli
		jsr	loc_FAA7	; force	an adc conversion
		ldaa	byte_5F
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
		cmpa	#$98 ; '˜'
		ldab	byte_4C		; msb inhibits injection
		bitb	#4
		beq	loc_F0CA
		cmpa	#4

loc_F0CA:				; CODE XREF: sub_FD41-C7Bj
		bcs	loc_F0D1
		ldaa	#8
		jsr	flagbadstuf3	; p4-5

loc_F0D1:				; CODE XREF: sub_FD41:loc_F0CAj
		ldd	byte_95		; MSB may be IDL/throttle closed condition
		bpl	loc_F0E8
		incb
		bpl	loc_F0F0
		ldaa	byte_9D
		suba	#1
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		db 230
		db 143
; ---------------------------------------------------------------------------
		clr	SatCount_CE
		ldab	#$89 ; '‰'
		bra	loc_F0EE
; ---------------------------------------------------------------------------

loc_F0E8:				; CODE XREF: sub_FD41-C6Ej
		decb
		bmi	loc_F0F0
		ldd	#$E634

loc_F0EE:				; CODE XREF: sub_FD41-C5Bj
		staa	byte_9D

loc_F0F0:				; CODE XREF: sub_FD41-C6Bj
					; sub_FD41-C58j
		stab	byte_96
		clrb			; clear	speedpulses when we write D
		ldaa	speedpulses
		std	SpdPlsdiff

loc_F0F7:				; CODE XREF: sub_FD41-C94j
					; sub_FD41-C8Aj
		jsr	sub_FD41

loc_F0FA:				; CODE XREF: sub_FD41:loc_F0B9j
		jsr	sub_F96A

loc_F0FD:				; CODE XREF: sub_FD41-CBAj
		ldaa	#2
		bita	byte_4E		; used for flags in outcmp,inpcap
		beq	loc_F10D
		bsr	comAmask4E
		jsr	sub_F420	; clears IGf bit from port3cntstat
		jsr	BeginCalcADV	; calculates ignition among other things
		bra	end_main
; ---------------------------------------------------------------------------

loc_F10D:				; CODE XREF: sub_FD41-C40j
		ldaa	#1
		bita	byte_4E		; used for flags in outcmp,inpcap
		beq	end_main
		jsr	loc_F534

end_main:				; CODE XREF: sub_FD41-C36j
					; sub_FD41-C30j
		jmp	Main_Loop	; re-init stack	ptr
; END OF FUNCTION CHUNK	FOR sub_FD41

; =============== S U B	R O U T	I N E =======================================


comAmask4E:				; CODE XREF: sub_FD41-C3Ep
					; sub_F420+B3P	...
		coma
; End of function comAmask4E


; =============== S U B	R O U T	I N E =======================================


mask4E:					; CODE XREF: sub_F420+BFP ROM:F53FP
		sei
		anda	byte_4E		; used for flags in outcmp,inpcap
		staa	byte_4E		; could	toggle some bits low
		cli
		rts
; End of function mask4E


; =============== S U B	R O U T	I N E =======================================


ForceInjAccD:				; CODE XREF: sub_F96A+B8P ROM:FBCCP
		psha
		ldaa	byte_4D		; lsb inhibits injection here
		rora
		bcc	loc_F12A

tidystkRET:				; CODE XREF: ForceInjAccD2+5j
		ins

locret_F128:				; CODE XREF: ForceInjAccD2+9j
		rts
; End of function ForceInjAccD


; =============== S U B	R O U T	I N E =======================================


ForceInjAccD2:				; CODE XREF: sub_F96A+F0P
		psha

loc_F12A:				; CODE XREF: ForceInjAccD+4j
		ldaa	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		cmpa	#140		; compare to 3500 RPM
		bcc	tidystkRET	; when above 3500 RPM
		pula

loc_F131:				; CODE XREF: ROM:F21EP
		tsta
		beq	locret_F128
		sei
		bsr	inj1on		; falling through, next	three bytes are	an effective NOP (ldx blahblah)
; End of function ForceInjAccD2

; ---------------------------------------------------------------------------
unk_F137:	db $CE ; Î
; ---------------------------------------------------------------------------

inj2on:					; CODE XREF: ROM:endIC1_2P
		std	InCp2TrEg	; probably not just trailing edge
		ldaa	Port1
		rora
		rora
		ldd	Inj20OffTime
		bsr	CalcInjOffTime
		addd	#30
		std	Inj20OffTime
		ldd	#$FE0C
		anda	TmrCntStat2	; force	next OC2 low
		staa	TmrCntStat2	; force	next OC2 low
		ldx	Timer
		abx
		stx	OutCmp2		; compare output on P1-1, injector /#20
		rts

; =============== S U B	R O U T	I N E =======================================


inj1on:					; CODE XREF: ForceInjAccD2+Cp
					; sub_F194p

; FUNCTION CHUNK AT F191 SIZE 00000003 BYTES

		std	InCp2TrEg	; probably not just trailing edge
		ldaa	Port4		; p4-7 is injector #10
		rola			; injector #10 status in carry bit
		ldd	Inj10OffTime
		bsr	CalcInjOffTime
		subd	#0		; seems	unnecessary
		std	Inj10OffTime
		ldaa	#$7F ; ''
		anda	Port4		; turn on injector #10
		bra	loc_F191
; End of function inj1on


; =============== S U B	R O U T	I N E =======================================


CalcInjOffTime:				; CODE XREF: ROM:F140p	inj1on+7p
		bcs	loc_F16E	; bounce here if injector off
		subd	Timer
		bpl	loc_F170	; branch if the	offtime	in D is	ahead of the timer

loc_F16E:				; CODE XREF: CalcInjOffTimej
		ldd	InjDeadTime	; bounce here if injector off

loc_F170:				; CODE XREF: CalcInjOffTime+4j
		addd	InCp2TrEg	; contains word_7d injection calculation
		bpl	loc_F177
		ldd	#32767		; saturate to 7fff

loc_F177:				; CODE XREF: CalcInjOffTime+Aj
		addd	Timer
		rts
; End of function CalcInjOffTime


; =============== S U B	R O U T	I N E =======================================

; injector /#10

inj1off:				; CODE XREF: ROM:F2F8P	ROM:F3D7P

; FUNCTION CHUNK AT F196 SIZE 0000001B BYTES

		ldaa	Port4
		bmi	locret_F1B0	; exit if injector #10 is not on
		ldd	Inj10OffTime
		subd	#320
		subd	Timer
		bpl	loc_F196	; branch if not	within 320us of	inj off	time
		ldx	Inj10OffTime

loc_F189:				; CODE XREF: inj1off+11j
		cpx	Timer
		bpl	loc_F189	; spin waiting for timer
		ldaa	#$80 ; '€'
		ora	Port4		; turn off injector #10
; End of function inj1off

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

; START	OF FUNCTION CHUNK FOR inj1off

loc_F196:				; CODE XREF: inj1off+Bj
		ldd	#$2FE
		anda	Port1		; test bit 1 (injector #20)
		bne	loc_F1A3	; branch if injector #20 is not	on
		ldx	OutCmp2		; compare output on P1-1, injector /#20
		cpx	Inj10OffTime
		bmi	locret_F1B0	; bomb out if OC2 happens earlier than inj10offtime

loc_F1A3:				; CODE XREF: inj1off+21j
		lsra
		andb	TmrCntStat2	; $TCSR2
		aba
		staa	TmrCntStat2	; maintain status quo: next out	cmp will set /#20 to the same value it currently is.
		ldd	Inj10OffTime
		subd	#250
		std	OutCmp2		; compare output on P1-1, injector /#20

locret_F1B0:				; CODE XREF: inj1off+2j inj1off+27j
		rts
; END OF FUNCTION CHUNK	FOR inj1off
; ---------------------------------------------------------------------------

IRQinpcap:
		ldaa	TmrCntStat1
		bita	TmrCntStat2	; $TCSR2
		bmi	IRQinpcap2	; branch if BOTH input capture flags are set
		tsta
		bra	IRQinpcap3	; branch if only input capture 1, or MSB of $4e	is set
; ---------------------------------------------------------------------------

IRQinpcap2:				; CODE XREF: ROM:F1B5j
		ldaa	byte_4E		; used for flags in outcmp,inpcap

IRQinpcap3:				; CODE XREF: ROM:F1B8j
		bmi	procInCp1	; branch if only input capture 1, or MSB of $4e	is set
		jmp	procInCp2	; input	capture	2 is triggered by edges	from pin 7 of se056, which appears to be /NE clipped @5V levels
; ---------------------------------------------------------------------------

procInCp1:				; CODE XREF: ROM:IRQinpcap3j
		ldd	InpCap1		; IC1 is ONLY EVER triggered by	leading	edges on p2-0
		subd	NEleEdge	; set during IC1 low handler
		pshb
		psha
		pulx			; xgdx
		ldaa	byte_4E		; used for flags in outcmp,inpcap
		bpl	endIC1_1	; msb gets flagged based on input capture level
		ora	#1
		anda	#$7F ; ''
		staa	byte_4E		; set bit 0, clear bit 7
		cli
		inx			; input	capture	time - B9 +1
		cpx	SE056Mintime
		bcc	loc_F1DA	; bounce if greater than or equal to
		ldx	SE056Mintime	; enforce minimum load measurement

loc_F1DA:				; CODE XREF: ROM:F1D6j
		cpx	SE056Maxtime
		bcs	loc_F1E0	; bounce if less than
		ldx	SE056Maxtime	; enforce maximum load measurement

loc_F1E0:				; CODE XREF: ROM:F1DCj
		ldaa	unk_CD		; X is now capped between word_6e (low)	and word_6C (high)
		bita	#1
		beq	loc_F1F0	; bounce is lsb	of unk_cd is low
		ldx	#800		; use this value if MSB	of _CD
		ldaa	byte_95		; bounce if MSb	of byte_95 is high
		bmi	loc_F1F0	; either 800 or	1600 or	if we're lucky: InpCap1 - LastIC2treg
		ldx	#1600

loc_F1F0:				; CODE XREF: ROM:F1E4j	ROM:F1EBj
		stx	SE056plstime	; either 800 or	1600 or	if we're lucky: InpCap1 - LastIC2treg
		ldaa	SatCount_97
		ora	byte_4C		; msb inhibits injection
		ora	SatCount_98
		bmi	endIC1_1	; return if satcounts are $80 or greater, or msb of byte_4c is set
		ldaa	FuelRatioL	; fuel ratio low nibble
		psha
		ldd	SE056plstime
		jsr	mulDbyStack	; multiplies unk_75 by word_6a,	returns	only upper 16 bits of result
		pshb
		ldx	#0
		ldab	FuelRatioH	; fuel ratio high nibble
		abx
		pulb
		beq	loc_F211	; bounce if x is zero

loc_F20C:				; CODE XREF: ROM:F20Fj
		addd	SE056plstime
		dex
		bne	loc_F20C	; multiply loop

loc_F211:				; CODE XREF: ROM:F20Aj
		tsta
		bpl	loc_F217	; middle 16 bit	result of multiplication of unk_74:unk_75 and word_6a, clipped to $7fff
		ldd	#$7FFF

loc_F217:				; CODE XREF: ROM:F212j
		std	InjLoadPulse	; middle 16 bit	result of multiplication of unk_74:unk_75 and word_6a, clipped to $7fff
		sei			; mask interrupts for this section
		ldx	byte_69
		bmi	doublejuice	; bounce if byte_69 has	underflowed
		jsr	loc_F131
		ldaa	byte_69
		bne	endIC1_1	; end of IC1 interrupt
		deca			; decrement byte_69
		staa	byte_69		; decrement byte_69
		ldd	InjLoadPulse
		bra	choose_bank
; ---------------------------------------------------------------------------

doublejuice:				; CODE XREF: ROM:F21Cj
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
		jsr	inj2on		; turns	off OC2	(turns on injector #20)
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
		bita	#2
		beq	IGTisON		; branch if /IGT is low
		ldaa	byte_C6
		bgt	IGTisON		; IGT on
		ldd	#$FA0D
		anda	TmrCntStat1	; disable timer	overflow interrupt, IC1	leading	edge, OC1 low
		staa	TmrCntStat1	; disable timer	overflow interrupt, IC1	leading	edge, OC1 low
		ldx	Timer
		abx
		stx	OutCmp1		; outcmp=timer+0D, which is 13us from now...

IGTisON:				; CODE XREF: ROM:F250j	ROM:F254j
		ldd	OutCmp1		; IGT on
		addd	word_B3
		std	InCp2TrEg	; probably not just trailing edge
		ldaa	AdvanceinUS	; could	word_A1	hold the number	of us to offset	back from 10DBTDC?
		inca
		bmi	loc_F27B	; bounce if word_a1 is unsuitable for next oepration
		ldd	NEtrEdge	; leading edge time of tinp2. corresponds to tr	edge of	NE
		addd	NEhighWidth
		subd	AdvanceinUS	; OC1/igt related
		cmpa	InCp2TrEg	; probably not just trailing edge
		bpl	loc_F279
		ldd	InCp2TrEg	; this value gets stored in outcmp1 if the result in D is significantly	smaller	(256)

loc_F279:				; CODE XREF: ROM:F275j
		bsr	OC1HighDtoOC1

loc_F27B:				; CODE XREF: ROM:F26Bj
		ldd	#$FDF3
		anda	TmrCntStat2	; set IC2 trailing edge	interrupt
		staa	TmrCntStat2	; set IC2 trailing edge	interrupt
		andb	byte_4E		; used for flags in outcmp,inpcap
		stab	byte_4E		; set bits 2,3 low
		rti

; =============== S U B	R O U T	I N E =======================================


OC1HighDtoOC1:				; CODE XREF: ROM:loc_F279p ROM:F2BCp
		psha
		ldaa	#$19
		ora	TmrCntStat1	; set oc1 level	high
		staa	TmrCntStat1	; set oc1 level	high
		pula
; End of function OC1HighDtoOC1


; =============== S U B	R O U T	I N E =======================================

; write	d to outcmp

stdOC1:					; CODE XREF: ROM:loc_F3ACP ROM:F94DP
		std	OutCmp1
		subd	Timer
		cmpa	#240		; 240*256=61440us, safety check	i suppose
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
		orb	TmrCntStat1	; set oc1 level	to high
		stab	TmrCntStat1	; set oc1 level	to high
		bra	stdOC1Dnogd	; forces an OC1	shortly
; ---------------------------------------------------------------------------

InCp2low:				; CODE XREF: ROM:F248j
		stx	InCp2TrEg	; probably not just trailing edge
		ldaa	byte_4E		; checking bit 3
		bita	#8
		bne	IC2low3
		ldaa	AdvanceinUS	; OC1/igt related
		bpl	IC2low2+1	; force	IGT off
		ldd	InCp2TrEg	; probably not just trailing edge
		subd	AdvanceinUS	; OC1/igt related
		bsr	OC1HighDtoOC1

IC2low2:				; CODE XREF: ROM:F2B6j
		cpx	#$8DDE		; 8dde is BSR forceIGToff, which jumps to f29F

IC2low3:				; CODE XREF: ROM:F2B2j
		ldd	InCp2TrEg	; probably not just trailing edge
		subd	NEleEdge	; set during IC1 low handler
		std	deltaNE		; =incp2treg-word_b9
		ldab	SatCount_68	; seems	to count main loops between incp2 trailing edges
		clr	SatCount_68	; reset	satcount_68
		cmpb	#13
		bcs	IC2low5		; bounce if satcount_68	was lower than 13, engine spinning fast
		cmpb	#22
		bhi	IC2low4		; engine spinning slow
		tsta
		bmi	IC2low5		; branch if 916RPM or slower, if we're already here.

IC2low4:				; CODE XREF: ROM:F2D2j
		ldd	#$FFFF		; about	458 RPM
		std	deltaNE		; set to FFFF

IC2low5:				; CODE XREF: ROM:F2CEj	ROM:F2D5j
		cmpa	#$EA ; 'ê'      ; msbyte of delta NE, compare to 204 (which is 59904 - 60159)
		bcc	IC2low6		; branch if 498	RPM or lower
		ldaa	byte_C6
		ldab	byte_4B
		cmpb	#4
		bcs	IC2low7

IC2low6:				; CODE XREF: ROM:F2DEj
		ldaa	#5

IC2low7:				; CODE XREF: ROM:F2E6j
		tsta
		bmi	IC2low8
		deca
		staa	byte_C6

IC2low8:				; CODE XREF: ROM:F2EBj
		ldaa	TmrCntStat2	; $TCSR2
		asla
		bpl	IC2low9		; branch if OC2	flag low
		jsr	injector2
		jsr	inj1off		; injector /#10

IC2low9:				; CODE XREF: ROM:F2F3j
		ldd	InCp2TrEg	; probably not just trailing edge
		std	NEleEdge	; =incp2treg
		subd	NEtrEdge	; leading edge time of tinp2. corresponds to tr	edge of	NE
		std	NEhighWidth
		subd	NEhiwidfilt	; d now	contains the derivative	of NEhighwidth
		addd	NEhiDERV_3	; last filtered	NE high	width derivative
		asra			; equivalent to	an arithmetic shift right D (preserves sign of value in	d)
		rorb
		ldx	NEhiDERV_2	; begin	the shuffle of buffles,	this is	a delay	by 4 routine...	for a 4	cylinder motor nonetheless
		stx	NEhiDERV_3	; last word_ab
		ldx	NEhiDERV_1	; last word_af
		stx	NEhiDERV_2	; last word_ad
		ldx	NEhiDERV
		stx	NEhiDERV_1	; last word_af
		tst	byte_C6
		ble	IC2low10	; avoid	nuking filtered	derivative if unk_c6 <=	zero
		clra
		clrb

IC2low10:				; CODE XREF: ROM:F318j
		std	NEhiDERV
		ldd	NEhiwidfilt
		addd	NEhighWidth
		rora
		rorb
		std	NEhiwidfilt
		addd	NEhiDERV_3	; last word_ab
		std	NEhighWidth
		ldd	#$1A1A
		orb	TmrCntStat1	; IC1 edge 1, OC1 unaffected
		stab	TmrCntStat1	; IC1 edge 1, OC1 unaffected
		ora	TmrCntStat2	; IC2 edge 1, OC2 unaffected
		staa	TmrCntStat2	; IC2 edge 1, OC2 unaffected
		ldab	byte_4E		; used for flags in outcmp,inpcap
		ldaa	IC2LowCnt	; counts input capture 2 trailing edges, reset by p3 msb low (G+ related)
		inca
		staa	IC2LowCnt	; counts input capture 2 trailing edges, reset by p3 msb low (G+ related)
		cmpa	#3
		bls	IC2low11
		tba
		asla
		ora	Port3		; inputs to port3 are 7	-G+, 4,3,2,1,0
		bmi	IC2low11	; branch if G+ related is high
		ldaa	#$FE ; 'þ'
		anda	Port4		; p4-0 is output to SE056 mixed	signal ic, begin generating 50us low pulse
		staa	Port4		; p4-0 is output to SE056 mixed	signal ic, begin generating 50us low pulse
		clra
		staa	IC2LowCnt	; counts input capture 2 trailing edges, reset by p3 msb low (G+ related)
		staa	SatCount_D1	; clear	unk_d1
		ldaa	ADC_ThW		; compare to 80
		cmpa	#80
		bls	IC2low11	; branch if less than 80 deg F
		orb	#$20 ; ' '

IC2low11:				; CODE XREF: ROM:F33Ej	ROM:F344j ...
		orb	#$46 ; 'F'
		ldaa	#1
		bita	Port2		; looking at mixed signal chip input bit 0, input capture pin
		beq	IC2low12	; branch if IC1	pin is low
		ldaa	TmrCntStat1	; interested in	ICF bit	7
		bpl	IC2low13	; branch if ICF	was not	set

IC2low12:				; CODE XREF: ROM:F35Fj
		orb	#$80 ; '€'

IC2low13:				; CODE XREF: ROM:F363j
		stab	byte_4E		; potential to set bits	7,6,5,2,1 high
		ldaa	#1
		ora	Port4		; p4-0 is output to SE056 mixed	signal ic, finish 50us low pulse
		staa	Port4		; p4-0 is output to SE056 mixed	signal ic, finish 50us low pulse
		rti
; ---------------------------------------------------------------------------

IRQoutcmp:				; output compare pin p2-1 eventually becomes the signal	/IGT, or in other words	a high IGT pulse (normal operation I believe) is created by a low pulse	from the output	compare	module.
		ldaa	TmrCntStat2
		asla
		bmi	procOCmp2	; branch if ocf2 is set	(injector related)
		ldaa	TmrCntStat1
		tab
		comb
		bitb	#$41 ; 'A'
		bne	OutCmpBombout	; if bit 6 or 1	was low	in tmrcntstat branch: if we're here for no reason (ocf flag was NOT set??) or we're here because a compare forced /IGT low, branch
		ldab	byte_4E		; test bit 3, if high leave interrupt without doing much
		bitb	#8
		bne	OutCmpBombout
		orb	#8
		stab	byte_4E		; set bit 3 high
		ldab	byte_C6		; bail out of interrupt	if >0
		bgt	OutCmpBombout
		anda	#$FA ; 'ú'      ; a still contains tmrcntstat
		staa	TmrCntStat1	; next compare forces /IGT low (active)
		ldd	OutCmp1		; load last compare time, which	should have initiated this interrupt
		addd	altDwell	; word_b5 contains a duration
		std	word_BD		; word_bd contains alternate leading edge to igniter
		ldd	deltaNE		; outcomp
		subd	altDwell	; ADC_12V*4+384, abs max 1404
		subd	Dwell		; Probably dwell
		bcc	loc_F39F	; this add will	remove altdwell	from the dwell calculation
		clra
		clrb

loc_F39F:				; CODE XREF: ROM:F39Bj
		addd	word_BD		; this add will	remove altdwell	from the dwell calculation
		psha
		ldaa	byte_4E		; used for flags in outcmp,inpcap
		bita	#4
		pula			; pulls	dont touch cond	codes
		beq	loc_F3AC
		jsr	OutCmp1Sub1	; called from output compare ISR

loc_F3AC:				; CODE XREF: ROM:F3A7j
		jsr	stdOC1		; write	d to outcmp
		rti
; ---------------------------------------------------------------------------

OutCmpBombout:				; CODE XREF: ROM:F37Bj	ROM:F381j ...
		ora	#1
		staa	TmrCntStat1	; set output high on cmp
		ldd	OutCmp1		; will clear OCF flag
		std	OutCmp1		; Will clear OCF1 flag
		rti			; final	end to output compare interrupt

; =============== S U B	R O U T	I N E =======================================


injector2:				; CODE XREF: ROM:F2F5P	injector2+19j ...
		ldaa	TmrCntStat2	; $TCSR2
		ora	#1
		staa	TmrCntStat2	; next OC2 will	set /#20 high
		ldx	Inj20OffTime
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
		jsr	inj1off		; injector /#10
		rti
; ---------------------------------------------------------------------------

IRQSerial:				; sort of like ldaa $11	ldab $12
		ldd	TxRxCntStat
		bpl	SerBombOut	; branch if bit	15=0, means there's no receive data (why are we interrupting?)
		cli
		anda	#$40 ; '@'      ; test for overrun or framing error
		beq	SerIRQMain	; no error
		jsr	txadc3		; error, after re-init the adc gets selected and output	from adcchanselect gets	written	to txreg

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
		ora	#$40 ; '@'      ; here is where to inject serial RMCR edits with JSR $7F00 NOP or whateer
		staa	Port3		; Deselect ADC p3-6 if ADCcontrol was even

SerIRQflag:				; CODE XREF: ROM:F3F3j	ROM:F3F8j
		ldab	#$80 ; '€'
		orb	ADCflags	; set bit 7
		stab	ADCflags	; set bit 7

SerMainRet:				; CODE XREF: ROM:F41Ej
		sei			; disable interrupts
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
		bra	SerMainRet	; disable interrupts

; =============== S U B	R O U T	I N E =======================================


sub_F420:				; CODE XREF: sub_FD41-C3CP
		sei
		ldaa	Port3CntStat	; operation clears is3 flag
		ldab	Port3		; operation clears is3 flag
		cli
		clrb
		stab	Port3CntStat	; nuke all special features of port3
		rola			; put /IS3 bit into carry, relace with SEC to remove IGt functionality
		ldd	#$7B79
		bcc	RevLimiter	; carry	bit will be set	from trailing edge on /IS3 pin (IGF)
		staa	SatCount_98	; set unk_98 to	$7B

RevLimiter:				; CODE XREF: sub_F420+Dj
		ldx	deltaNE		; outcomp
		cpx	#4054		; exactly 7400rpm, set to 3750 for 8000	RPM, 3332 for 9003 RPM
		bcs	loc_F43A	; increment unk_97, increment unk_98
		stab	SatCount_97	; set unk_97 to	$79

loc_F43A:				; CODE XREF: sub_F420+16j
		ldx	#$FF98		; increment unk_97, increment unk_98
		jsr	$49,x		; FFE1,	saturate count satcount_97 and satcount_98
		bpl	CalcRPM		; rts, prior instructions are LSRD
		ldaa	#2
		jsr	flagbadstuf3	; p4-5

CalcRPM:				; CODE XREF: sub_F420+1Fj
		ldx	#$FC81		; rts, prior instructions are LSRD
		ldd	deltaNE		; the next few lines of	code do	SOMETHING with deltaNE,	could calculate	an RPM variable	maybe

CalcRPM2:				; CODE XREF: sub_F420+31j
		bita	#$F0 ; 'ð'
		beq	CalcRPMTable	; test if msN is clear
		dex			; decrementing x to point to equivalent	lsrd instructions in DivDby16
		lsrd
		bra	CalcRPM2
; ---------------------------------------------------------------------------

CalcRPMTable:				; CODE XREF: sub_F420+2Dj
		pshx
		ldx	#$FEF9
		jsr	$34,x		; ff2d
		jsr	DivDby16
		adda	#8
		pulx
		jsr	0,x
		cmpa	#9
		bls	loc_F468	; table	output,	suitably divided, capped to $9ff (2559d)
		ldd	#$9FF

loc_F468:				; CODE XREF: sub_F420+43j
		std	word_D3		; table	output,	suitably divided, capped to $9ff (2559d)
		subd	#144
		jsr	sub_F5E3	; saturates after 1246 RPM
		stab	IdleRPMs	; precision RPM	counter	for idle control, saturates at 1246 RPM
		clra
		subb	IdleRPMfilt
		sbca	#0
		lsld
		lsld
		lsld
		addd	IdleRPMfilt
		std	IdleRPMfilt
		ldd	word_C4		; rpm related
		ldx	FullRPM		; full range first dervitive continuous	RPM variable, rpms: 600, 8000 values: 192, 2560
		stx	word_C4		; rpm related
		subd	word_D3		; looks	like a temp variable for subs
		bcc	loc_F48A
		clra
		clrb

loc_F48A:				; CODE XREF: sub_F420+66j
		jsr	sub_F5E2	; shift	D right	one time, if A then B=FF
		cmpb	#6
		bcs	loc_F494
		clra
		staa	byte_87

loc_F494:				; CODE XREF: sub_F420+6Fj
		stab	unk_D5
		ldd	word_D3		; looks	like a temp variable for subs
		std	FullRPM		; full range first dervitive continuous	RPM variable, rpms: 600, 8000 values: 192, 2560
		lsrd
		lsrd
		lsrd
		std	word_D3		; looks	like a temp variable for subs
		jsr	sub_F5E3	; saturates at 6375 rpm
		stab	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		ldx	word_D3		; looks	like a temp variable for subs
		ldd	word_D3		; looks	like a temp variable for subs
		cpx	#192		; reduced resolution past 192 (4800 RPM)
		bls	loc_F4B0
		lsrd
		addb	#96		; absolute max is 255/2	+ 96 = 223

loc_F4B0:				; CODE XREF: sub_F420+8Bj
		tba
		suba	#32
		jsr	boundDataneg	; Limits AccA to bounds	set by two bytes after call
; ---------------------------------------------------------------------------
		db $D0 ; Ð		; 208
		db   0
; ---------------------------------------------------------------------------
		staa	RPMish		; the only place this variable is written
		clra
		staa	SatCount_D0
		ldd	#$140
		bita	byte_4D		; bit 6	is cache of SPD	pin, flags
		bne	loc_F4DD
		ldaa	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
		suba	$14,x		; bounds are CB	(203) and 60 (96) which	are 5075 RPM and 2400 RPM
		bcs	loc_F4E2
		ldaa	Port3
		bpl	loc_F4D6	; branch if G+ related is low
		ldaa	#$40 ; '@'
		jsr	comAmask4E

loc_F4D6:				; CODE XREF: sub_F420+AFj
		ldx	#$FFD2
		jsr	$11,x		; ffe3,	saturate count satcount_d1
		bra	calc56mintime
; ---------------------------------------------------------------------------

loc_F4DD:				; CODE XREF: sub_F420+A2j
		ldaa	#$DF ; 'ß'
		jsr	mask4E		; set bit5 low

loc_F4E2:				; CODE XREF: sub_F420+ABj
		sei
		orb	byte_4E		; used for flags in outcmp,inpcap
		stab	byte_4E		; potential to set bit 6 high
		clra
		staa	SatCount_D1	; clear	unk_d1
		cli

calc56mintime:				; CODE XREF: sub_F420+BBj
		ldx	#230
		ldd	#$5002
		cmpa	ADC_ThW		; compare to 80d
		bhi	set56mintime	; branch if over 80 deg	F
		cmpb	SpdPlsdiff
		bhi	set56mintime	; bounce if car	isnt really moving
		ldaa	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		cmpa	#80		; 2000 RPM
		bcc	set56mintime	; bounce if higher than	2000 RPM
		cmpa	#64		; 1600 RPM
		bcc	DecelFuelCut	; bounce if greater than 1600 RPM
		ldx	#460

set56mintime:				; CODE XREF: sub_F420+D3j sub_F420+D7j ...
		stx	SE056Mintime

DecelFuelCut:				; CODE XREF: sub_F420+E1j
		ldab	DecelCutRPM	; lilRPM related
		ldaa	byte_4C		; msb inhibits injection
		bmi	loc_F510	; zero out bits	6,7 of unk_4c
		addb	#16		; 400 RPM incremental bump

loc_F510:				; CODE XREF: sub_F420+ECj
		anda	#$3F ; '?'      ; zero out bits 6,7 of unk_4c
		cmpb	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		bhi	loc_F51E	; bounce if RPM	below cutoff
		ldab	byte_95		; MSB may be IDL/throttle closed condition
		bpl	loc_F51E	; bounce if throttle not closed
		ora	#$C0 ; 'À'      ; set bits 7,6 of unk_4c
		bra	Exitsubf420
; ---------------------------------------------------------------------------

loc_F51E:				; CODE XREF: sub_F420+F4j sub_F420+F8j
		ldab	byte_4C		; msb inhibits injection
		bpl	Exitsubf420
		psha			; this code is executed	when unk_4c MSB	is set
		ldaa	unk_D5
		cmpa	#6
		bhi	loc_F530
		ldd	#$139
		stab	byte_87
		bsr	loc_F534

loc_F530:				; CODE XREF: sub_F420+107j
		pula

Exitsubf420:				; CODE XREF: sub_F420+FCj
					; sub_F420+100j
		staa	byte_4C		; msb inhibits injection
		rts
; End of function sub_F420

; ---------------------------------------------------------------------------

loc_F534:				; CODE XREF: sub_FD41-C2EP
					; sub_F420+10Ep
		jsr	comAmask4E
		ldaa	ADC_ThW		; compare to 72d
		cmpa	#72
		bhi	loc_F542	; branch if over 72 deg	F
		ldaa	#$DF ; 'ß'
		jsr	mask4E		; set bit5 low

loc_F542:				; CODE XREF: ROM:F53Bj
		ldd	#$2004
		bita	byte_4E		; test bit 5
		beq	loc_F54E	; can be set to	4, or decremented
		ldab	byte_69
		ble	loc_F550
		decb

loc_F54E:				; CODE XREF: ROM:F547j
		stab	byte_69		; can be set to	4, or decremented

loc_F550:				; CODE XREF: ROM:F54Bj
		ldd	SE056plstime
		jsr	Calc72
		std	Load		; roughly equal	to se056 pulse time * air temp table * fuzz factor
		ldaa	byte_4D		; bit 6	is cache of SPD	pin, flags
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
		std	word_8C

loc_F571:				; CODE XREF: ROM:F55Aj
		ldaa	SatCount_D2
		cmpa	#2
		bhi	loc_F57F
		bsr	reinitLoads
		ldx	#$FECB
		jsr	$50,x		; ff1b
; ---------------------------------------------------------------------------
		db $21 ; !		; brn
; ---------------------------------------------------------------------------

loc_F57F:				; CODE XREF: ROM:F575j
		clra
		staa	byte_86
		ldd	FullRPM		; full range first dervitive continuous	RPM variable, rpms: 600, 8000 values: 192, 2560
		ldx	#$FE9C
		jsr	$91,x		; ff2d
		jsr	DivDby32
		adda	#8
		std	SE056Maxtime
		ldd	#2048
		jsr	Calc72		; returns word_72 multiplied by	2 multiplied by	THAcorr
		std	word_72		; air temp compensated
		ldx	#$FED2
		jsr	$49,x		; ff1b
		psha			; this gets multiplied by word_72*2
		jsr	sub_F6E3
		std	word_70		; water	temp compensated
		ldd	#$6666
		cmpb	word_42
		bls	loc_F5AC
		ldaa	#$B3 ; '³'

loc_F5AC:				; CODE XREF: ROM:F5A8j
		cmpa	byte_5D		; =adc_tps - byte_5b, tps related
		bhi	loc_F5BB
		ldd	#$26F0		; b is 6000 RPM
		cmpb	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		bhi	loc_F5C3	; branch if less than 6000 RPM
		ldaa	#$33 ; '3'
		bra	loc_F5C3
; ---------------------------------------------------------------------------

loc_F5BB:				; CODE XREF: ROM:F5AEj
		ldd	#$19C8
		cmpb	byte_92		; comes	about by load *	lilRPM
		bls	loc_F5C3
		clra

loc_F5C3:				; CODE XREF: ROM:F5B5j	ROM:F5B9j ...
		staa	byte_88
		ldaa	byte_4C		; msb inhibits injection
		bpl	loc_F5EB
		bsr	reinitLoads	; reset	some crap if injection is inhibited
		jmp	loc_F673

; =============== S U B	R O U T	I N E =======================================


reinitLoads:				; CODE XREF: ROM:F577p	ROM:F5C9p
		ldd	Load		; roughly equal	to se056 pulse time * air temp table * fuzz factor
		std	Loadfilt2
		std	Loadfilt1
		clra
		staa	byte_89		; load related?
		rts
; End of function reinitLoads


; =============== S U B	R O U T	I N E =======================================


sub_F5D8:				; CODE XREF: sub_F5E3+4Ap
		bcs	loc_F5E9
		inx
		subd	#$80 ; '€'
		bcs	loc_F5E9
; End of function sub_F5D8


; =============== S U B	R O U T	I N E =======================================

; shift	D right	three times, if	A then B=FF

sub_F5E0:				; CODE XREF: sub_F5E3+28p
		lsrd
; End of function sub_F5E0


; =============== S U B	R O U T	I N E =======================================

; shift	D right	two times, if A	then B=FF

sub_F5E1:				; CODE XREF: sub_F70A+AP
		lsrd
; End of function sub_F5E1


; =============== S U B	R O U T	I N E =======================================

; shift	D right	one time, if A then B=FF

sub_F5E2:				; CODE XREF: sub_F420:loc_F48AP
		lsrd
; End of function sub_F5E2


; =============== S U B	R O U T	I N E =======================================

; If A then B=FF

sub_F5E3:				; CODE XREF: sub_F420+4DP sub_F420+7FP ...
		tsta
		beq	locret_F5EA
		ldab	#$FF
; ---------------------------------------------------------------------------
		db $21 ; !		; brn
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
		bcc	loc_F5F7	; write	byte_84, byte_85

loc_F5F6:				; CODE XREF: sub_F5E3+Aj
		clra

loc_F5F7:				; CODE XREF: sub_F5E3+11j
		std	byte_84		; write	byte_84, byte_85
		ldab	#$FA ; 'ú'
		addb	byte_87
		bcs	loc_F600
		clrb

loc_F600:				; CODE XREF: sub_F5E3+1Aj
		stab	byte_87
		ldd	Loadfilt2
		subd	Load		; roughly equal	to se056 pulse time * air temp table * fuzz factor
		bcs	loc_F61A	; carry	is set when load is increasing
		deca
		bmi	loc_F61A
		bsr	sub_F5E0	; right	shift d	3 times, saturate b if acca is not zero
		ldaa	#204
		mul
		ldab	#176
		cmpb	ADC_ThW		; water	temp in	farenheit
		bhi	loc_F61A
		ldab	byte_88
		beq	loc_F61B

loc_F61A:				; CODE XREF: sub_F5E3+23j sub_F5E3+26j ...
		clra

loc_F61B:				; CODE XREF: sub_F5E3+35j
		staa	byte_89		; load related?
		ldd	Loadfilt2
		addd	Load		; roughly equal	to se056 pulse time * air temp table * fuzz factor
		lsrd
		addd	Loadfilt2
		lsrd
		std	Loadfilt2
		ldx	Loadfilt1
		ldd	Load		; roughly equal	to se056 pulse time * air temp table * fuzz factor
		subd	Loadfilt1
		bsr	sub_F5D8	; can increment	x
		pshb
		stx	Loadfilt1
		ldx	#6
		ldaa	SpdPlsdiff
		ldab	byte_4C		; msb inhibits injection
		cmpa	#15
		bhi	loc_F641	; bounce if vehicle is slower than 15
		andb	#$F7 ; '÷'
		bra	loc_F647
; ---------------------------------------------------------------------------

loc_F641:				; CODE XREF: sub_F5E3+58j
		cmpa	#$13
		bcs	loc_F649
		orb	#8

loc_F647:				; CODE XREF: sub_F5E3+5Cj
		stab	byte_4C		; msb inhibits injection

loc_F649:				; CODE XREF: sub_F5E3+60j
		bitb	#8
		bne	loc_F654
		ldaa	ADC_ThW		; water	temp in	farenheit
		cmpa	#96
		bcc	loc_F654
		dex			; less filtering of load

loc_F654:				; CODE XREF: sub_F5E3+68j sub_F5E3+6Ej
		ldd	Load		; roughly equal	to se056 pulse time * air temp table * fuzz factor

loadfiltloop:				; CODE XREF: sub_F5E3+77j
		addd	Loadfilt1
		lsrd
		dex			; x can	contain	6 ($f632), or less depending on	previous code
		bne	loadfiltloop
		std	Loadfilt1
		ldd	word_8C
		subd	#16
		bcc	loc_F666
		clra

loc_F666:				; CODE XREF: sub_F5E3+80j
		std	word_8C
		adda	byte_8B		; tableTHW output (FEBD	decreasing)
		ldab	DecelCutRPM	; lilRPM related
		cmpb	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		bhi	loc_F671	; branch if RPM	is lower than cutoff
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
		staa	word_D3		; looks	like a temp variable for subs
		ldaa	byte_83		; TableTHW output (FEAF	decreasing)
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
		dec	word_D3		; looks	like a temp variable for subs
		beq	loc_F6B1
		addd	word_72
		bra	loc_F6A8
; ---------------------------------------------------------------------------

loc_F6B1:				; CODE XREF: sub_F5E3+C8j
		std	word_72
		ldx	#$FF9D
		jsr	$46,x		; ffe3,	saturate count satcount_9c
		jsr	Calc76		; calculates word_76
; End of function sub_F5E3


; =============== S U B	R O U T	I N E =======================================


sub_F6BB:				; CODE XREF: sub_F96A+C4P
		ldd	#$801
		bita	byte_4D		; bit 6	is cache of SPD	pin, flags
		bne	sub_F6D4
		cmpb	SatCount_9C
		ldd	word_72
		bcs	loc_F6D8
		ldab	byte_8B		; tableTHW output (FEBD	decreasing)
		addb	word_8C
		pshb
		bsr	sub_F6E3
		lsld
		addd	word_72
		bra	loc_F6D8
; End of function sub_F6BB


; =============== S U B	R O U T	I N E =======================================


sub_F6D4:				; CODE XREF: sub_F6BB+5j sub_F96A+8AP
		ldaa	word_76		; probably oxygen sensor adjustment, default value is $8000
		bsr	sub_F700	; word_72 multiplied by	msB of word_76 with some shifting returned in d

loc_F6D8:				; CODE XREF: sub_F6BB+Bj sub_F6BB+17j
		subd	word_70		; upper	16 bits	of word_72*2*FED2 coolant temp table
		bcs	loc_F6DE
		clra
		clrb

loc_F6DE:				; CODE XREF: sub_F6D4+6j
		addd	word_70		; upper	16 bits	of word_72*2*FED2 coolant temp table
		std	FuelRatioH	; stores the ratio to multiply se056plstime by
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


Calc72:					; CODE XREF: ROM:F552P	ROM:F593P
		std	word_72
		ldaa	ThAcorr
; End of function Calc72


; =============== S U B	R O U T	I N E =======================================


sub_F700:				; CODE XREF: sub_F6D4+2p ROM:F74Fj
		psha
		bsr	sub_F6E3	; multiply word_72 by 2	then by	stack, returns upper 16	bits
		addd	word_72
		lsrd
		addd	word_72		; smoothing it with the	last word_72
		lsrd
		rts
; End of function sub_F700


; =============== S U B	R O U T	I N E =======================================


sub_F70A:				; CODE XREF: sub_F5E3+BDp
		ldaa	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		ldab	#202
		mul
		psha
		ldd	Load		; roughly equal	to se056 pulse time * air temp table * fuzz factor
		bsr	mulDbyStack	; returns upper	16b in d
		jsr	sub_F5E1	; shift	D right	two times, if A	then B=FF
		stab	byte_92		; comes	about by load *	lilRPM
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
		cmpa	byte_92		; comes	about by load *	lilRPM
		bcc	loc_F72E
		clc
		bra	loc_F731
; ---------------------------------------------------------------------------

loc_F72E:				; CODE XREF: sub_F70A:loc_F725j
					; sub_F70A+1Fj
		suba	byte_92		; comes	about by load *	lilRPM
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
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
; End of function sub_F70A		; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		db 153
		db 92
; ---------------------------------------------------------------------------
		adda	word_42
		suba	#$80 ; '€'
		staa	byte_D6
		bra	sub_F700

; =============== S U B	R O U T	I N E =======================================


sub_F751:				; CODE XREF: sub_F96A+75P
		ldaa	word_42
		ldab	word_40
		ldx	byte_95		; MSB may be IDL/throttle closed condition
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
		db $B3 ; ³
		db $24 ; $
; ---------------------------------------------------------------------------
		bcs	loc_F798
		psha
		ldaa	byte_95		; MSB may be IDL/throttle closed condition
		bpl	loc_F797
		ldaa	byte_5C
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		db $8A ; Š
		db $76 ; v
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
		std	word_40
		rts
; ---------------------------------------------------------------------------
		dw $1996		; data (f7f1 entry)
		dw $7AD
		dw $EB			; word data
		dw $4E			; word data
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR Calc76

fake76:					; CODE XREF: Calc76+8j
		orb	#4
		ldaa	#$71 ; 'q'

fake76_2:
		staa	unk_9B

fake76_3:				; CODE XREF: Calc76+Cj	Calc76+10j ...
		clr	SatCount_CE

fake76_4:				; CODE XREF: Calc76+18j
		andb	#$F7 ; '÷'
		stab	byte_4D		; bit 6	is cache of SPD	pin, flags
		ldd	#$8000
		stab	byte_94		; clear	byte_94
		bra	loc_F811
; END OF FUNCTION CHUNK	FOR Calc76

; =============== S U B	R O U T	I N E =======================================


Calc76:					; CODE XREF: sub_F5E3+D5P

; FUNCTION CHUNK AT F7AA SIZE 00000014 BYTES

		ldab	byte_4D		; bit 6	is cache of SPD	pin, flags
		bpl	loc_F7C4
		andb	#$FB ; 'û'

loc_F7C4:				; CODE XREF: Calc76+2j
		ldx	byte_83		; TableTHW output (FEAF	decreasing)
		bne	fake76
		ldx	byte_87
		bne	fake76_3
		ldaa	byte_4C		; msb inhibits injection
		bmi	fake76_3
		ldaa	SatCount_97
		bmi	fake76_3
		bitb	#4
		bne	fake76_4
		orb	#8
		stab	byte_4D		; bit 6	is cache of SPD	pin, flags
		ldd	#$6C6F
		ldx	#1024
		cpx	Load		; roughly equal	to se056 pulse time * air temp table * fuzz factor
		bhi	loc_F7E7	; bounce
		tba

loc_F7E7:				; CODE XREF: Calc76+26j
		ldx	#$FF9C
		jsr	8,x		; ffa4
		staa	unk_9B
		ldx	#$F7A6		; 235@offset 0,	78 at offset 2

loc_F7F1:				; p4-2 is IDL, active high when	IDL switch is closed
		ldab	Port4
		bitb	#4		; p4-2 is IDL, active high when	IDL switch is closed
		beq	loc_F7F9	; bounce if not	throttle closed
		inx
		inx			; x would then be F7A8

loc_F7F9:				; CODE XREF: Calc76+37j
		ldaa	byte_9A		; oxygen sensor	related
		asla
		ldd	word_76		; probably oxygen sensor adjustment, default value is $8000
		bcc	loc_F802+1	; if msb of unk_9a is low, addd	0,x
		subd	0,x		; otherwise subtract, is this oxygen sensor feedback control?

loc_F802:				; CODE XREF: Calc76+40j
		cpx	#$E300		; e300 is addd 0,x - richen mixture?
		pshb
		ldab	byte_9D		; dynamic limit	to oxy feedback?
		cba
		bcc	capMSB76
		negb
		cba
		bcc	loc_F810

capMSB76:				; CODE XREF: Calc76+4Bj
		tba

loc_F810:				; CODE XREF: Calc76+4Fj
		pulb

loc_F811:				; CODE XREF: Calc76-2j
		std	word_76		; probably oxygen sensor adjustment, default value is $8000
		rts
; End of function Calc76

; ---------------------------------------------------------------------------

BeginCalcADV:				; CODE XREF: sub_FD41-C39P
		ldd	#$11C		; B contains default timing value, 28/255*90 = 10 degrees
		anda	unk_CD
		bne	No3dtablework	; jump past table lookup because we're in test mode, or other conditions forced -10deg btdc
		ldaa	byte_C6
		bpl	No3dtablework	; jump past table lookup because we're in test mode, or other conditions forced -10deg btdc
		ldaa	byte_95		; msb could signify IDL/throttle closed	condition.
		bpl	Pre3d		; this is the only way we're getting to the 3d table
		ldaa	Port4		; p4-5 is T input to pcm, test mode is active low
		anda	#$20 ; ' '      ; p4-5 is T input to pcm, test mode is active low
		bne	IdleADVcomp

No3dtablework:				; CODE XREF: ROM:F819j	ROM:F81Dj
		jmp	loc_F8EE	; jump past table lookup because we're in test mode, or other conditions forced -10deg btdc
; ---------------------------------------------------------------------------

IdleADVcomp:				; CODE XREF: ROM:F827j
		ldaa	IdleRPMfilt
		suba	IdleRPMs	; precision RPM	counter	for idle control, saturates at 1246 RPM
		jsr	boundDataneg	; Limits AccA to bounds	set by two bytes after call
; ---------------------------------------------------------------------------
		db 16
		db 0
; ---------------------------------------------------------------------------
		ldab	#136
		mul
		lsld
		lsld
		ldab	Port4		; p4-3 is ac input, active high
		andb	#8		; p4-3 is ac input, active high
		beq	notest2		; bounce if ac is off
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		db 14
		db 0
; ---------------------------------------------------------------------------
		ldab	#14		; 14 is	about 5	deg advance

notest2:				; CODE XREF: ROM:F83Ej
		staa	IDLcompADV
		ldaa	#45
		aba			; b is either 8	from ac	AND check fail,	or 14 from ac code
		clrb
		stab	SatCount_C7	; clear	SatCount_C7
		ldab	word_42
		cmpb	#$42 ; 'B'      ; 16896 minimum fr word_42
		bcc	notestexit	; bypasses 3d table lookup
		adda	#14		; so from here Acca can	be [45,	59, 73]	which is [16, 21, 26] deg advance

notestexit:				; CODE XREF: ROM:F853j
		bra	temploadADV	; bypasses 3d table lookup
; ---------------------------------------------------------------------------

Pre3d:					; CODE XREF: ROM:F821j
		clr	IDLcompADV
		ldx	#$FFC8
		jsr	$1B,x		; ffe3,	saturate count satcount_C7
		cmpa	#5
		bcc	lookup3dTable	; if SatCount_C7>=5, use the 3d	table
		ldab	#17
		addb	ThW_tADV
		jmp	SetAdvfromB	; bypass 3d table
; ---------------------------------------------------------------------------

lookup3dTable:				; CODE XREF: ROM:F863j
		ldd	Load		; roughly equal	to se056 pulse time * air temp table * fuzz factor
		cmpa	#$B
		bls	lookup3d2	; now maximum value can	only be	$9FF, this is basically	subtracting 512
		ldd	#$BFF		; saturate word_7f to $0BFF

lookup3d2:				; CODE XREF: ROM:F870j
		suba	#2		; now maximum value can	only be	$9FF, this is basically	subtracting 512
		bcc	lookup3d3	; bounce if good, otherwise null out
		clra
		clrb

lookup3d3:				; CODE XREF: ROM:F877j
		lsrd			; divide by 2, maximum range is	now 4FF
		pshb
		ldab	#$E		; suggests table size is 14 bytes
		mul			; output can range from	0,E,1c,2a,38
		ldx	#$FF40
		abx
		ldaa	RPMish		; rpms:	[600, 4800, 7200] RPMish value:	[24, 192, 208] - linear	interpolate between points
		pshx
		ldab	#$E
		abx
		jsr	loc_FF28	; another entry	point
		pulx
		psha
		ldaa	RPMish		; rpms:	[600, 4800, 7200] RPMish value:	[24, 192, 208] - linear	interpolate between points
		jsr	loc_FF28	; another entry	point
		psha
		tsx
		ldd	1,x
		suba	0,x
		jsr	sub_FF35	; finish up the	3d table interpolation by calling the final portion of the 2d table interpolate	code
		ins
		pulx
		ldab	TVIScounter	; TVIS counter,	negative (F4) when on, positive	(2) when off, counts back and forth after a transition
		bmi	PWRrAdv		; bounce around	tweaking the output of 3d table	lookup
		adda	#8		; add 3	deg of base timing if tvis is off

PWRrAdv:				; CODE XREF: ROM:F8A1j
		ldx	#$FF94		; Tweak	output of 3d table with	output of this ADC_PWRr	function, mostly harmless though
		jsr	$10,x		; ffa4
		bcc	temploadADV	; bounce if no carry
		clra

temploadADV:				; CODE XREF: ROM:notestexitj ROM:F8AAj
		staa	BaseAdvance	; stores output	from 3d	lookup
		ldaa	ADC_ThW		; water	temp in	farenheit
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		db $98 ; ˜		; 152 farenheit
		db $50 ; P		; 80 farenheit
; ---------------------------------------------------------------------------
		bcs	sumallADV+1	; clear	d is bound data	clipped	temp input
		ldx	#1450		; only executed	between	80 and 152f
		ldaa	byte_A5		; byte_a5 is only either 0 or D6
		beq	tempload2
		ldx	#1550

tempload2:				; CODE XREF: ROM:F8BDj
		cpx	Load		; roughly equal	to se056 pulse time * air temp table * fuzz factor
		bcs	sumallADV+1	; clear	d if Load is greater than X
		ldaa	byte_95		; MSB may be IDL/throttle closed condition
		bmi	sumallADV+1	; clear	d if MSB of byte_95
		ldd	#$FFD6

sumallADV:				; CODE XREF: ROM:F8B6j	ROM:F8C4j ...
		cpx	#$4F5F		; clra clrb
		stab	byte_A5		; A:B is either	0:0 or FFD6, 42	counts from 0
		addb	ThW_tADV	; minimum is 28, except	when overheating when it can be	15 (load dependant)
		adca	#0
		addb	BaseAdvance	; stores output	from 3d	lookup
		adca	#0
		addb	IDLcompADV
		adca	#0
		bpl	sumgood		; b is expected	to overflow and	carries	force A	positive
		clra			; force	good sum of 0 advance
		clrb

sumgood:				; CODE XREF: ROM:F8DEj
		jsr	sub_F5E3	; if AccA is 0,	return,	otherwise saturate AccB	to $FF
		tba
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		db 184			; timing is roughly [this value]/255*90, so 184/255*90=65deg
		db 31			; 31, which is 11deg
; ---------------------------------------------------------------------------
		tab
		subb	#28		; subtract 10 deg

loc_F8EE:				; CODE XREF: ROM:No3dtableworkJ
		stab	unk_D8

SetAdvfromB:				; CODE XREF: ROM:F869J
		addb	#1		; to prevent it	from being 0 I suppose,	incb would save	a byte here
		pshb
		ldd	deltaNE		; outcomp
		jsr	DivDby16
		std	word_D3		; =deltane/16
		ldd	deltaNE		; outcomp
		jsr	mulDbyStack	; returns upper	16b in d
		lsrd
		inca			; add 256us of advance (11.3644	degrees	at 7400	RPM, 0.0074 degrees at idle)
		subd	word_D3		; subtract 11.25 degrees of timing (account for	timing of NE edge at 10	degrees	BTDC)
		bcs	setnforgetADV	; branch if timing was less than 11.25 deg
		subd	NEhighWidth	; which	im assuming is exactly 50% of the NE duty cycle, should	set the	carry
		bcs	loc_F90B
		clra			; set advance to 0 deg
		clrb

loc_F90B:				; CODE XREF: ROM:F907j
		addd	NEhighWidth

setnforgetADV:				; CODE XREF: ROM:F903j
		std	AdvanceinUS	; word_a1 is the backoff from 10degrees	BTDC to	fire the igniter in us
		ldd	word_D3		; deltane/16
		addd	word_BF		; tops out at 8160 at 8.6V
		std	Dwell		; Probably dwell
		lsrd
		std	word_D3		; looks	like a temp variable for subs
		ldd	deltaNE		; outcomp
		subd	altDwell	; ADC_12V*4+384, abs max 1404
		subd	#100
		subd	word_D3		; looks	like a temp variable for subs
		bcs	loc_F925
		clra
		clrb

loc_F925:				; CODE XREF: ROM:F921j
		addd	word_D3		; looks	like a temp variable for subs
		std	word_B3
		ldaa	#1
		ldab	byte_C6
		bmi	loc_F936
		sei
		ora	TmrCntStat1	; set output compare level to high
		staa	TmrCntStat1	; set output compare level to high
		bra	ExitCalcADV
; ---------------------------------------------------------------------------

loc_F936:				; CODE XREF: ROM:F92Dj
		bsr	OutCmp1Sub1	; called from output compare ISR
		std	word_D3		; looks	like a temp variable for subs
		ldd	#$C02
		eora	byte_4E		; xor with $0C %00001100
		bita	#%1110
		bne	ExitCalcADV	; branch if bits 2,3 were low or bit 1 was high
		bitb	Port2		; looking at /IGT
		beq	ExitCalcADV	; branch if /IGT low
		ldd	word_D3		; looks	like a temp variable for subs
		std	OutCmp1
		ldx	TmrCntStat1
		jsr	stdOC1		; write	d to outcmp

ExitCalcADV:				; CODE XREF: ROM:F934j	ROM:F941j ...
		cli
		rts

; =============== S U B	R O U T	I N E =======================================

; called from output compare ISR

OutCmp1Sub1:				; CODE XREF: ROM:F3A9P	ROM:loc_F936p
		ldd	deltaNE		; outcomp
		subd	AdvanceinUS	; OC1/igt related
		subd	Dwell		; Probably dwell
		bcc	loc_F95C
		clra
		clrb

loc_F95C:				; CODE XREF: OutCmp1Sub1+6j
		addd	NEleEdge	; set during IC1 low handler
		sei
		subd	word_BD		; output compare routine only
		cmpa	#$E8 ; 'è'
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
		anda	byte_5F
		andb	Port1		; anding with 7f=0b0111111
		cmpa	byte_D7
		bcs	loc_F97C	; has potential	to toggle bit 7	- /VF ouput generation
		orb	#$80 ; '€'

loc_F97C:				; CODE XREF: sub_F96A+Ej
		stab	Port1		; has potential	to toggle bit 7	- /VF ouput generation
		ldaa	ADC_Oxy		; 0.45V
		cmpa	#23
		ldaa	byte_9A		; oxygen sensor	related
		bcs	oxy_low
		inca
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		db 129
		db 103
; ---------------------------------------------------------------------------
		bra	loc_F995
; ---------------------------------------------------------------------------

oxy_low:				; CODE XREF: sub_F96A+1Aj
		deca
		cmpa	unk_9B
		bcc	loc_F995
		ldaa	unk_9B

loc_F995:				; CODE XREF: sub_F96A+22j sub_F96A+27j
		staa	byte_9A		; oxygen sensor	related
		eora	byte_4D		; bit 6	is cache of SPD	pin, flags
		anda	#$80 ; '€'
		beq	loc_F9F7
		eora	byte_4D		; bit 6	is cache of SPD	pin, flags
		staa	byte_4D		; bit 6	is cache of SPD	pin, flags
		bita	#8
		beq	loc_F9F7
		ldab	#1
		ldaa	word_76		; probably oxygen sensor adjustment, default value is $8000
		adda	byte_93
		rora			; carry	rotated	into bit 7
		bmi	loc_F9AF
		negb

loc_F9AF:				; CODE XREF: sub_F96A+42j
		stab	byte_93
		ldab	byte_95		; MSB may be IDL/throttle closed condition
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
		ldx	Load		; roughly equal	to se056 pulse time * air temp table * fuzz factor
		cpx	#400
		bitb	Port4		; interested in	bit 5 -	test input
		bls	loc_F9E2	; branch if test is pulled low or the carry was	set (word_7f-400)
		ldaa	unk_CD
		bita	#1
		bne	loc_F9E2
		ldaa	byte_96
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
		ldaa	word_76		; probably oxygen sensor adjustment, default value is $8000
		staa	byte_93
		ldx	#$F7A2
		jsr	$4F,x		; f7f1 - data product seems to be word_76
		clra
		staa	SatCount_CE	; reset	satcount_ce
		jsr	sub_F6D4	; end product seems to be word_74

loc_F9F7:				; CODE XREF: sub_F96A+31j sub_F96A+39j
		ldaa	byte_95		; MSB may be IDL/throttle closed condition
		ldab	Port4		; p4-2 is IDL input, active low
		andb	#4
		beq	loc_FA0E	; bounce if throttle closed
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
		ldaa	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		cmpa	#100		; 2500 RPM
		bcc	loc_FA26
		ldd	#2000
		jsr	ForceInjAccD
		cli

loc_FA26:				; CODE XREF: sub_F96A+ADj sub_F96A+B3j
		ldaa	byte_4D		; bit 6	is cache of SPD	pin, flags
		anda	#1
		bne	loc_FA31
		staa	SatCount_9C
		jsr	sub_F6BB

loc_FA31:				; CODE XREF: sub_F96A+ABj sub_F96A+C0j
		ldab	byte_4C		; msb inhibits injection
		andb	#$3F ; '?'      ; clear bits 7 and 6
		stab	byte_4C		; clear	bits 7 and 6
		ldaa	#3

loc_FA39:				; CODE XREF: sub_F96A+A0j
		staa	byte_95		; MSB may be IDL/throttle closed condition

loc_FA3B:				; CODE XREF: sub_F96A+9Dj sub_F96A+A2j
		ldd	#$10FE
		anda	Port4		; p4-4 is start	signal
		beq	loc_FA60	; bounce if not	starting
		andb	byte_4C		; msb inhibits injection
		stab	byte_4C		; clear	lsb if starting
		ldaa	byte_4B
		ldab	byte_C6
		bmi	loc_FA62
		inca
		beq	loc_FA75
		staa	byte_4B		; increment unk_4b
		cmpa	#25
		bcs	loc_FA62	; less than 25
		bhi	loc_FA75	; more than 25
		ldd	#9000		; exactly 25
		jsr	ForceInjAccD2
		cli
		bra	loc_FA75
; ---------------------------------------------------------------------------

loc_FA60:				; CODE XREF: sub_F96A+D6j
		staa	byte_4B

loc_FA62:				; CODE XREF: sub_F96A+E0j sub_F96A+E9j
		ldab	#75
		cmpb	SatCount_68	; seems	to count main loops between incp2 trailing edges
		bcc	loc_FA83
		ldab	#$12
		stab	lilRPM		; write	$12 to unk_65
		tsta
		bne	loc_FA75
		ldaa	#1
		ora	byte_4C		; msb inhibits injection
		staa	byte_4C		; msb inhibits injection

loc_FA75:				; CODE XREF: sub_F96A+E3j sub_F96A+EBj ...
		ldd	#$405
		orb	byte_4D		; bit 6	is cache of SPD	pin, flags
		stab	byte_4D		; set bits 2, 0
		staa	byte_C6
		staa	byte_69
		clra
		staa	SatCount_CE

loc_FA83:				; CODE XREF: sub_F96A+FCj
		ldaa	byte_C6
		bpl	loc_FA92
		ldd	#$14FE		; a is 500 RPM,	which is almost	rock bottom for	measurement
		cmpa	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		bhi	loc_FA92
		andb	byte_4D		; bit 6	is cache of SPD	pin, flags
		stab	byte_4D		; clear	bit 0

loc_FA92:				; CODE XREF: sub_F96A+11Bj
					; sub_F96A+122j
		ldab	byte_4D		; bit 6	is cache of SPD	pin, flags
		bitb	#1
		beq	procJmpTable
		clr	SatCount_D2	; clear	if MSB of 4D is	set
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
		anda	#$80 ; '€'
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
		db $F1 ; ñ		; 241 deg F
		db   4			; 4 deg	F
; ---------------------------------------------------------------------------
		bcc	loc_FADD	; if the carry was clear the data was not clipped
		ldaa	ADC_ThW		; water	temp in	farenheit

loc_FADD:				; CODE XREF: ROM:FAD9j
		psha
		ldaa	#4
		jsr	FlagBadStuff	; acca=$04
		pula
		bcc	saveADCdata1
		ldaa	#$C0 ; 'À'      ; default water temp?
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
		db $FA ; ú
		db   6
; ---------------------------------------------------------------------------
		bcc	loc_FAF8
		ldaa	ADC_ThA

loc_FAF8:				; CODE XREF: ROM:FAF4j
		psha
		ldaa	#$40 ; '@'
		jsr	FlagBadStuff	; acca=$40
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
		beq	txadc2		; test to see if we're talking to the ADC (p3-6 low)
		pshx

txwaitFB0E:				; CODE XREF: TXtoADC+Bj
		ldx	Timer		; load timer
		cpx	EndTxByteTime	; word_51 is 320us greater than	the termination	of the last serial interrupt
		bmi	txwaitFB0E	; loop while time haas not expired yet,	while presumably tx is busy
		pulx

txadc2:					; CODE XREF: TXtoADC+4j
		inc	ADCcontrol	; controls a jump table	at fa9b, also deselects	ADC with LSB, also controls which channel to select

txadc3:					; CODE XREF: ROM:F3E4P
		bsr	ADCchanSelect	; called here from serial interrupt when receive error was detected
		ldaa	#$C		; external clock, 62500	baud (not that thats relevant i	guess)
		staa	UARTRateMode
		ldaa	#$1A		; Rx int enable, rx enable, tx enable
		staa	TxRxCntStat
		ldaa	TxRxCntStat	; read from reg	to clear any pending error bits
		ldaa	#$BF ; '¿'      ; bit 6 low
		sei
		anda	Port3		; Select ADC
		staa	Port3		; Select ADC
		stab	TxReg		; tx a value based on the value	in ADCcontrol
		cli
		rts
; End of function TXtoADC


; =============== S U B	R O U T	I N E =======================================


ADCchanSelect:				; CODE XREF: ROM:FABBp	TXtoADC:txadc3p
		ldab	ADCcontrol	; controls a jump table	at fa9b, also deselects	ADC with LSB, also controls which channel to select
		lsrb			; lsb into carry bit
		bcs	adchansel2	; branch if lsb	was high
		ldab	#5		; otherwise return 5
		rts
; ---------------------------------------------------------------------------

adchansel2:				; CODE XREF: ADCchanSelect+3j
		andb	#7
		cmpb	#7
		beq	adchansel3	; if adccontrol	was initially $xF, return 4
		andb	#3		; if adccontrol	was any	odd number NOT $xF, return values in the range of 0..3
		rts
; ---------------------------------------------------------------------------

adchansel3:				; CODE XREF: ADCchanSelect+Cj
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
		db 250
		db 5
; ---------------------------------------------------------------------------
		psha
		ldaa	#$20 ; ' '      ; carry is unmolested by ldaa
		jsr	FlagBadStuff	; acca=$20
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
		ldab	byte_95		; MSB may be IDL/throttle closed condition
		bmi	loc_FB7C
		ldaa	byte_5B		; TPS related
		bra	loc_FB8F
; ---------------------------------------------------------------------------

loc_FB7C:				; CODE XREF: ROM:FB76j
		adda	byte_5B		; TPS related
		rora
		adda	byte_5B		; TPS related
		rora
		cmpb	#$83 ; 'ƒ'
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
		db $29 ; )
		db   5
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
		ldaa	byte_95		; MSB may be IDL/throttle closed condition
		bmi	loc_FBD2
		ldaa	byte_5D		; =adc_tps - byte_5b, tps related
		suba	byte_5A
		bcs	loc_FBD2
		cmpa	#4
		bcs	loc_FBD2
		bsr	boundDataneg	; Limits AccA to bounds	set by two bytes after call
; ---------------------------------------------------------------------------
		db $1C
		db   0
; ---------------------------------------------------------------------------
		ldx	#$FEA7
		clrb
		jsr	$84,x		; ff2b
		ldab	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		cmpb	#80		; 2000 RPM
		bcs	loc_FBC1
		lsra

loc_FBC1:				; CODE XREF: ROM:FBBEj
		psha
		ldd	SE056Maxtime
		subd	SE056plstime
		bls	loc_FBD1	; increment the	stack pointer
		jsr	mulDbyStack	; returns upper	16b in d
		lsld
		jsr	ForceInjAccD
		cli
; ---------------------------------------------------------------------------
		db $21 ; !		; branch never,	next byte is ignored when falling through
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
		jsr	$39,x		; ff1b,	table thw, decel fuel cut rpm lookup
		ldab	SatCount_D2
		cmpb	#76
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
		db 255			; 6375 RPM and beyond
		db 60			; 1500 RPM
; ---------------------------------------------------------------------------

loc_FBEF:				; CODE XREF: ROM:FBE8j
		staa	DecelCutRPM	; lilRPM related
		ldaa	ADC_ThA
		ldx	#$FED9
		jsr	$4C,x		; ff25
		staa	ThAcorr
		ldx	#$FF0A
		jsr	$11,x		; ff1b
		ldab	ADC_ThW		; water	temp in	farenheit
		subb	#218
		bcs	loc_FC1E	; branch if not	overheating
		tba
		jsr	boundData	; Limits AccA to bounds	set by two bytes after call
					; Carry	bit is only set	if data	has been clipped at either level
					;
; ---------------------------------------------------------------------------
		db 15
		db 0
; ---------------------------------------------------------------------------
		ldx	#$FF11
		clrb
		jsr	$19,x		; ff2a
		ldab	byte_95		; MSB may be IDL/throttle closed condition
		bmi	loc_FC1C
		ldx	Load		; roughly equal	to se056 pulse time * air temp table * fuzz factor
		cpx	#2500
		bcc	loc_FC1E

loc_FC1C:				; CODE XREF: ROM:FC13j
		ldaa	#28

loc_FC1E:				; CODE XREF: ROM:FC03j	ROM:FC1Aj
		staa	ThW_tADV
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
		stx	word_40
		ldx	#$FF
		stx	word_46
		stx	word_48
		stx	word_44
		ldaa	#$5A ; 'Z'
		staa	byte_4A

loc_FC47:				; CODE XREF: ROM:FC2Bj
		ldab	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		ldaa	Port1		; interested in	 bit 6 /TVIS
		anda	#$BF ; '¿'      ; force bit 6 low, /TVIS on
		cmpb	#158		; 3950 RPM
		bcs	setTVIS		; branch if less than 3950 RPM to set TVIS ON
		cmpb	#174		; 4350 RPM
		bcs	nosetTVIS	; branch if less than 4350 RPM,	no change to TVIS
		ora	#$40 ; '@'      ; tvis off

setTVIS:				; CODE XREF: ROM:FC4Fj
		staa	Port1		; has capability to toggle bit 6 - /TVIS

nosetTVIS:				; CODE XREF: ROM:FC53j
		ldaa	TVIScounter	; TVIS counter,	negative (F4) when on, positive	(2) when off, counts back and forth after a transition
		ldab	Port1		; interested in	bit 6 /TVIS
		aslb
		bmi	loc_FC67	; branch if tvis off
		deca			; decrement if tvis on
		bpl	storeTVIScntr
		ldaa	#$F4 ; 'ô'
		bra	storeTVIScntr
; ---------------------------------------------------------------------------

loc_FC67:				; CODE XREF: ROM:FC5Ej
		inca			; increment if tvis off
		bmi	storeTVIScntr
		ldaa	#2

storeTVIScntr:				; CODE XREF: ROM:FC61j	ROM:FC65j ...
		staa	TVIScounter	; TVIS counter,	negative (F4) when on, positive	(2) when off, counts back and forth after a transition

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
		jsr	FlagBadStuff	; acca=$01
		ldaa	ADC_12V		; +B1 terminal divided by 5... =255*12/25
		suba	#83		; about	8.1V
		bcc	loc_FC94
		clra

loc_FC94:				; CODE XREF: ROM:FC91j
		ldx	#$FEE9
		jsr	$3C,x		; ff25
		bsr	DivDby32
		addd	#464
		std	InjDeadTime	; max value is 2504, table output of ADC_12V
		ldaa	ADC_12V		; +B1 terminal divided by 5... =255*12/25
		ldx	#$FF12
		jsr	$13,x		; ff25
		lsrd
		lsrd
		lsrd
		addd	word_BF		; tops out at 8160 at 8.6V
		lsrd
		std	word_BF		; tops out at 8160 at 8.6V
		ldab	ADC_12V		; +B1 terminal divided by 5... =255*12/25
		clra
		lsld
		lsld
		addd	#384
		std	altDwell	; ADC_12V*4+384, abs max 1404
		bra	loc_FCD6
; ---------------------------------------------------------------------------

jmptable1:				; DATA XREF: ROM:JumpTableo
		ldaa	byte_95		; MSB may be IDL/throttle closed condition
		bpl	loc_FCC9
		ldab	word_42
		cmpb	#66
		bcc	loc_FCC9
		ldaa	Port1		; interested in	bit 5, output to port buffer
		bra	loc_FCD2	; bit 5	($20) goes to port buffer, is output
; ---------------------------------------------------------------------------

loc_FCC9:				; CODE XREF: ROM:FCBDj	ROM:FCC3j
		ldd	#$DF4C
		anda	Port1		; Zero-ing bit 5
		cmpb	SatCount_D2	; 76-satcount_d2
		bcs	loc_FCD4	; buffer off

loc_FCD2:				; CODE XREF: ROM:FCC7j
		ora	#$20 ; ' '      ; bit 5 ($20) goes to port buffer, is output

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
		cmpb	#$F3
		bcs	loc_FCEE
		cmpa	#$F3 ; 'ó'
		bcc	loc_FCFE

loc_FCEE:				; CODE XREF: ROM:FCDFj	ROM:FCE8j
		cmpa	#$25 ; '%'
		bcs	loc_FCF8
		ldaa	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		cmpa	#40		; 1000 RPM
		bcc	loc_FCFE

loc_FCF8:				; CODE XREF: ROM:FCF0j
		ldab	SatCount_D1
		cmpb	#9
		bcs	flagbadstuf5

loc_FCFE:				; CODE XREF: ROM:FCECj	ROM:FCF6j
		ldaa	#$10
		bra	flagbadstuf3	; p4-5

; =============== S U B	R O U T	I N E =======================================


FlagBadStuff:				; CODE XREF: ROM:FAE0P	ROM:FAFBP ...

; FUNCTION CHUNK AT FD2D SIZE 0000000C BYTES

		bcc	flagbadstuf6
		bita	byte_CC		; used for flagging bad	sensors	probably, bits:	6-ThA, 5-TPS, 2-ThW, 0-afm(not from adc)
		bne	flagbadstuf2
		ora	byte_CC		; used for flagging bad	sensors	probably, bits:	6-ThA, 5-TPS, 2-ThW, 0-afm(not from adc)
		bra	flagbadstuf7
; ---------------------------------------------------------------------------

flagbadstuf2:				; CODE XREF: FlagBadStuff+4j
		sec
		bita	#$1F
		beq	flagbadstuf4
; End of function FlagBadStuff


; =============== S U B	R O U T	I N E =======================================

; p4-5

flagbadstuf3:				; CODE XREF: sub_FD41-C73P
					; sub_F420+23P	...
		ldab	Port4
		bitb	#$20 ; ' '      ; p4-5 is Test mode input. low is check mode
		beq	flagbadstuf4
		ldab	#$DA
		stab	byte_C8

flagbadstuf4:				; CODE XREF: FlagBadStuff+Dj
					; flagbadstuf3+4j
		tab
		orb	unk_CD
		stab	unk_CD
		ldab	Port4		; p4-4 is STA input, active high
		bitb	#$10
		bne	flagbadstuf5	; bomb out if STA starting
		ora	word_48
		tab
		comb
		std	word_48

flagbadstuf5:				; CODE XREF: ROM:FCFCj
					; flagbadstuf3+13j
		rts
; End of function flagbadstuf3

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR FlagBadStuff

flagbadstuf6:				; CODE XREF: FlagBadStuffj
		coma
		tab
		andb	unk_CD
		stab	unk_CD
		anda	byte_CC		; used for flagging bad	sensors	probably, bits:	6-ThA, 5-TPS, 2-ThW, 0-afm(not from adc)

flagbadstuf7:				; CODE XREF: FlagBadStuff+8j
		staa	byte_CC		; used for flagging bad	sensors	probably, bits:	6-ThA, 5-TPS, 2-ThW, 0-afm(not from adc)
		clc
		rts
; END OF FUNCTION CHUNK	FOR FlagBadStuff
; ---------------------------------------------------------------------------
JumpTable:	dw jmptable1		; DATA XREF: procJmpTable+4o
					; jump table 4 vectors
		dw jmptable2
		dw jmptable3		; test level of	bit4 (input from mixed signal se056)
		dw jmptable4

; =============== S U B	R O U T	I N E =======================================


sub_FD41:				; CODE XREF: sub_FD41:loc_F0F7P

arg_FC		=  $FE

; FUNCTION CHUNK AT F000 SIZE 00000119 BYTES

		ldx	#$FEAF
		jsr	$6C,x		; ff1b
		staa	byte_83		; TableTHW output (FEAF	decreasing)
		ldx	#$FEBD
		jsr	$5E,x		; ff1b
		staa	byte_8B		; tableTHW output (FEBD	decreasing)
		ldd	#$B020
		cmpa	ADC_ThW		; compare against 176
		bhi	loc_FD5A
		cmpb	byte_92		; comes	about by load *	lilRPM
		bls	loc_FD5D

loc_FD5A:				; CODE XREF: sub_FD41+13j
		clr	SatCount_CE

loc_FD5D:				; CODE XREF: sub_FD41+17j
		ldx	#$FFD3
		jsr	$10,x		; ffe3,	saturate count satcount_D2
		ldaa	SpdPlsdiff
		bne	loc_FD79	; p4-5,	test input active low
		ldd	#$2001		; a contains 800 RPM
		cmpa	lilRPM		; 24 = 600 rpm 255 = 6375 RPM
		bhi	loc_FD79	; p4-5,	test input active low
		ldaa	byte_C6
		bpl	loc_FD79	; p4-5,	test input active low
		andb	byte_4C		; msb inhibits injection
		orb	word_46
		tba
		comb
		std	word_46

loc_FD79:				; CODE XREF: sub_FD41+23j sub_FD41+2Aj ...
		ldab	Port4		; p4-5,	test input active low
		andb	#$20 ; ' '
		beq	loc_FDAE
		ldab	byte_4D		; bit 6	is cache of SPD	pin, flags
		andb	#8
		beq	loc_FD9D
		ldaa	word_76		; probably oxygen sensor adjustment, default value is $8000
		adda	byte_D6
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
		stab	byte_D7
		clra
		clrb
		std	word_C9
		coma
		staa	byte_CB
		ldab	byte_4D		; bit 6	is cache of SPD	pin, flags
		bitb	#1
		bne	loc_FE1B	; may set bit 3	- MIL
		bra	loc_FDCE
; ---------------------------------------------------------------------------

loc_FDAE:				; CODE XREF: sub_FD41+3Cj
		ldaa	byte_95		; MSB may be IDL/throttle closed condition
		bmi	loc_FDB8	; p4-2 is IDL, p4-3 is AC, so idling and ac perhaps?
		ldaa	byte_9A		; oxygen sensor	related
		bpl	loc_FDC6
		bra	loc_FDC4
; ---------------------------------------------------------------------------

loc_FDB8:				; CODE XREF: sub_FD41+6Fj
		ldaa	Port4		; p4-2 is IDL, p4-3 is AC, so idling and ac perhaps?
		eora	#4
		anda	#$C
		ora	word_46
		ora	word_48
		bne	loc_FDC6

loc_FDC4:				; CODE XREF: sub_FD41+75j
		ldab	#8

loc_FDC6:				; CODE XREF: sub_FD41+73j sub_FD41+81j
		stab	byte_D7
		ldab	byte_CB
		addb	#1
		beq	loc_FE00

loc_FDCE:				; CODE XREF: sub_FD41+6Bj
		ldaa	byte_C8
		inca
		bne	loc_FE0B
		bcs	loc_FE19
		subb	#$11
		bcc	loc_FE01
		ldd	word_C9
		bne	loc_FDF3
		staa	byte_CB
		ldaa	word_46
		anda	#1
		ldab	Port4		; another IDL+AC test
		eorb	#4
		bitb	#$C
		beq	loc_FDED
		ora	#2

loc_FDED:				; CODE XREF: sub_FD41+A8j
		ldab	word_48
		std	word_C9
		beq	loc_FE11

loc_FDF3:				; CODE XREF: sub_FD41+9Aj sub_FD41+B6j
		inc	byte_CB
		lsrd
		bcc	loc_FDF3
		std	word_C9
		ldaa	#$11
		ldab	byte_CB
		mul

loc_FE00:				; CODE XREF: sub_FD41+8Bj
		clc

loc_FE01:				; CODE XREF: sub_FD41+96j
		stab	byte_CB
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
		staa	byte_C8

loc_FE1B:				; CODE XREF: sub_FD41+69j
		ldab	Port1		; may set bit 3	- MIL
		andb	#$F7 ; '÷'
		tsta
		bpl	loc_FE24	; toggle MIL
		orb	#8

loc_FE24:				; CODE XREF: sub_FD41+DFj
		stab	Port1		; toggle MIL
		ldab	Port4		; p4-5,	test mode, active low
		bitb	#$20 ; ' '
		beq	loc_FE33
		ldaa	byte_4C		; msb inhibits injection
		anda	#$FB ; 'û'

loc_FE30:				; CODE XREF: sub_FD41+100j
		staa	byte_4C		; msb inhibits injection

locret_FE32:				; CODE XREF: sub_FD41+F6j
		rts
; ---------------------------------------------------------------------------

loc_FE33:				; CODE XREF: sub_FD41+E9j
		ldaa	byte_95		; MSB may be IDL/throttle closed condition
		anda	byte_5D		; =adc_tps - byte_5b, tps related
		bpl	locret_FE32
		bitb	#$10
		bne	loc_FE43
		ldaa	byte_4C		; msb inhibits injection
		ora	#4
		bra	loc_FE30
; ---------------------------------------------------------------------------

loc_FE43:				; CODE XREF: sub_FD41+FAj
		ldab	#$C0 ; 'À'
		sei
		stab	Port1		; /#20 low, watchdog low, MIL low, bit5	low, /TVIS high	/VF high

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
		subd	#$AA55		; Checksum is forced to	this value by value at FFEE
		beq	nukeram1	; branch if checksum equals aa55
		ldaa	#%11001000
		bra	loc_FE8B	; /VF high,/TVIS can toggle, VISC low, MIL high, watchdog low, /#20 low
; ---------------------------------------------------------------------------

nukeram1:				; CODE XREF: sub_FD41+118j
		jsr	CPUModeTst
		ldd	#$55AA

nukeram2:				; CODE XREF: sub_FD41+13Ej
		ldx	#$C0 ; 'À'

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
		cpx	#$C0 ; 'À'
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
		staa	Port1		; /VF high,/TVIS can toggle, VISC low, MIL high, watchdog low, /#20 low

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
		db $1F			; SE056	max pulse time as a function of	FULLRPM	data (ff2d entry)
		db $1F
		db $23 ; #
		db $3E ; >
		db $3E ; >
		db $57 ; W
		db $64 ; d
		db $64 ; d
		db $68 ; h
		db $5C ; \
		db $4F ; O
		db   0			; data (ff2b entry)
		db $23 ; #
		db $57 ; W
		db $80 ; €
		db $A8 ; ¨
		db $C2 ; Â
		db $D9 ; Ù
		db $E6 ; æ
		db $F3 ; ó		; data (ff1b entry)
		db $80 ; €
		db $45 ; E
		db $1E
		db   0
		db   0
		db   0
		db $98 ; ˜		; data (ff1b entry)
		db $53 ; S
		db $28 ; (
		db $19
		db  $F
		db   6
		db   6
		db $66 ; f		; data (ff1b entry)
		db $58 ; X
		db $47 ; G
		db $2E ; .
		db $17
		db   8
		db   0
		db $6C ; l		; data (ff1b entry)
		db $57 ; W
		db $45 ; E
		db $33 ; 3
		db $23 ; #
		db $11
		db   0
		db $F3 ; ó		; data (ff1b entry)
		db $80 ; €
		db $1E
		db   5
		db   0
		db   0
		db   0
		db $FF			; data (ff1b entry - tableTHW),	used for fuel pulse scaling, 0 deg F
		db $D8 ; Ø		; 32 deg F
		db $90 ; 		; 64 deg F
		db $68 ; h		; 96 deg F
		db $49 ; I		; 128 deg F
		db $43 ; C		; 160 deg F
		db $40 ; @		; 192 deg F
		db $66 ; f		; used for adjusting ADC_THA to	THAcorr
		db $66 ; f
		db $6A ; j
		db $77 ; w
		db $83 ; ƒ
		db $8C ; Œ
		db $99 ; ™
		db $AA ; ª
		db $B9 ; ¹		; 8
		db $6C ; l		; Decel	fuel cut compare values	for lilRPM data	(ff1b entry)
		db $6C ; l		; 2700 RPM
		db $68 ; h		; 2600 RPM
		db $60 ; `		; 2400 RPM
		db $50 ; P		; 2000 RPM
		db $40 ; @		; 1600 RPM
		db $30 ; 0		; 1200 RPM
		db $FF			; data (ff25 entry), offset by -83d (-8.13V) for ADC_12V
		db $C2 ; Â
		db $4B ; K
		db $18
		db   0
		db   0
		db   0
		db $FF			; data for converting raw ThW measurement from ADC (ff28 entry)
		db $DC ; Ü
		db $B2 ; ²
		db $9B ; ›
		db $8A ; Š
		db $7C ; |
		db $70 ; p
		db $66 ; f
		db $5D ; ]		; 8
		db $53 ; S		; data (ff2d entry)
		db $49 ; I
		db $40 ; @
		db $36 ; 6
		db $2A ; *
		db $1D
		db  $A
		db   0
		db $A5 ; ¥
		db $84 ; „
		db $6A ; j
		db $55 ; U
		db $43 ; C
		db $34 ; 4
		db $27 ; '
		db $1C			; 15
		db $13
		db 56			; data (ff1b entry), additional	timing advance based on	water temp (value/255*90)
		db 56			; 20 deg
		db 55
		db 50
		db 45
		db 28			; 10 deg
		db 28			; 6
		db $1C			; data (ff2a entry)
		db   6			; data (ff25 entry) for	ADC_12V
		db   6
		db $FF
		db $FF
		db $D8 ; Ø
		db $96 ; –
		db $77 ; w
		db $5E ; ^
		db $51 ; Q
; ---------------------------------------------------------------------------

TableThW:				; entry	point, ff1b
		ldaa	ADC_ThW
		clrb
		cmpa	#192		; 192 deg F
		bls	Tab1		; should be blt, avoid interpolation in	the case of adc_thw==192, and out of bounds memory access
		ldaa	6,x		; if ADC_ThW>192 automatically load the	last value of all ff1b entry tables and	return
		rts
; ---------------------------------------------------------------------------

Table12V:				; an entry point, possibly reserved for	ADC_12V, ff25
		clrb

Tab1:					; CODE XREF: ROM:FF20j
		lsrd			; next instruction is like a 2 byte nop
; ---------------------------------------------------------------------------
		db $21 ; !		; brn, skips the clrb if e fall	through	this line
; ---------------------------------------------------------------------------

loc_FF28:				; CODE XREF: ROM:F88AP	ROM:F891P
		clrb			; another entry	point
		lsrd			; next executed	instruction after ff26 entry
		lsrd
		lsrd
		lsrd			; tablethw, table12v: shifted right 5 times, ff28 shifted right	4 times
		pshb			; lower	nibble of what was initially in	a gets pushed, or another entry	point and push b
		tab
		abx
		ldaa	1,x		; for tablethw b=0..6, table12v	b=0..7,	ff28 b=0..15
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
		db $58 ; X		; 3d table, x input is byte_64,	y input	is processed word_7f
		db $63 ; c
		db $71 ; q
		db $7E ; ~
		db $8A ; Š
		db $96 ; –
		db $96 ; –
		db $97 ; —
		db $97 ; —
		db $8F ; 
		db $8E ; Ž
		db $8F ; 
		db $8D ; 
		db $8F ; 
		db $44 ; D		; new table 1
		db $59 ; Y
		db $66 ; f
		db $72 ; r
		db $7E ; ~
		db $7E ; ~
		db $7E ; ~
		db $7F ; 
		db $7F ; 
		db $77 ; w
		db $76 ; v
		db $72 ; r
		db $71 ; q
		db $72 ; r
		db $21 ; !		; new table 2
		db $3E ; >
		db $53 ; S
		db $57 ; W
		db $5C ; \
		db $5D ; ]
		db $5E ; ^
		db $5D ; ]
		db $5D ; ]
		db $61 ; a
		db $62 ; b
		db $62 ; b
		db $63 ; c
		db $64 ; d
		db $13			; possible new table for f880 3
		db $1D
		db $28 ; (
		db $35 ; 5
		db $3B ; ;
		db $43 ; C
		db $46 ; F
		db $47 ; G
		db $47 ; G
		db $56 ; V
		db $5B ; [
		db $5B ; [
		db $5C ; \
		db $5D ; ]
		db  $B			; new table 4
		db $10
		db $13
		db $22 ; "
		db $27 ; '
		db $28 ; (
		db $2B ; +
		db $34 ; 4
		db $36 ; 6
		db $48 ; H
		db $54 ; T
		db $56 ; V
		db $55 ; U
		db $56 ; V
		db  $B			; new table 5
		db $10
		db $13
		db $22 ; "
		db $27 ; '
		db $28 ; (
		db $2B ; +
		db $2E ; .
		db $2E ; .
		db $39 ; 9
		db $49 ; I
		db $4E ; N
		db $55 ; U
		db $56 ; V		; end 3d table
		db   0			; data (ffa4 entry)
		db   0
		db   0
		db  $B
		db   5			; data (ffe1 entry)
		db   5
		db   5
		db   0
		db   7			; data (ffa4 entry)
		db   0
		db $FB ; û
		db   0
		db   0
		db   7
		db $FB ; û
		db $FE ; þ
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
		db $4D ; M		; Data used to initialize RAM (address,	data0,data1,...dataN,$00)
		db   5			; word data for	4d = $0543
		db $43 ; C
		db   0
		db $5B ; [		; new address
		db $26 ; &		; data for word	5b = $2680
		db $80 ; €
		db   0			; stop RLE
		db $54 ; T		; new address
		db $73 ; s		; $54 =	73
		db $B3 ; ³		; $55 =	B3
		db $79 ; y		; 56
		db $C0 ; À		; 57
		db $20			; 58
		db   0			; stop RLE
		db $65 ; e		; new address
		db $12			; 65
		db $FF			; 66
		db $FF			; 67
		db $10			; 68
		db   4			; 69
		db   2			; 6a
		db $8A ; Š		; 6b
		dw 4500			; 6c
		dw 460			; 6e
		db $7F ; 		; 70
		db $FF			; 71
		db   2			; 72
		db   1			; 73
		db   2			; 74
		db   0			; stop RLE
		db $95 ; •		; new address
		db $60 ; `		; 95
		db $34 ; 4		; 96
		db $7A ; z		; 97
		db $7C ; |		; 98
		db $F4 ; ô		; 99
		db $71 ; q		; 9a
		db $71 ; q		; 9b
		db $FF			; 9c
		db $E6 ; æ		; 9d
		db   0			; stop RLE
		db $C6 ; Æ		; new address
		db   4			; c6
		db $FF			; c7
		db $5E ; ^		; c8
		db   0			; termination of init data
		db   0
; ---------------------------------------------------------------------------

loc_FFE1:				; this sub is executed twice from this entry point
		bsr	.+2

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
		dw $C7BE		; illegal opcode trap vector is	used to	force ROM checksum to equal AA55
		dw $F3DB		; serial interrupt rdrf	/ orfe / tore
		dw $F000		; timer	overflow
		dw $F370		; timer	output compare
		dw $F1B1		; timer	input capture from mixed signal	SE056
		dw $F000		; /irq or /S3
		dw $F000		; swi
		dw $F000		; /NMI
		dw $F000		; reset	entry vector
; end of 'ROM'


		end
