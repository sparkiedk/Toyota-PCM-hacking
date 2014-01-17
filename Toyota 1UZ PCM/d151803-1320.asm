

; ; Processor:	      D8X
; ; Target assembler: Table Driven Assembler (TASM) by Speech Technology Inc.

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure data
		;.segment FSR
DDRA:		.block 1		; DATA XREF: __RESET+7r __RESET+ABr ...
					; Port A i/o config
DDRB:		.block 1		; DATA XREF: __RESET+Fr __RESET+AEr ...
					; Port B i/o config
WDC:		.block 1		; watch	dog timer
TIMER3:		.block 1		; DATA XREF: sub_FA33:loc_FA42r
					; sub_FA33+12r	...
					; Timer	LSB (bit0~bit2)
TIMER:		.block 1		; DATA XREF: __RESET+85r IVc+Cr ...
					; Timer	MSB (bit11~bit18)
TIMERL:		.block 1		; Timer	LSB (bit3~bit10)
SIDR_SODR:	.block 1		; DATA XREF: __RESET+26r ROM:D85Fr ...
					; Serial Input/Output Data Register
SMRC_SIR:	.block 1		; DATA XREF: __RESET+21r __RESET+9Ar
					; Serial Master	Register Control
CPR0:		.block 1		; DATA XREF: __RESET+8Aw IV9+7r ...
					; Timer	comparison #0 MSB
CPR0L:		.block 1		; Timer	comparison #0 LSB
CPR1:		.block 1		; DATA XREF: __RESET+8Fw IV7+7r ...
					; Timer	comparison #1 MSB
CPR1L:		.block 1		; Timer	comparison #1 LSB
CPR2:		.block 1		; Timer	comparison #2 MSB
CPR2L:		.block 1		; Timer	comparison #2 LSB
CPR3:		.block 1		; Timer	comparison #3 MSB
CPR3L:		.block 1		; Timer	comparison #3 LSB
ASR0P:		.block 1		; DATA XREF: __RESET+14r __RESET+B1r ...
					; ASR0 pos edge	counter	value MSB
ASR0PL:		.block 1		; DATA XREF: __RESET+1Er __RESET+B4r ...
					; ASR0 pos edge	counter	value LSB
ASR0N:		.block 1		; DATA XREF: __RESET+30r sub_F584+55w	...
					; ASR0 neg edge	counter	value MSB
ASR0NL:		.block 1		; DATA XREF: __RESET+2Dr __RESET+A3r
					; ASR0 neg edge	counter	value LSB
ASR1P:		.block 1		; DATA XREF: __RESET+40r __RESET+A0r
					; ASR1 pos edge	counter	value MSB
ASR1PL:		.block 1		; ASR1 pos edge	counter	value LSB
ASR1N:		.block 1		; DATA XREF: __RESET+19w sub_F584+6Aw	...
					; ASR1 neg edge	counter	value MSB
ASR1NL:		.block 1		; ASR1 neg edge	counter	value LSB
ASR2:		.block 1		; DATA XREF: __RESET+36w sub_FA33+42w	...
					; ASR2 edge counter value MSB
ASR2L:		.block 1		; ASR2 edge counter value LSB
ASR3:		.block 1		; DATA XREF: __RESET+3Bw sub_FA33+29w
					; ASR3 edge counter value MSB
ASR3L:		.block 1		; ASR3 edge counter value LSB
unk_1C:		.block 1		; DATA XREF: IV0+2r
unk_1D:		.block 1		; DATA XREF: __RESET+2Ar __RESET+A6r
		.block 1
OMODE:		.block 1		; DATA XREF: __RESETr
					; Mode control Register
PORTA:		.block 1		; DATA XREF: __RESET+4r ROM:loc_D88Dr	...
					; Port A Data Register
PORTAL:		.block 1		; DATA XREF: __RESET+Aw
					; Port A Latch
PORTB:		.block 1		; DATA XREF: __RESET+Cr ROM:D888r ...
					; Port B Data Register
PBCS:		.block 1		; DATA XREF: __RESET+12w ROM:loc_D89Cr ...
					; Port B Control Register
TAIT:		.block 1		; DATA XREF: __RESET+3Dr __RESET+9Dr
					; Timer	ASR Control
LDOUT:		.block 1		; Latch	DOUT
DOUT:		.block 1		; DATA XREF: __RESET+43r ROM:D8A6r ...
					; DOUT Data Register
DOM:		.block 1		; DATA XREF: __RESET+46w
					; DOUT Control Register
PORTC:		.block 1		; DATA XREF: __RESET+22Ar
					; __RESET+1C42r ...
					; Port C Data Register
PORTD_ASRIN:	.block 1		; DATA XREF: __RESET+1Br __RESET+C44r	...
					; Port D Data Register / ASR Input Data
RAMST:		.block 1		; DATA XREF: __RESET+CCr
					; __RESET:loc_D801r ...
					; Built-in RAM status
SSD:		.block 1		; DATA XREF: __RESET+24r ROM:loc_D85Dr ...
					; Serial Status	Data Register
IRQL:		.block 1		; DATA XREF: __RESET+4Aw __RESET+83w ...
					; Interrupt Request Flag MSB
IRQLL:		.block 1		; Interrupt Request Flag LSB
IMASK:		.block 1		; DATA XREF: __RESET+4Cw __RESET+97w ...
; end of 'FSR'                          ; Interrupt Request Mask MSB

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure data
		;.segment RAM
		.org 40h
unk_40:		.block 1		; DATA XREF: sub_D856r
					; sub_E0C9:loc_E0DDr ...
unk_41:		.block 1		; DATA XREF: __RESET+47Er __RESET+586r ...
unk_42:		.block 1		; DATA XREF: __RESET:loc_DCF1r
					; __RESET+609r	...
unk_43:		.block 1		; DATA XREF: sub_E0C9r
					; sub_E334:loc_E33Br ...
unk_44:		.block 1		; DATA XREF: __RESET+A67r __RESET+A6Ar ...
unk_45:		.block 1		; DATA XREF: ROM:C193r	ROM:loc_C1CEr ...
unk_46:		.block 1		; DATA XREF: __RESET+446r __RESET+453r ...
unk_47:		.block 1		; DATA XREF: sub_DBD5+3r
					; sub_DBD5:loc_DBDFr ...
unk_48:		.block 1		; DATA XREF: __RESET:loc_DB62r
					; __RESET+43Br	...
unk_49:		.block 1		; DATA XREF: __RESET+1671r
					; __RESET+1674r ...
unk_4A:		.block 1		; DATA XREF: __RESET+25Cr __RESET+3DEr ...
unk_4B:		.block 1		; DATA XREF: sub_D830+2w __RESET+1CDCr ...
unk_4C:		.block 1		; DATA XREF: sub_D830+4w
					; __RESET:loc_F402r ...
unk_4D:		.block 1		; DATA XREF: __RESET:loc_DC28r
					; __RESET+506r	...
unk_4E:		.block 1		; DATA XREF: ROM:C190r	ROM:D8ADr ...
unk_4F:		.block 1		; DATA XREF: __RESET+20Dr
					; __RESET:loc_D951r ...
		.block 1
		.block 1
unk_52:		.block 1		; DATA XREF: sub_D589w	sub_D589+9r ...
unk_53:		.block 1		; DATA XREF: sub_DAEA+Dr
					; sub_DAEA:loc_DAFBr ...
unk_54:		.block 1		; DATA XREF: sub_D667+6w sub_D68B+Br ...
unk_55:		.block 1		; DATA XREF: sub_D667w	sub_D667+8r ...
unk_56:		.block 1		; DATA XREF: sub_E3A0+2Cw sub_E3CF+17r ...
unk_57:		.block 1		; DATA XREF: sub_E3A0+11w sub_E3CF+9r	...
unk_58:		.block 1		; DATA XREF: sub_E3A0+15w sub_E3CF+Dr	...
unk_59:		.block 1		; DATA XREF: sub_E573:loc_E5AAr
					; sub_E573:loc_E5B0r ...
unk_5A:		.block 1		; DATA XREF: __RESET+109Cw
					; __RESET+10A0r ...
unk_5B:		.block 1		; DATA XREF: __RESET+1142w
					; __RESET:loc_EAA2r ...
		.block 1
unk_5D:		.block 1		; DATA XREF: __RESET+200w __RESET+4EDr ...
unk_5E:		.block 1		; DATA XREF: __RESET:loc_D90Br
					; __RESET:loc_D91Bw ...
unk_5F:		.block 1		; DATA XREF: __RESET:loc_DB44w
					; __RESET+5DAr	...
unk_60:		.block 1		; DATA XREF: __RESET:loc_D946r
					; __RESET+395w	...
unk_61:		.block 1		; DATA XREF: ROM:loc_C16Ar
					; __RESET+218r	...
unk_62:		.block 1		; DATA XREF: ROM:loc_C1C5r
					; sub_C200+31r	...
unk_63:		.block 1		; DATA XREF: __RESET+989r __RESET+98Ew ...
unk_64:		.block 1		; DATA XREF: __RESET+54Cr __RESET+5B4r ...
unk_65:		.block 1		; DATA XREF: __RESET+829w
					; __RESET:loc_DF86r ...
unk_66:		.block 1		; DATA XREF: __RESET+82Dw __RESET+83Br ...
unk_67:		.block 1		; DATA XREF: __RESET:loc_DCBCr
					; __RESET:loc_DF6Dw ...
unk_68:		.block 1		; DATA XREF: __RESET:loc_DDF9r
					; __RESET:loc_DE07r ...
		.block 1
unk_6A:		.block 1		; DATA XREF: __RESET:loc_E1AAr
					; sub_E2A8:loc_E2F0w ...
unk_6B:		.block 1		; DATA XREF: __RESET+A5Cw
unk_6C:		.block 1		; DATA XREF: __RESET:loc_E8B7r
					; __RESET+1849w
unk_6D:		.block 1		; DATA XREF: __RESET:loc_EF9Cw
					; __RESET:loc_F39Cr ...
unk_6E:		.block 1		; DATA XREF: sub_D617r	__RESET+213r ...
		.block 1
unk_70:		.block 1		; DATA XREF: __RESET+221r __RESET+2B3w ...
		.block 1
unk_72:		.block 1		; DATA XREF: sub_E4B8+3Er sub_E4B8+6Fr ...
unk_73:		.block 1		; DATA XREF: sub_E4B8:loc_E4D0r
					; sub_E4B8:loc_E4DAr ...
unk_74:		.block 1		; DATA XREF: sub_E4B8+4w sub_E4B8+8r ...
unk_75:		.block 1		; DATA XREF: sub_E4B8+2r sub_E4B8+6w ...
unk_76:		.block 1		; DATA XREF: __RESET+10B8r
					; __RESET+10C4w
		.block 1
unk_78:		.block 1		; DATA XREF: sub_E573+130w
					; sub_E573+155w ...
unk_79:		.block 1		; DATA XREF: sub_E573+1C7w
					; __RESET+105Fr ...
unk_7A:		.block 1		; DATA XREF: sub_E573+1C9w
					; __RESET+10DCr ...
unk_7B:		.block 1		; DATA XREF: __RESET+1D47r
					; __RESET:loc_F484w ...
unk_7C:		.block 1		; DATA XREF: __RESET+1D42r
					; __RESET+1D7Ew ...
unk_7D:		.block 1		; DATA XREF: __RESET+65w
					; __RESET:loc_F467r ...
unk_7E:		.block 1		; DATA XREF: __RESET:loc_F1EBw	IVc+11r
unk_7F:		.block 1		; DATA XREF: __RESET+208r
					; __RESET:loc_EF8Br ...
unk_80:		.block 1		; DATA XREF: sub_D830+Ew
		.block 1
unk_82:		.block 1		; DATA XREF: __RESET+DBr sub_D830+15w
		.block 1
		.block 1
		.block 1
unk_86:		.block 1		; DATA XREF: __RESET+1C24r
					; __RESET+1C2Aw ...
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
unk_9E:		.block 1		; DATA XREF: sub_D830+10w
		.block 1
unk_A0:		.block 1		; DATA XREF: sub_FA27r
					; sub_FA33:loc_FA61r ...
unk_A1:		.block 1		; DATA XREF: sub_FA33r
					; sub_FA33:loc_FA4Fw
unk_A2:		.block 1		; DATA XREF: __RESET+28Dr IVd+2r ...
unk_A3:		.block 1		; DATA XREF: __RESET+40Er ROM:F962w
unk_A4:		.block 1		; DATA XREF: ROM:F87Br	ROM:loc_F94Ar ...
unk_A5:		.block 1		; DATA XREF: __RESET+7ADr __RESET+948w ...
unk_A6:		.block 1		; DATA XREF: __RESET+449r __RESET+456r ...
unk_A7:		.block 1		; DATA XREF: __RESET+9E6w __RESET+A0Ar
unk_A8:		.block 1		; DATA XREF: __RESET+51Ar __RESET+521w
unk_A9:		.block 1		; DATA XREF: sub_DBD5:loc_DBE3r
					; sub_DBD5+10w	...
unk_AA:		.block 1		; DATA XREF: __RESET:loc_DCCEr
					; __RESET:loc_E112r
unk_AB:		.block 1		; DATA XREF: __RESET+1598w
					; __RESET+16D8r
unk_AC:		.block 1		; DATA XREF: __RESET+158Ar
					; __RESET+15EFw ...
unk_AD:		.block 1		; DATA XREF: __RESET+1295r
					; __RESET+12AEw ...
unk_AE:		.block 1		; DATA XREF: __RESET+130Aw
					; __RESET+1321r
unk_AF:		.block 1		; DATA XREF: __RESET+9E1w sub_E2A8+68r ...
unk_B0:		.block 1		; DATA XREF: __RESET+630w
					; __RESET:loc_E897r
unk_B1:		.block 1		; DATA XREF: sub_E2A8+36w
					; sub_E2A8:loc_E2E0r
unk_B2:		.block 1		; DATA XREF: sub_E2A8+6Fw
					; sub_E2A8:loc_E319r ...
unk_B3:		.block 1		; DATA XREF: __RESET+1A86w
					; ROM:loc_F3B2r ...
unk_B4:		.block 1		; DATA XREF: __RESET+1A8Bw
					; __RESET+1CE6r ...
unk_B5:		.block 1		; DATA XREF: __RESET:loc_D7FFw
					; ROM:F3B7r ...
unk_B6:		.block 1		; DATA XREF: __RESET+998w sub_F1F1r
unk_B7:		.block 1		; DATA XREF: ROM:F385r
unk_B8:		.block 1		; DATA XREF: ROM:F3C4r
unk_B9:		.block 1		; DATA XREF: __RESET:loc_DF8Cw
					; __RESET+877w	...
unk_BA:		.block 1		; DATA XREF: __RESET+58Ar __RESET+58Fr ...
unk_BB:		.block 1		; DATA XREF: sub_DFA9:loc_DFDAw
					; __RESET+8C3r	...
unk_BC:		.block 1		; DATA XREF: __RESET+83Dr __RESET+845r ...
unk_BD:		.block 1		; DATA XREF: __RESET+59Fw sub_DFA9+2Br
unk_BE:		.block 1		; DATA XREF: __RESET+85Ar __RESET+A93w
unk_BF:		.block 1		; DATA XREF: __RESET+565r __RESET+8F1w
unk_C0:		.block 1		; DATA XREF: __RESET+57Br __RESET+901w
unk_C1:		.block 1		; DATA XREF: __RESET+957w sub_F292+11r
unk_C2:		.block 1		; DATA XREF: __RESET:loc_DAA0r
					; __RESET+414r	...
unk_C3:		.block 1		; DATA XREF: __RESET+388r ROM:F885r ...
unk_C4:		.block 1		; DATA XREF: ROM:C196w	ROM:loc_C19Ar ...
unk_C5:		.block 1		; DATA XREF: sub_C200+5r sub_C200+19w	...
unk_C6:		.block 1		; DATA XREF: sub_C200+3w sub_C200+2Cr
unk_C7:		.block 1		; DATA XREF: sub_E573r	sub_E573+5w ...
unk_C8:		.block 1		; DATA XREF: __RESET+5D5r __RESET+5E5w ...
unk_C9:		.block 1		; DATA XREF: __RESET:loc_E8A2w
					; __RESET:loc_E8B0r ...
unk_CA:		.block 1		; DATA XREF: __RESET+13F7w
					; __RESET+1410r ...
unk_CB:		.block 1		; DATA XREF: __RESET+1406w
					; __RESET:loc_EB52w ...
unk_CC:		.block 1		; DATA XREF: __RESET+1426w
					; __RESET+147Ar
unk_CD:		.block 1		; DATA XREF: __RESET+1C0Fr
					; __RESET:loc_F35Cw
unk_CE:		.block 1		; DATA XREF: __RESET+1BFDr
					; __RESET+1C30w
unk_CF:		.block 1		; DATA XREF: __RESET+1BFBw
					; __RESET:loc_F342r
unk_D0:		.block 1		; DATA XREF: __RESET+1C45r
					; __RESET:loc_F379w
unk_D1:		.block 1		; DATA XREF: __RESET+1C7Ar
					; __RESET:loc_F3AEw
unk_D2:		.block 1		; DATA XREF: __RESET+1CBEr
					; __RESET:loc_F3F9w
unk_D3:		.block 1		; DATA XREF: sub_F584+12r sub_F584+20w
unk_D4:		.block 1		; DATA XREF: __RESET+1A97w
					; ROM:loc_F92Cr ...
unk_D5:		.block 1		; DATA XREF: sub_E2A8+17w sub_E2A8+1Fr ...
unk_D6:		.block 1		; DATA XREF: __RESET+11DCw
					; __RESET+11EAr ...
unk_D7:		.block 1		; DATA XREF: __RESET:loc_E8E7w
					; __RESET+135Cr ...
unk_D8:		.block 1		; DATA XREF: ROM:F94Fr	ROM:loc_F959w ...
unk_D9:		.block 1		; DATA XREF: IV5:loc_F981r IV5+23w ...
unk_DA:		.block 1		; DATA XREF: IV5+47r
unk_DB:		.block 1		; DATA XREF: ROM:loc_F91Cw IV5+A2r ...
unk_DC:		.block 1		; DATA XREF: ROM:F89Dr	ROM:F8A2w ...
unk_DD:		.block 1		; DATA XREF: ROM:F8C6r
unk_DE:		.block 1		; DATA XREF: ROM:loc_F890r ROM:F894w ...
unk_DF:		.block 1		; DATA XREF: __RESET+29Bw
					; __RESET:loc_D9C9r ...
unk_E0:		.block 1		; DATA XREF: IVd+7r IVd+Bw ...
unk_E1:		.block 1		; DATA XREF: __RESET+C0r __RESET+C6w ...
unk_E2:		.block 1		; DATA XREF: __RESET+93Ew __RESET+A2Br ...
unk_E3:		.block 1		; DATA XREF: __RESET+13C0r
					; __RESET+13EDr ...
unk_E4:		.block 1		; DATA XREF: __RESET+11DEw
					; __RESET:loc_E920r ...
unk_E5:		.block 1		; DATA XREF: __RESET+5DFr sub_E2A8+3r	...
unk_E6:		.block 1		; DATA XREF: __RESET+144Ar
					; __RESET:loc_EC8Er ...
unk_E7:		.block 1		; DATA XREF: __RESET+158Dw
					; __RESET+170Br ...
unk_E8:		.block 1		; DATA XREF: __RESET+1651w
					; __RESET+1730r ...
unk_E9:		.block 1		; DATA XREF: __RESET+113Er
					; __RESET+1140w ...
unk_EA:		.block 1		; DATA XREF: __RESET+809r __RESET+80Cw ...
unk_EB:		.block 1		; DATA XREF: sub_DBD5+1Ar sub_DBD5+1Fw ...
unk_EC:		.block 1		; DATA XREF: __RESET+468r sub_DBD5+27w ...
		.block 1
		.block 1
		.block 1
unk_F0:		.block 1		; DATA XREF: ROM:C103r	ROM:loc_C178r ...
		.block 1
unk_F2:		.block 1		; DATA XREF: ROM:C0FEr	ROM:C10Er ...
		.block 1
		.block 1
unk_F5:		.block 1		; DATA XREF: __RESET+1D7r __RESET+1ECr
unk_F6:		.block 1		; DATA XREF: ROM:loc_C15Cr
					; ROM:loc_C163r ...
unk_F7:		.block 1		; DATA XREF: ROM:C119r	ROM:C1A4r ...
unk_F8:		.block 1		; DATA XREF: ROM:D8B1r
unk_F9:		.block 1		; DATA XREF: sub_E436+6r __RESET+16E5r
unk_FA:		.block 1		; DATA XREF: ROM:loc_C14Er
					; ROM:loc_C155r
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
unk_100:	.block 1		; DATA XREF: __RESET:loc_DB1Aw
unk_101:	.block 1		; DATA XREF: __RESET+1138w
unk_102:	.block 1		; DATA XREF: __RESET:loc_E85Dw
unk_103:	.block 1		; DATA XREF: ROM:C11Br	ROM:loc_C188w ...
unk_104:	.block 1		; DATA XREF: ROM:C108w
unk_105:	.block 1		; DATA XREF: ROM:C116w
unk_106:	.block 1		; DATA XREF: ROM:loc_C1FCw
		.block 1
unk_108:	.block 1		; DATA XREF: ROM:C1B8r
					; sub_C200:loc_C20Cr ...
unk_109:	.block 1		; DATA XREF: __RESET+1E46r
					; __RESET+1E51w ...
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
unk_110:	.block 1		; DATA XREF: sub_DAC6+5w IV5+58r
		.block 1
unk_112:	.block 1		; DATA XREF: sub_DAC6+8w IV5+5Dr
		.block 1
unk_114:	.block 1		; DATA XREF: sub_DAC6+Bw IV5+62r
		.block 1
unk_116:	.block 1		; DATA XREF: __RESET+26Fr __RESET+37Br ...
		.block 1
unk_118:	.block 1		; DATA XREF: sub_DAD8+5w ROM:F901r
		.block 1
unk_11A:	.block 1		; DATA XREF: sub_DAD8+8w ROM:F906r
		.block 1
unk_11C:	.block 1		; DATA XREF: sub_DAD8+Bw ROM:F90Br
		.block 1
unk_11E:	.block 1		; DATA XREF: __RESET+262r __RESET+38Dr ...
		.block 1
unk_120:	.block 1		; DATA XREF: ROM:F873r	ROM:F968w
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
unk_12A:	.block 1		; DATA XREF: IVd+2Ar IVd+75w
		.block 1
unk_12C:	.block 1		; DATA XREF: sub_F1F1:loc_F226r
unk_12D:	.block 1		; DATA XREF: __RESET+951r __RESET+954w ...
		.block 1
unk_12F:	.block 1		; DATA XREF: __RESET+95Aw
					; __RESET:loc_E087r ...
		.block 1
		.block 1
		.block 1
		.block 1
unk_134:	.block 1		; DATA XREF: __RESET+991r
					; __RESET:loc_E0C4w
unk_135:	.block 1		; DATA XREF: ROM:F923r	ROM:F929w ...
		.block 1
unk_137:	.block 1		; DATA XREF: ROM:F920w	IV5+76r ...
		.block 1
unk_139:	.block 1		; DATA XREF: IV9+9w IV9+47r
		.block 1
unk_13B:	.block 1		; DATA XREF: IV7+9w IV7+3Fr
		.block 1
unk_13D:	.block 1		; DATA XREF: __RESET+144Fw
					; __RESET+1583w ...
unk_13E:	.block 1		; DATA XREF: __RESET:loc_EC9Er
					; __RESET+1587w ...
unk_13F:	.block 1		; DATA XREF: __RESET+1681w
					; sub_EFC2+19r	...
		.block 1
unk_141:	.block 1		; DATA XREF: __RESET+1755w
					; __RESET+176Ar
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
unk_149:	.block 1		; DATA XREF: __RESET+1175w
		.block 1
		.block 1
unk_14C:	.block 1		; DATA XREF: __RESET+168Cw
					; sub_EFC2+7Br
		.block 1
unk_14E:	.block 1		; DATA XREF: __RESET+168Fw
					; sub_EFC2+72r
		.block 1
unk_150:	.block 1		; DATA XREF: __RESET+13FFw
					; __RESET+1461r
unk_151:	.block 1		; DATA XREF: __RESET+14F4w
					; __RESET+14F9r
unk_152:	.block 1		; DATA XREF: sub_D61Fr	sub_E8CC+Cr ...
unk_153:	.block 1		; DATA XREF: __RESET+128Fw
					; __RESET+12CAr
		.block 1
		.block 1
		.block 1
unk_157:	.block 1		; DATA XREF: __RESET+111Aw
		.block 1
		.block 1
unk_15A:	.block 1		; DATA XREF: __RESET+111Dw
		.block 1
		.block 1
unk_15D:	.block 1		; DATA XREF: __RESET+1120w
unk_15E:	.block 1		; DATA XREF: sub_EFC2:loc_F006w
		.block 1
unk_160:	.block 1		; DATA XREF: __RESET:loc_E1CBw
					; __RESET+1C3Br ...
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
		.block 1
; end of 'RAM'

; File Name   :	C:\Documents and Settings\Sparkie\Desktop\Toyota PCM hacking\Toyota 1UZ PCM\cap d151803-1320.bin
; Format      :	Binary file
; Base Address:	0000h Range: C000h - 10000h Loaded length: 4000h
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
		;.segment ROM
		.org 0C000h
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  07h
		.db  00h
		.db  08h
		.db  02h
		.db  00h
		.db  0Ah
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  04h
		.db  06h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  03h
		.db  0Ch
		.db  0Eh
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  05h
		.db  0Ch
		.db  11h
		.db  14h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  05h
		.db  0Ah
		.db  11h
		.db  18h
		.db  18h
		.db  00h
		.db  00h
		.db  00h
		.db  04h
		.db  06h
		.db  0Fh
		.db  14h
		.db  1Ah
		.db  1Dh
		.db  00h
		.db  00h
		.db  01h
		.db  08h
		.db  0Dh
		.db  13h
		.db  1Ah
		.db  1Fh
		.db  23h ; #
		.db  00h
		.db  00h
		.db  06h
		.db  0Ch
		.db  0Fh
		.db  17h
		.db  1Fh
		.db  29h ; )
		.db  29h ; )
		.db  00h
		.db  04h
		.db  09h
		.db  11h
		.db  13h
		.db  1Ah
		.db  24h ; $
		.db  2Dh ; -
		.db  2Dh ; -
		.db  00h
		.db  0Ah
		.db  14h
		.db  16h
		.db  1Bh
		.db  20h
		.db  28h ; (
		.db  2Dh ; -
		.db  2Dh ; -
		.db  04h
		.db  00h
		.db  0Ch
		.db  02h
		.db  00h
		.db  08h
		.db  00h
		.db  00h
		.db  00h
		.db  10h
		.db  18h
		.db  22h ; "
		.db  26h ; &
		.db  26h ; &
		.db  26h ; &
		.db  2Eh ; .
		.db  38h ; 8
		.db  38h ; 8
		.db  38h ; 8
		.db  00h
		.db  00h
		.db  00h
		.db  10h
		.db  18h
		.db  22h ; "
		.db  26h ; &
		.db  26h ; &
		.db  26h ; &
		.db  2Eh ; .
		.db  38h ; 8
		.db  38h ; 8
		.db  38h ; 8
		.db  08h
		.db  10h
		.db  1Ah
		.db  26h ; &
		.db  32h ; 2
		.db  40h ; @
		.db  44h ; D
		.db  42h ; B
		.db  36h ; 6
		.db  2Eh ; .
		.db  38h ; 8
		.db  38h ; 8
		.db  38h ; 8
		.db  12h
		.db  24h ; $
		.db  34h ; 4
		.db  42h ; B
		.db  42h ; B
		.db  42h ; B
		.db  44h ; D
		.db  42h ; B
		.db  44h ; D
		.db  44h ; D
		.db  46h ; F
		.db  46h ; F
		.db  46h ; F
		.db  1Eh
		.db  3Ch ; <
		.db  42h ; B
		.db  42h ; B
		.db  42h ; B
		.db  42h ; B
		.db  42h ; B
		.db  42h ; B
		.db  46h ; F
		.db  42h ; B
		.db  40h ; @
		.db  42h ; B
		.db  44h ; D
		.db  14h
		.db  2Ah ; *
		.db  2Eh ; .
		.db  32h ; 2
		.db  3Ah ; :
		.db  3Ah ; :
		.db  38h ; 8
		.db  3Eh ; >
		.db  42h ; B
		.db  44h ; D
		.db  3Eh ; >
		.db  3Eh ; >
		.db  44h ; D
		.db  0Ah
		.db  14h
		.db  18h
		.db  18h
		.db  22h ; "
		.db  1Eh
		.db  1Ch
		.db  26h ; &
		.db  2Eh ; .
		.db  32h ; 2
		.db  38h ; 8
		.db  38h ; 8
		.db  38h ; 8
		.db  00h
		.db  00h
		.db  00h
		.db  08h
		.db  16h
		.db  12h
		.db  08h
		.db  0Eh
		.db  10h
		.db  16h
		.db  1Ch
		.db  1Ch
		.db  1Ch
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  93h ; “
		.db 0F2h ; ò
		.db 0A9h ; ©
		.db  25h ; %
		.db 0D2h ; Ò
		.db  25h ; %
		.db 0D2h ; Ò
		.db  00h
		.db 0FFh
		.db  60h ; `
		.db 0BCh ; ¼
		.db  80h ; €
		.db  49h ; I
		.db  90h ; 
		.db  22h ; "
		.db  90h ; 
		.db  00h
		.db 0FFh
		.db  00h
		.db  00h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C0FB:				; CODE XREF: __RESET:loc_D84Ap
		ld	y, #0C003h
		ld	d, unk_F2
		jsr	sub_D667
		ld	d, unk_F0
		jsr	sub_D68B
		st	a, unk_104
		ld	y, #0C06Ch
		ld	d, unk_F2
		jsr	sub_D667
		jsr	sub_D676
		st	a, unk_105
		ld	a, unk_F7
		ld	b, unk_103
		cmp	a, #0CEh
		bcc	loc_C124
		and	b, #0BFh

loc_C124:				; CODE XREF: ROM:C120j
		cmp	a, #0D5h
		ble	loc_C12A
		or	b, #40h

loc_C12A:				; CODE XREF: ROM:C126j
		cmp	a, #0E4h
		bcc	loc_C130
		and	b, #0EFh

loc_C130:				; CODE XREF: ROM:C12Cj
		cmp	a, #0E7h
		ble	loc_C136
		or	b, #10h

loc_C136:				; CODE XREF: ROM:C132j
		cmp	a, #0C8h
		bcc	loc_C13C
		and	b, #0F7h

loc_C13C:				; CODE XREF: ROM:C138j
		cmp	a, #0CBh
		ble	loc_C142
		or	b, #08h

loc_C142:				; CODE XREF: ROM:C13Ej
		cmp	a, #0C1h
		bcc	loc_C148
		and	b, #0FBh

loc_C148:				; CODE XREF: ROM:C144j
		cmp	a, #0C4h
		ble	loc_C14E
		or	b, #04h

loc_C14E:				; CODE XREF: ROM:C14Aj
		cmp	#0D2h, unk_FA
		bcc	loc_C155
		and	b, #0DFh

loc_C155:				; CODE XREF: ROM:C151j
		cmp	#0D7h, unk_FA
		ble	loc_C15C
		or	b, #20h

loc_C15C:				; CODE XREF: ROM:C158j
		cmp	#86h, unk_F6
		bcc	loc_C163
		and	b, #7Fh

loc_C163:				; CODE XREF: ROM:C15Fj
		cmp	#8Dh, unk_F6
		ble	loc_C16A
		or	b, #80h

loc_C16A:				; CODE XREF: ROM:C166j
		ld	a, unk_61
		cmp	a, #0Dh
		bcc	loc_C172
		and	b, #0FDh

loc_C172:				; CODE XREF: ROM:C16Ej
		cmp	a, #0Fh
		bcs	loc_C178
		or	b, #02h

loc_C178:				; CODE XREF: ROM:C174j
		ld	y, unk_F0
		cmp	y, #0D00h
		bcc	loc_C181
		and	b, #0FEh

loc_C181:				; CODE XREF: ROM:C17Dj
		cmp	y, #1000h
		ble	loc_C188
		or	b, #01h

loc_C188:				; CODE XREF: ROM:C184j
		st	b, unk_103
		cmp	#08h, unk_F0
		bcc	loc_C1AF
		tbbs	bit3, unk_4E, loc_C19A
		tbbs	bit1, unk_45, loc_C1A1
		clr	unk_C4
		bra	loc_C1B2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C19A:				; CODE XREF: ROM:C190j
		cmp	#0Ch, unk_C4
		ble	loc_C1B2
		setb	bit1, unk_45

loc_C1A1:				; CODE XREF: ROM:C193j
		ld	y, #0C0E7h
		ld	b, unk_F7
		jsr	sub_D62F
		add	a, #0Ch
		cmp	a, unk_C4
		bcc	loc_C1B4+1

loc_C1AF:				; CODE XREF: ROM:C18Ej
		ld	#0FFh, unk_C4

loc_C1B2:				; CODE XREF: ROM:C198j	ROM:C19Dj
		clrb	bit2, DOUT

loc_C1B4:				; CODE XREF: ROM:C1ADj
		cmp	x, #7746h
		clr	b
		ld	a, unk_108
		cmpb	a, #04h
		beq	loc_C1C5
		clrb	bit7, unk_45

loc_C1C1:				; CODE XREF: ROM:C1CCj
		clrb	bit6, unk_45
		bra	loc_C1FC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C1C5:				; CODE XREF: ROM:C1BDj
		cmp	#37h, unk_62
		bcc	loc_C1CE
		setb	bit7, unk_45
		bra	loc_C1C1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C1CE:				; CODE XREF: ROM:C1C8j
		tbbs	bit6, unk_45, loc_C1E9
		tbbs	bit7, unk_45, locret_C1FF
		setb	bit7, unk_45
		cmp	#38h, unk_F0
		bcc	locret_C1FF
		cmp	#20h, unk_F0
		bcs	locret_C1FF
		push	a
		ld	a, unk_103
		cmpb	a, #40h
		pull	a
		beq	locret_C1FF

loc_C1E9:				; CODE XREF: ROM:loc_C1CEj
		ld	y, #0C0F0h
		ld	d, unk_F2
		shl	d
		bcs	loc_C1F4
		shl	d
		bcc	loc_C1F6

loc_C1F4:				; CODE XREF: ROM:C1EFj
		ld	a, #0FFh

loc_C1F6:				; CODE XREF: ROM:C1F2j
		jsr	sub_D6F5
		mov	a, b
		setb	bit6, unk_45

loc_C1FC:				; CODE XREF: ROM:C1C3j
		st	b, unk_106

locret_C1FF:				; CODE XREF: ROM:C1D1j	ROM:C1D9j ...
		ret

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_C200:				; CODE XREF: sub_F695+89p
		tbbc	bit5, unk_45, loc_C20C
		clr	unk_C6
		cmp	#3Dh, unk_C5
		bcs	loc_C20C
		clrb	bit5, unk_45

loc_C20C:				; CODE XREF: sub_C200j	sub_C200+8j
		ld	a, unk_108
		cmpb	a, #08h
		beq	loc_C21D
		tbs	bit3, unk_45
		bne	loc_C241
		clrb	bit5, unk_45
		clr	unk_C5
		bra	locret_C248
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C21D:				; CODE XREF: sub_C200+11j
		tbbc	bit3, unk_45, locret_C248
		clrb	bit3, unk_45
		tbbs	bit5, unk_45, loc_C23D
		ld	a, unk_103
		cmp	a, #0C0h
		bcs	loc_C23D
		cmp	#0F4h, unk_C6
		bcs	loc_C23D
		cmp	#82h, unk_62
		bcc	loc_C23D
		tbbs	bit4, unk_45, locret_C248
		clr	unk_C5
		setb	bit5, unk_45

loc_C23D:				; CODE XREF: sub_C200+22j sub_C200+2Aj ...
		setb	bit4, unk_45
		bra	locret_C248
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C241:				; CODE XREF: sub_C200+15j
		cmp	#18h, unk_C5
		bcs	locret_C248
		clrb	bit4, unk_45

locret_C248:				; CODE XREF: sub_C200+1Bj
					; sub_C200:loc_C21Dj ...
		ret
; End of function sub_C200

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  00h
		.db  01h
		.db  02h
		.db  03h
		.db  00h
		.db  02h
		.db  02h
		.db  02h
		.db  00h
		.db  01h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db 0EDh ; í
		.db  00h
		.db 0EDh ; í
		.db  00h
		.db 0EDh ; í
		.db  00h
		.db 0EDh ; í
		.db  00h
		.db 0EDh ; í
		.db 0FFh
		.db 0EDh ; í
		.db 0FFh
		.db 0EDh ; í
		.db 0FFh
		.db 0EDh ; í
		.db 0FFh
		.db 0E7h ; ç
		.db 0FFh
		.db 0E7h ; ç
		.db 0FFh
		.db 0EDh ; í
		.db 0FFh
		.db 0EDh ; í
		.db 0FFh
		.db 0FFh
		.db 0CEh ; Î
		.db 0EDh ; í
		.db 0EDh ; í
		.db  18h
		.db  00h
		.db  20h
		.db  00h
		.db  28h ; (
		.db  00h
		.db  30h ; 0
		.db  00h
		.db 0FFh
		.db  20h
		.db  00h
		.db  30h ; 0
		.db  00h
		.db  40h ; @
		.db  00h
		.db  50h ; P
		.db  00h
		.db 0FFh
unk_D041:	.db  3Ah ; :		; DATA XREF: __RESET+7B4r
					; __RESET+13D2r
unk_D042:	.db  6Eh ; n		; DATA XREF: __RESET+7C1r
unk_D043:	.db  71h ; q		; DATA XREF: __RESET:loc_DEB3r
					; __RESET+1397r
unk_D044:	.db  3Fh ; ?		; DATA XREF: __RESET+75Fr __RESET+76Er
unk_D045:	.db  4Eh ; N		; DATA XREF: __RESET:loc_DEA2r
		.db  43h ; C
		.db  0Ch
		.db  0Ch
		.db  0Fh
		.db  10h
		.db  14h
		.db  17h
		.db  19h
		.db  1Ch
		.db  1Fh
		.db  23h ; #
		.db  2Ah ; *
		.db  39h ; 9
		.db  3Eh ; >
		.db  3Eh ; >
		.db  42h ; B
		.db  13h
		.db  13h
		.db  1Ch
		.db  24h ; $
		.db  2Bh ; +
		.db  32h ; 2
		.db  34h ; 4
		.db  37h ; 7
		.db  42h ; B
		.db  4Bh ; K
		.db  58h ; X
		.db  64h ; d
		.db  7Ch ; |
		.db  7Ch ; |
		.db  40h ; @
		.db  23h ; #
		.db  23h ; #
		.db  2Ch ; ,
		.db  35h ; 5
		.db  3Ch ; <
		.db  45h ; E
		.db  4Bh ; K
		.db  5Eh ; ^
		.db  6Bh ; k
		.db  77h ; w
		.db  84h ; „
		.db  90h ; 
		.db 0A3h ; £
		.db 0B3h ; ³
		.db  01h
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  39h ; 9
		.db  03h
		.db  10h
		.db  10h
		.db  10h
		.db  10h
		.db  10h
		.db  10h
		.db  10h
		.db  10h
		.db  1Fh
		.db  26h ; &
		.db  32h ; 2
		.db  3Fh ; ?
		.db  4Bh ; K
		.db  71h ; q
		.db  02h
		.db  19h
		.db  19h
		.db  19h
		.db  19h
		.db  19h
		.db  1Fh
		.db  26h ; &
		.db  32h ; 2
		.db  3Fh ; ?
		.db  4Bh ; K
		.db  64h ; d
		.db  77h ; w
		.db  87h ; ‡
		.db 0ADh ; ­
		.db  43h ; C
		.db  0Ch
		.db  0Ch
		.db  0Fh
		.db  10h
		.db  17h
		.db  17h
		.db  20h
		.db  27h ; '
		.db  2Ch ; ,
		.db  2Eh ; .
		.db  34h ; 4
		.db  3Ah ; :
		.db  3Eh ; >
		.db  3Eh ; >
		.db  42h ; B
		.db  13h
		.db  13h
		.db  1Ch
		.db  24h ; $
		.db  2Ch ; ,
		.db  35h ; 5
		.db  3Fh ; ?
		.db  4Bh ; K
		.db  55h ; U
		.db  5Ah ; Z
		.db  64h ; d
		.db  6Fh ; o
		.db  7Ch ; |
		.db  7Ch ; |
		.db  40h ; @
		.db  23h ; #
		.db  23h ; #
		.db  2Ch ; ,
		.db  35h ; 5
		.db  4Bh ; K
		.db  5Bh ; [
		.db  64h ; d
		.db  77h ; w
		.db  84h ; „
		.db  8Ah ; Š
		.db  97h ; —
		.db 0A0h ;  
		.db 0BCh ; ¼
		.db 0BCh ; ¼
		.db  01h
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  19h
		.db  39h ; 9
		.db  03h
		.db  10h
		.db  10h
		.db  10h
		.db  10h
		.db  17h
		.db  17h
		.db  19h
		.db  1Ch
		.db  24h ; $
		.db  2Ch ; ,
		.db  3Ch ; <
		.db  52h ; R
		.db  64h ; d
		.db  71h ; q
		.db  02h
		.db  19h
		.db  19h
		.db  19h
		.db  19h
		.db  23h ; #
		.db  29h ; )
		.db  2Fh ; /
		.db  45h ; E
		.db  5Eh ; ^
		.db  77h ; w
		.db  82h ; ‚
		.db  90h ; 
		.db  9Dh ; 
		.db 0B6h ; ¶
		.db  43h ; C
		.db  0Ch
		.db  0Ch
		.db  0Fh
		.db  10h
		.db  14h
		.db  17h
		.db  19h
		.db  1Ch
		.db  1Fh
		.db  23h ; #
		.db  27h ; '
		.db  27h ; '
		.db  27h ; '
		.db  27h ; '
		.db  42h ; B
		.db  16h
		.db  19h
		.db  1Ch
		.db  24h ; $
		.db  2Bh ; +
		.db  32h ; 2
		.db  34h ; 4
		.db  37h ; 7
		.db  3Eh ; >
		.db  48h ; H
		.db  53h ; S
		.db  5Bh ; [
		.db  68h ; h
		.db  68h ; h
		.db  40h ; @
		.db  23h ; #
		.db  26h ; &
		.db  2Fh ; /
		.db  35h ; 5
		.db  3Ch ; <
		.db  45h ; E
		.db  4Bh ; K
		.db  55h ; U
		.db  5Bh ; [
		.db  6Bh ; k
		.db  77h ; w
		.db  84h ; „
		.db 0A3h ; £
		.db 0A3h ; £
		.db  01h
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  21h ; !
		.db  03h
		.db  10h
		.db  10h
		.db  10h
		.db  10h
		.db  10h
		.db  10h
		.db  10h
		.db  10h
		.db  19h
		.db  19h
		.db  2Ah ; *
		.db  3Fh ; ?
		.db  4Bh ; K
		.db  5Eh ; ^
		.db  02h
		.db  19h
		.db  19h
		.db  19h
		.db  19h
		.db  19h
		.db  1Fh
		.db  26h ; &
		.db  2Ch ; ,
		.db  32h ; 2
		.db  3Fh ; ?
		.db  4Bh ; K
		.db  64h ; d
		.db  77h ; w
		.db  9Dh ; 
		.db  02h
		.db 0FFh
		.db  12h
		.db 0FFh
		.db  18h
		.db 0FFh
		.db  19h
		.db  00h
		.db  16h
		.db  10h
		.db  02h
		.db  49h ; I
		.db  08h
		.db  7Ah ; z
		.db 0FFh
		.db 0F4h ; ô
		.db  3Ch ; <
		.db  45h ; E
		.db  58h ; X
		.db  77h ; w
		.db  84h ; „
		.db  84h ; „
		.db  84h ; „
		.db  84h ; „
		.db  39h ; 9
		.db  39h ; 9
		.db  42h ; B
		.db  52h ; R
		.db  6Bh ; k
		.db  7Eh ; ~
		.db  7Eh ; ~
		.db  7Eh ; ~
		.db  3Ch ; <
		.db  48h ; H
		.db  7Eh ; ~
		.db  8Dh ; 
		.db  94h ; ”
		.db  97h ; —
		.db  97h ; —
		.db  97h ; —
		.db  39h ; 9
		.db  39h ; 9
		.db  42h ; B
		.db  77h ; w
		.db  8Ah ; Š
		.db  90h ; 
		.db  90h ; 
		.db  90h ; 
		.db  58h ; X
		.db  3Fh ; ?
		.db  3Fh ; ?
		.db  45h ; E
		.db  52h ; R
		.db  5Eh ; ^
		.db  5Eh ; ^
		.db  5Eh ; ^
		.db  52h ; R
		.db  39h ; 9
		.db  39h ; 9
		.db  39h ; 9
		.db  39h ; 9
		.db  39h ; 9
		.db  39h ; 9
		.db  39h ; 9
		.db  58h ; X
		.db  42h ; B
		.db  48h ; H
		.db  52h ; R
		.db  52h ; R
		.db  85h ; …
		.db  85h ; …
		.db  85h ; …
		.db  52h ; R
		.db  3Ch ; <
		.db  3Ch ; <
		.db  3Ch ; <
		.db  3Ch ; <
		.db  3Ch ; <
		.db  3Ch ; <
		.db  3Ch ; <
		.db 0B3h ; ³
		.db  75h ; u
		.db  61h ; a
		.db 0FCh ; ü
		.db  40h ; @
		.db  00h
		.db  2Dh ; -
		.db  1Fh
		.db  99h ; ™
		.db  27h ; '
		.db  00h
		.db  00h
		.db  06h
		.db  07h
		.db  07h
		.db  07h
		.db  07h
		.db  00h
		.db  00h
		.db  03h
		.db  04h
		.db  05h
		.db  07h
		.db  07h
		.db  00h
		.db  00h
		.db  03h
		.db  05h
		.db  05h
		.db  07h
		.db  07h
		.db  00h
		.db  00h
		.db  03h
		.db  04h
		.db  05h
		.db  07h
		.db  07h
		.db  31h ; 1
		.db  31h ; 1
		.db  31h ; 1
		.db  3Dh ; =
		.db  3Dh ; =
		.db  3Dh ; =
		.db  3Dh ; =
		.db  3Dh ; =
		.db  3Dh ; =
		.db  3Dh ; =
		.db  2Bh ; +
		.db  2Bh ; +
		.db  2Bh ; +
		.db  2Bh ; +
		.db  2Bh ; +
		.db  2Bh ; +
		.db  2Bh ; +
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  18h
		.db  18h
		.db  25h ; %
		.db  25h ; %
		.db  25h ; %
		.db  25h ; %
		.db  25h ; %
		.db  25h ; %
		.db  25h ; %
		.db 0F4h ; ô
		.db 0F4h ; ô
		.db 0F4h ; ô
		.db 0F4h ; ô
		.db 0F4h ; ô
		.db 0C3h ; Ã
		.db 0C3h ; Ã
		.db 0F4h ; ô
		.db 0F4h ; ô
		.db 0F4h ; ô
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0C3h ; Ã
		.db 0C3h ; Ã
		.db 0C3h ; Ã
		.db 0C3h ; Ã
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0F4h ; ô
		.db 0F4h ; ô
		.db 0F4h ; ô
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0DCh ; Ü
		.db 0DCh ; Ü
		.db 0ABh ; «
		.db 0ABh ; «
		.db 0ABh ; «
		.db 0ABh ; «
		.db 0ABh ; «
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db  92h ; ’
		.db  92h ; ’
		.db  92h ; ’
		.db  92h ; ’
		.db  92h ; ’
		.db  7Ah ; z
		.db  7Ah ; z
		.db  7Ah ; z
		.db  7Ah ; z
		.db  7Ah ; z
		.db  7Ah ; z
		.db  7Ah ; z
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db 0B7h ; ·
		.db  31h ; 1
		.db  31h ; 1
		.db  31h ; 1
		.db  31h ; 1
		.db  31h ; 1
		.db  31h ; 1
		.db  31h ; 1
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  12h
		.db  12h
		.db  12h
		.db  18h
		.db  18h
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  1Fh
		.db  06h
		.db  06h
		.db  0Ah
		.db  0Ah
		.db  0Ah
		.db  0Ah
		.db  0Ch
		.db  04h
		.db  04h
		.db  06h
		.db  09h
		.db  0Dh
		.db  10h
		.db  12h
		.db  18h
		.db  18h
		.db  18h
		.db  20h
		.db  20h
		.db  30h ; 0
		.db  30h ; 0
		.db  04h
		.db  04h
		.db  06h
		.db  09h
		.db  0Dh
		.db  10h
		.db  12h
		.db  08h
		.db  08h
		.db  08h
		.db  18h
		.db  20h
		.db  20h
		.db  20h
		.db  08h
		.db  08h
		.db  08h
		.db  10h
		.db  18h
		.db  18h
		.db  28h ; (
		.db  50h ; P
		.db  50h ; P
		.db  50h ; P
		.db  68h ; h
		.db  68h ; h
		.db  70h ; p
		.db  70h ; p
		.db  08h
		.db  08h
		.db  08h
		.db  10h
		.db  18h
		.db  18h
		.db  28h ; (
		.db  40h ; @
		.db  40h ; @
		.db  40h ; @
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  07h
		.db  07h
		.db  07h
		.db  00h
		.db  00h
		.db  07h
		.db  07h
		.db  07h
		.db  07h
		.db  07h
		.db  00h
		.db  00h
		.db  07h
		.db  07h
		.db  07h
		.db  07h
		.db  07h
		.db  18h
		.db  0Ch
		.db  06h
		.db 0C3h ; Ã
		.db 0C3h ; Ã
		.db  7Ah ; z
		.db  0Eh
		.db  14h
		.db  1Ah
		.db  16h
		.db  28h ; (
		.db  32h ; 2
		.db  24h ; $
		.db  3Ch ; <
		.db  46h ; F
		.db  06h
		.db  00h
		.db  00h
		.db  12h
		.db  08h
		.db  06h
		.db  12h
		.db  0Ch
		.db  06h
		.db  0Ch
		.db  06h
		.db  04h
		.db  31h ; 1
		.db  00h
		.db  31h ; 1
		.db  3Bh ; ;
		.db  58h ; X
		.db  49h ; I
		.db  49h ; I
		.db  31h ; 1
		.db  31h ; 1
		.db  53h ; S
		.db  49h ; I
		.db  31h ; 1
		.db 0D8h ; Ø
		.db 0C8h ; È
		.db  80h ; €
		.db 0D8h ; Ø
		.db 0E0h ; à
		.db  80h ; €
		.db 0D0h ; Ð
		.db 0D8h ; Ø
		.db 0A8h ; ¨
		.db 0D0h ; Ð
		.db 0D8h ; Ø
		.db 0A8h ; ¨
		.db 0ECh ; ì
		.db 0ECh ; ì
		.db 0ECh ; ì
		.db 0ECh ; ì
		.db 0ECh ; ì
		.db 0ECh ; ì
		.db 0ECh ; ì
		.db 0ECh ; ì
		.db 0ECh ; ì
		.db 0ECh ; ì
		.db 0ECh ; ì
		.db 0ECh ; ì
		.db  1Eh
		.db  1Eh
		.db  1Eh
		.db  1Eh
		.db  46h ; F
		.db  46h ; F
		.db  46h ; F
		.db  46h ; F
		.db  1Eh
		.db  1Eh
		.db  1Eh
		.db  1Eh
		.db  4Bh ; K
		.db  4Bh ; K
		.db  45h ; E
		.db  45h ; E
		.db  45h ; E
		.db  45h ; E
		.db  45h ; E
		.db  45h ; E
		.db  4Bh ; K
		.db  4Bh ; K
		.db  45h ; E
		.db  45h ; E
		.db  45h ; E
		.db  45h ; E
		.db  45h ; E
		.db  45h ; E
		.db  26h ; &
		.db  26h ; &
		.db  26h ; &
		.db  26h ; &
		.db  00h
		.db  64h ; d
		.db  64h ; d
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  1Eh
		.db  28h ; (
		.db  1Eh
		.db  32h ; 2
		.db  32h ; 2
		.db  28h ; (
		.db  32h ; 2
		.db  3Ch ; <
		.db  3Ch ; <
		.db  32h ; 2
		.db  3Ch ; <
		.db  3Ch ; <
		.db  1Eh
		.db  1Eh
		.db  1Eh
		.db  32h ; 2
		.db  32h ; 2
		.db  28h ; (
		.db  32h ; 2
		.db  3Ch ; <
		.db  3Ch ; <
		.db  32h ; 2
		.db  3Ch ; <
		.db  3Ch ; <
		.db  5Ah ; Z
		.db  5Ah ; Z
		.db  5Ah ; Z
		.db 0C7h ; Ç
		.db  5Ah ; Z
		.db  5Ah ; Z
		.db  5Ah ; Z
		.db 0C7h ; Ç
		.db  5Ah ; Z
		.db  5Ah ; Z
		.db  5Ah ; Z
		.db 0C7h ; Ç
		.db  41h ; A
		.db  41h ; A
		.db  50h ; P
		.db  37h ; 7
		.db  37h ; 7
		.db  37h ; 7
		.db  50h ; P
		.db  4Ah ; J
		.db  32h ; 2
		.db  37h ; 7
		.db  46h ; F
		.db  45h ; E
		.db  28h ; (
		.db  28h ; (
		.db  46h ; F
		.db  45h ; E
		.db  32h ; 2
		.db  28h ; (
		.db  32h ; 2
		.db 0C7h ; Ç
		.db  28h ; (
		.db  28h ; (
		.db  28h ; (
		.db 0C7h ; Ç
		.db  28h ; (
		.db  28h ; (
		.db  28h ; (
		.db 0C7h ; Ç
		.db  28h ; (
		.db  1Eh
		.db  28h ; (
		.db 0C7h ; Ç
		.db  50h ; P
		.db  50h ; P
		.db  50h ; P
		.db 0C7h ; Ç
		.db  37h ; 7
		.db  37h ; 7
		.db  50h ; P
		.db  32h ; 2
		.db  37h ; 7
		.db  37h ; 7
		.db  50h ; P
		.db  42h ; B
		.db  28h ; (
		.db  28h ; (
		.db  50h ; P
		.db  3Fh ; ?
		.db  28h ; (
		.db  28h ; (
		.db  50h ; P
		.db  4Bh ; K
		.db  28h ; (
		.db  28h ; (
		.db  46h ; F
		.db  52h ; R
		.db  28h ; (
		.db  28h ; (
		.db  46h ; F
		.db  52h ; R
		.db  32h ; 2
		.db  32h ; 2
		.db  3Ch ; <
		.db  5Eh ; ^
		.db  32h ; 2
		.db  32h ; 2
		.db  3Ch ; <
		.db  5Eh ; ^
		.db  32h ; 2
		.db  32h ; 2
		.db  32h ; 2
		.db 0C7h ; Ç
		.db  32h ; 2
		.db  32h ; 2
		.db  32h ; 2
		.db 0C7h ; Ç
		.db  50h ; P
		.db  50h ; P
		.db  50h ; P
		.db 0C7h ; Ç
		.db  37h ; 7
		.db  37h ; 7
		.db  50h ; P
		.db  4Bh ; K
		.db  37h ; 7
		.db  37h ; 7
		.db  50h ; P
		.db  64h ; d
		.db  2Dh ; -
		.db  2Dh ; -
		.db  50h ; P
		.db  8Ah ; Š
		.db  2Dh ; -
		.db  2Dh ; -
		.db  50h ; P
		.db 0BCh ; ¼
		.db  2Dh ; -
		.db  2Dh ; -
		.db  2Dh ; -
		.db 0C7h ; Ç
		.db  2Dh ; -
		.db  2Dh ; -
		.db  2Dh ; -
		.db 0C7h ; Ç
		.db  2Dh ; -
		.db  2Dh ; -
		.db  2Dh ; -
		.db 0C7h ; Ç
		.db  2Dh ; -
		.db  2Dh ; -
		.db  2Dh ; -
		.db 0C7h ; Ç
		.db  32h ; 2
		.db  32h ; 2
		.db  32h ; 2
		.db 0C7h ; Ç
		.db  32h ; 2
		.db  32h ; 2
		.db  32h ; 2
		.db 0C7h ; Ç
		.db  04h
		.db  04h
		.db  04h
		.db  18h
		.db  18h
		.db  1Ch
		.db  24h ; $
		.db  2Ch ; ,
		.db  30h ; 0
		.db  40h ; @
		.db  50h ; P
		.db  50h ; P
		.db  54h ; T
		.db  04h
		.db  04h
		.db  04h
		.db  04h
		.db  04h
		.db  04h
		.db  20h
		.db  24h ; $
		.db  28h ; (
		.db  34h ; 4
		.db  44h ; D
		.db  48h ; H
		.db  58h ; X
		.db  04h
		.db  04h
		.db  04h
		.db  04h
		.db  38h ; 8
		.db  38h ; 8
		.db  60h ; `
		.db  78h ; x
		.db  90h ; 
		.db 0B0h ; °
		.db 0C0h ; À
		.db 0C0h ; À
		.db 0D8h ; Ø
		.db  00h
		.db  00h
		.db  00h
		.db  0Fh
		.db  0Fh
		.db  14h
		.db  1Eh
		.db  1Eh
		.db  1Eh
		.db  1Eh
		.db  3Ch ; <
		.db  3Ch ; <
		.db  3Ch ; <
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  19h
		.db  28h ; (
		.db  32h ; 2
		.db  3Ch ; <
		.db  50h ; P
		.db  50h ; P
		.db  50h ; P
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  0Ah
		.db  14h
		.db  1Eh
		.db  28h ; (
		.db  32h ; 2
		.db  32h ; 2
		.db  32h ; 2
		.db  32h ; 2
		.db  00h
		.db  00h
		.db  00h
		.db  05h
		.db  07h
		.db  07h
		.db  0Ah
		.db  0Ah
		.db  0Ah
		.db  0Ah
		.db  0Ah
		.db  0Ch
		.db  0Ah
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  0Fh
		.db  0Fh
		.db  0Fh
		.db  0Fh
		.db  0Fh
		.db  0Fh
		.db  14h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  0Ah
		.db  0Ah
		.db  0Fh
		.db  14h
		.db  14h
		.db  14h
		.db  14h
		.db  14h
		.db  0Eh
		.db  0Eh
		.db  11h
		.db  11h
		.db  13h
		.db  13h
		.db  11h
		.db  11h
		.db  0Eh
		.db  0Fh
		.db  10h
		.db  11h
		.db  11h
		.db  0Bh
		.db  0Bh
		.db  0Dh
		.db  0Dh
		.db  0Dh
		.db  0Dh
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Ch
		.db  0Bh
		.db  0Bh
		.db  0Bh
		.db  0Bh
		.db  09h
		.db  09h
		.db  09h
		.db  09h
		.db  09h
		.db  09h
		.db  09h
		.db  08h
		.db  08h
		.db  5Ah ; Z
		.db  5Ah ; Z
		.db  41h ; A
		.db  37h ; 7
		.db  32h ; 2
		.db  28h ; (
		.db  28h ; (
		.db  28h ; (
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  37h ; 7
		.db  37h ; 7
		.db  28h ; (
		.db  28h ; (
		.db  28h ; (
		.db  28h ; (
		.db  32h ; 2
		.db  32h ; 2
		.db  32h ; 2
		.db  32h ; 2
		.db  00h
		.db  00h
		.db  00h
		.db  37h ; 7
		.db  37h ; 7
		.db  2Dh ; -
		.db  2Dh ; -
		.db  2Dh ; -
		.db  2Dh ; -
		.db  2Dh ; -
		.db  2Dh ; -
		.db  32h ; 2
		.db  32h ; 2
		.db  00h
		.db  00h
		.db  00h
		.db  80h ; €
		.db  33h ; 3
		.db  80h ; €
		.db  1Fh
		.db 0D4h ; Ô
		.db  61h ; a
		.db 0D4h ; Ô
		.db  6Eh ; n
		.db 0D4h ; Ô
		.db  7Bh ; {
		.db 0D4h ; Ô
		.db  88h ; ˆ
		.db 0D4h ; Ô
		.db  95h ; •
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  32h ; 2
		.db  50h ; P
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  00h
		.db  00h
		.db  00h
		.db  00h
		.db  32h ; 2
		.db  50h ; P
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  00h
		.db  00h
		.db  00h
		.db  32h ; 2
		.db  50h ; P
		.db  50h ; P
		.db  64h ; d
		.db  64h ; d
		.db  64h ; d
		.db  38h ; 8
		.db  41h ; A
		.db  70h ; p
		.db  2Dh ; -
		.db 0FFh
		.db  40h ; @
		.db  3Ch ; <
		.db  60h ; `
		.db  2Dh ; -
		.db 0FFh
		.db  40h ; @
		.db  00h
		.db  78h ; x
		.db  00h
		.db 0FFh
		.db  38h ; 8
		.db  5Fh ; _
		.db  90h ; 
		.db  2Dh ; -
		.db 0FFh
		.db  40h ; @
		.db  4Bh ; K
		.db  80h ; €
		.db  2Dh ; -
		.db 0FFh
		.db  40h ; @
		.db  00h
		.db  78h ; x
		.db  00h
		.db 0FFh
		.db  30h ; 0
		.db  2Dh ; -
		.db  58h ; X
		.db  34h ; 4
		.db 0FFh
		.db  30h ; 0
		.db  2Dh ; -
		.db  58h ; X
		.db  34h ; 4
		.db 0FFh
		.db  30h ; 0
		.db  1Bh
		.db  60h ; `
		.db  2Dh ; -
		.db 0FFh
		.db 0B7h ; ·
		.db  00h
		.db  00h
		.db  01h
		.db  1Eh
		.db 0B7h ; ·
		.db  00h
		.db  01h
		.db  01h
		.db  00h
		.db 0B7h ; ·
		.db  15h
		.db  01h
		.db  01h
		.db  00h
		.db  14h
		.db  50h ; P
		.db  28h ; (
		.db  00h
		.db 0FFh
		.db  28h ; (
		.db  50h ; P
		.db  68h ; h
		.db  00h
		.db 0FFh
		.db  34h ; 4
		.db  4Bh ; K
		.db  78h ; x
		.db  1Eh
		.db 0FFh
		.db  52h ; R
		.db  37h ; 7
		.db  78h ; x
		.db  1Eh
		.db 0FFh
		.db  48h ; H
		.db  31h ; 1
		.db  68h ; h
		.db  3Dh ; =
		.db 0FFh
		.db  48h ; H
		.db  04h
		.db 0B4h ; ´
		.db  78h ; x
		.db 0FFh
		.db  26h ; &
		.db  32h ; 2
		.db  50h ; P
		.db  5Ah ; Z
		.db  80h ; €
		.db  80h ; €
		.db  00h
		.db  14h
		.db  1Ch
		.db  28h ; (
		.db  28h ; (
		.db  80h ; €
		.db  80h ; €
		.db  00h
		.db  00h
		.db  12h
		.db  16h
		.db  1Eh
		.db  80h ; €
		.db  80h ; €
		.db  00h
		.db  06h
		.db  0Bh
		.db  12h
		.db  19h
		.db  21h ; !
		.db  29h ; )
		.db  31h ; 1
		.db  39h ; 9
		.db  46h ; F
		.db  52h ; R
		.db  6Ah ; j
		.db  8Bh ; ‹
		.db 0FFh
		.db  00h
		.db  20h
		.db  30h ; 0
		.db  10h
		.db  18h
		.db  38h ; 8
		.db  28h ; (
		.db  08h
		.db  68h ; h
		.db 0FFh
		.db  63h ; c
		.db  00h
		.db  75h ; u
		.db  04h
		.db  74h ; t
		.db  04h
		.db 0E9h ; é
		.db  04h
		.db 0A5h ; ¥
		.db 0FFh
		.db 0A6h ; ¦
		.db 0FFh
		.db 0A2h ; ¢
		.db  0Eh
		.db 0C2h ; Â
		.db  56h ; V
		.db 0C3h ; Ã
		.db  1Dh
		.db 0E2h ; â
		.db  10h
		.db 0E6h ; æ
		.db 0FFh
		.db 0CAh ; Ê
		.db 0FFh
		.db 0BAh ; º
		.db 0FFh
		.db 0D5h ; Õ
		.db 0FFh
		.db 0D6h ; Ö
		.db 0FFh
		.db 0C8h ; È
		.db 0FFh
		.db 0BFh ; ¿
		.db 0FFh
		.db 0C0h ; À
		.db 0FFh
		.db 0B0h ; °
		.db 0FFh
		.db 0C4h ; Ä
		.db 0FFh
		.db 0C6h ; Æ
		.db 0FFh
		.db  00h

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D553:				; CODE XREF: sub_E4A1+9p __RESET+1078p ...
		push	y
		push	d
		mov	s, x
		mul	a, x + 02h
		mov	d, y
		ld	a, x + 00h
		mul	a, x + 03h
		add	y, a
		st	b, x + 00h
		ld	a, x + 01h
		mul	a, x + 02h
		add	y, a
		add	b, x + 00h
		bcc	loc_D56A
		inc	y

loc_D56A:				; CODE XREF: sub_D553+14j
		st	b, x + 00h
		ld	a, x + 01h
		mul	a, x + 03h
		add	a, x + 00h
		bcc	loc_D575
		inc	y

loc_D575:				; CODE XREF: sub_D553+1Fj
		pull	x
		pull	x
		ret
; End of function sub_D553


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D578:				; CODE XREF: __RESET+106Bp
		push	y
		mov	s, x
		xch	a, x + 01h
		mul	a, x + 01h
		addc	a, #00h
		xch	a, x + 01h
		mul	a, x + 00h
		mov	d, y
		pull	d
		add	y, b
		mov	y, d
		ret
; End of function sub_D578


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D589:				; CODE XREF: __RESET+27Cp sub_D9E2+8Fp ...
		st	x, unk_52
		beq	locret_D5DC
		shr	d
		mov	d, y
		clr	a
		clr	b
		mov	d, x
		ld	d, unk_52

loc_D594:				; CODE XREF: sub_D589+Fj
		bmi	loc_D59A
		inc	x
		shl	d
		bra	loc_D594
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D59A:				; CODE XREF: sub_D589:loc_D594j
		st	x, unk_52
		inc	a
		push	d
		mov	s, x
		dec	x
		dec	x
		ld	a, x + 02h
		mov	y, d
		beq	loc_D5AD
		div	d, x + 02h
		push	b
		clr	b
		div	d, x + 02h
		pull	a

loc_D5AD:				; CODE XREF: sub_D589+1Bj
		push	d
		mov	y, d
		dec	x + 02h
		div	d, x + 02h
		push	b
		clr	b
		div	d, x + 02h
		pull	a
		neg	x + 03h
		beq	loc_D5C9
		sub	d, x + 00h
		push	b
		mul	a, x + 03h
		mov	d, y
		pull	a
		mul	a, x + 03h
		add	y, a
		mov	y, d
		add	d, x + 00h

loc_D5C9:				; CODE XREF: sub_D589+31j
		pull	y
		pull	y
		ld	x, unk_52

loc_D5CD:				; CODE XREF: sub_D589+4Bj sub_D589+51j
		cmp	x, #0007h
		bcc	loc_D5D6
		inc	x
		shr	d
		bra	loc_D5CD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D5D6:				; CODE XREF: sub_D589+47j
		beq	locret_D5DC
		dec	x
		shl	d
		bpz	loc_D5CD

locret_D5DC:				; CODE XREF: sub_D589+2j
					; sub_D589:loc_D5D6j
		ret
; End of function sub_D589


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D5DD:				; CODE XREF: ROM:D87Cp	ROM:loc_D8AAp ...
		push	a
		mov	a, b
		xor	a, y + 00h
		and	a, y + 02h
		and	b, y + 00h
		add	a, b
		and	a, x + 00h
		ld	b, x + 00h
		xor	b, #0FFh
		and	b, y + 00h
		add	a, b
		st	a, y + 00h
		pull	a
		and	a, x + 00h
		ld	b, x + 00h
		xor	b, #0FFh
		and	b, y + 02h
		add	a, b
		st	a, y + 02h
		ret
; End of function sub_D5DD


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D5FE:				; CODE XREF: sub_D5FE+Bj __RESET+C6Dp	...
		di
		ld	b, x + 00h
		inc	b
		beq	loc_D606
		st	b, x + 00h

loc_D606:				; CODE XREF: sub_D5FE+4j
		ei
		inc	x
		dec	a
		bne	sub_D5FE
		ret
; End of function sub_D5FE

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR sub_D613

loc_D60C:				; CODE XREF: sub_D613+1j
		ld	x, #0000h
		add	x, a
		ld	a, [y]
		st	a, x + 00h
; END OF FUNCTION CHUNK	FOR sub_D613

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D613:				; CODE XREF: __RESET+6Dp

; FUNCTION CHUNK AT D60C SIZE 00000007 BYTES

		ld	a, [y]
		bne	loc_D60C
		ret
; End of function sub_D613


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D617:				; CODE XREF: __RESET+13FCp
					; __RESET+14D3p ...
		ld	d, unk_6E
		shl	d
		bcs	loc_D626
		mov	a, b
		bra	sub_D62F
; End of function sub_D617


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D61F:				; CODE XREF: __RESET:loc_E954p
					; __RESET:loc_E9B3p ...
		ld	b, unk_152
		cmp	b, #0A0h
		bcs	sub_D62F

loc_D626:				; CODE XREF: sub_D617+3j
		clr	a
		bra	locret_D666
; End of function sub_D61F

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db 0DBh ; Û
		.db 0F0h ; ð
		.db  40h ; @
		.db  02h
		.db 0DBh ; Û
		.db 0F7h ; ÷

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D62F:				; CODE XREF: ROM:C1A6p	sub_D617+6j ...
		cmp	b, y + 00h
		bgt	loc_D637
		bra	loc_D663
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D635:				; CODE XREF: sub_D62F+Aj
		inc	y
		inc	y

loc_D637:				; CODE XREF: sub_D62F+2j
		cmp	b, y + 02h
		bgt	loc_D635
		ld	a, y + 02h
		cmp	a, #0FFh
		beq	loc_D663
		sub	b, y + 00h
		sub	a, y + 00h
		push	d
		mov	s, x
		ld	a, y + 03h
		sub	a, y + 01h
		bcc	loc_D656
		ld	b, x + 00h
		sub	b, x + 01h
		xch	b, x + 01h
		neg	a
		inc	y
		inc	y

loc_D656:				; CODE XREF: sub_D62F+1Cj
		mul	a, x + 01h
		div	d, x + 00h
		push	b
		clr	b
		div	d, x + 00h
		pull	a
		add	a, y + 01h
		pull	x
		ret
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D663:				; CODE XREF: sub_D62F+4j sub_D62F+10j
		ld	a, y + 01h
		clr	b

locret_D666:				; CODE XREF: sub_D61F+8j
		ret
; End of function sub_D62F


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D667:				; CODE XREF: ROM:C100p	ROM:C110p
		st	b, unk_55
		mov	a, b
		clr	a
		div	d, #0Ch
		st	b, unk_54
		ld	b, unk_55
		div	d, #0Ch
		st	b, unk_55
		ret
; End of function sub_D667


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D676:				; CODE XREF: ROM:C113p
		ld	d, unk_F0
		cmp	a, #30h
		bcs	loc_D68C
		add	a, #30h
		bra	sub_D68B
; End of function sub_D676

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  96h ; –
		.db 0F0h ; ð
		.db 0CCh ; Ì
		.db  18h
		.db  45h ; E
		.db  06h
		.db 0C0h ; À
		.db  18h
		.db  40h ; @
		.db  01h
		.db  04h

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D68B:				; CODE XREF: ROM:C105p	sub_D676+8j
		shr	d

loc_D68C:				; CODE XREF: sub_D676+4j
		shr	d
		shr	d
		bsr	sub_D6BC
		st	d, unk_52
		mov	y, d
		mov	d, x
		inc	y
		inc	y
		ld	d, unk_54
		bsr	sub_D6BC
		push	b
		ld	b, x + 01h
		inc	b
		st	b, unk_54
		mul	a, unk_54
		add	y, b
		push	y
		ld	d, unk_52
		bsr	sub_D6CB
		st	a, unk_55
		pull	y
		ld	b, unk_54
		add	y, b
		ld	d, unk_52
		bsr	sub_D6CB
		xch	a, unk_55
		st	a, unk_54
		ld	y, #0054h
		pull	b
		bra	loc_D6CE
; End of function sub_D68B


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D6BC:				; CODE XREF: sub_D68B+3p sub_D68B+Dp
		sub	d, y + 00h
		bcc	loc_D6C2
		clr	a
		clr	b

loc_D6C2:				; CODE XREF: sub_D6BC+2j
		cmp	a, y + 02h
		bcs	loc_D6C9
		ld	a, y + 02h
		clr	b

loc_D6C9:				; CODE XREF: sub_D6BC+8j
		inc	y
		ret
; End of function sub_D6BC


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D6CB:				; CODE XREF: sub_D68B+1Bp sub_D68B+25p
		add	a, #02h
		add	y, a

loc_D6CE:				; CODE XREF: sub_D68B+2Fj
		mov	b, a
		beq	loc_D6E1
		push	b
		mov	s, x
		ld	a, y + 01h
		sub	a, y + 00h
		bcc	loc_D6DE
		neg	a
		neg	b
		xch	b, x + 00h
		inc	y

loc_D6DE:				; CODE XREF: sub_D6CB+Cj
		mul	a, x + 00h
		inc	s

loc_D6E1:				; CODE XREF: sub_D6CB+4j
		add	a, y + 00h
		ret
; End of function sub_D6CB

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  6Ch ; l
		.db  96h ; –
		.db  80h ; €
		.db 0E5h ; å
		.db  00h
		.db  84h ; „
		.db  00h
		.db  3Fh ; ?
		.db  7Ch ; |
		.db  0Dh
		.db  3Bh ; ;
		.db  80h ; €
		.db 0A2h ; ¢
		.db  00h
		.db  3Bh ; ;
		.db  9Eh ; ž
		.db  63h ; c

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D6F5:				; CODE XREF: ROM:loc_C1F6p
		cmp	a, y + 00h
		bgt	loc_D6FE

loc_D6F9:				; CODE XREF: sub_D6F5+11j
		clr	a
		bra	loc_D721
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D6FC:				; CODE XREF: sub_D6F5+Bj
		inc	y
		inc	y

loc_D6FE:				; CODE XREF: sub_D6F5+2j
		cmp	a, y + 02h
		bgt	loc_D6FC
		ld	b, y + 02h
		cmp	b, #0FFh
		beq	loc_D6F9
		sub	a, y + 00h
		sub	b, y + 00h
		push	b
		mov	s, x
		clr	b
		div	d, x + 00h
		inc	s
		ld	a, y + 03h
		bcs	loc_D71D
		cmp	a, y + 01h
		bcc	loc_D71F
		neg	b
		ld	a, y + 01h

loc_D71D:				; CODE XREF: sub_D6F5+1Fj
		inc	y
		inc	y

loc_D71F:				; CODE XREF: sub_D6F5+23j
		sub	a, y + 01h

loc_D721:				; CODE XREF: sub_D6F5+5j
		inc	y
		push	b
		mov	s, x
		mul	a, x + 00h
		inc	s
		add	a, y + 00h
		ret
; End of function sub_D6F5


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


		; public __RESET
__RESET:				; CODE XREF: sub_F5A7+2Aj
					; DATA XREF: ROM:FFFEo

; FUNCTION CHUNK AT D84A SIZE 00000009 BYTES
; FUNCTION CHUNK AT D8FA SIZE 000000E8 BYTES
; FUNCTION CHUNK AT DAA0 SIZE 00000026 BYTES
; FUNCTION CHUNK AT DB06 SIZE 000000CF BYTES
; FUNCTION CHUNK AT DC11 SIZE 00000040 BYTES
; FUNCTION CHUNK AT DC6D SIZE 000001A3 BYTES
; FUNCTION CHUNK AT DE1F SIZE 000000A5 BYTES
; FUNCTION CHUNK AT DEC7 SIZE 00000003 BYTES
; FUNCTION CHUNK AT DECD SIZE 0000002B BYTES
; FUNCTION CHUNK AT DEFC SIZE 000000AD BYTES
; FUNCTION CHUNK AT DFDD SIZE 000000EC BYTES
; FUNCTION CHUNK AT E107 SIZE 000000CA BYTES
; FUNCTION CHUNK AT E2A5 SIZE 00000003 BYTES
; FUNCTION CHUNK AT E369 SIZE 00000037 BYTES
; FUNCTION CHUNK AT E74D SIZE 000000AC BYTES
; FUNCTION CHUNK AT E7FE SIZE 000000BF BYTES
; FUNCTION CHUNK AT E8E1 SIZE 000006E1 BYTES
; FUNCTION CHUNK AT F19A SIZE 0000003A BYTES
; FUNCTION CHUNK AT F1DC SIZE 00000014 BYTES
; FUNCTION CHUNK AT F30C SIZE 00000071 BYTES
; FUNCTION CHUNK AT F39C SIZE 00000016 BYTES
; FUNCTION CHUNK AT F3DB SIZE 00000067 BYTES
; FUNCTION CHUNK AT F452 SIZE 000000B0 BYTES
; FUNCTION CHUNK AT F541 SIZE 00000043 BYTES

		ld	#07h, OMODE	; Mode control Register
		di
		ld	#00h, PORTA	; Port A Data Register
		ld	#00h, DDRA	; Port A i/o config
		clr	PORTAL		; Port A Latch
		ld	#00h, PORTB	; Port B Data Register
		ld	#38h, DDRB	; Port B i/o config
		clr	PBCS		; Port B Control Register
		ld	#18h, ASR0P	; ASR0 pos edge	counter	value MSB
		clr	a
		clr	b
		st	d, ASR1N	; ASR1 neg edge	counter	value MSB
		ld	#00h, PORTD_ASRIN ; Port D Data	Register / ASR Input Data
		ld	#63h, ASR0PL	; ASR0 pos edge	counter	value LSB
		ld	#30h, SMRC_SIR	; Serial Master	Register Control
		ld	a, SSD		; Serial Status	Data Register
		ld	a, SIDR_SODR	; Serial Input/Output Data Register
		clrb	bit3, SSD
		ld	#00h, unk_1D
		ld	#0B0h, ASR0NL	; ASR0 neg edge	counter	value LSB
		ld	#34h, ASR0N	; ASR0 neg edge	counter	value MSB
		ld	d, #38F0h
		st	d, ASR2		; ASR2 edge counter value MSB
		ld	d, #3900h
		st	d, ASR3		; ASR3 edge counter value MSB
		ld	#12h, TAIT	; Timer	ASR Control
		ld	#09h, ASR1P	; ASR1 pos edge	counter	value MSB
		ld	#88h, DOUT	; DOUT Data Register
		clr	DOM		; DOUT Control Register
		clr	a
		clr	b
		st	d, IRQL		; Interrupt Request Flag MSB
		st	d, IMASK	; Interrupt Request Mask MSB
		ld	s, #02FFh
		clr	a
		clr	b
		ld	y, #0040h

loc_D780:				; CODE XREF: __RESET+5Aj
		st	d, [y]
		cmp	y, #007Fh
		ble	loc_D780
		ld	y, #00A0h

loc_D789:				; CODE XREF: __RESET+63j
		st	d, [y]
		cmp	y, #0162h
		ble	loc_D789
		dec	unk_7D
		jsr	sub_F44B
		ld	y, #0D526h
		jsr	sub_D613
		setb	bit3, unk_41
		jsr	sub_DAC6
		jsr	sub_DAD8
		jsr	loc_D85D
		jsr	loc_D85D
		jsr	sub_FA27
		clr	a
		clr	b
		st	d, IRQL		; Interrupt Request Flag MSB
		ld	d, TIMER	; Timer	MSB (bit11~bit18)
		add	d, #02EEh
		st	d, CPR0		; Timer	comparison #0 MSB
		add	d, #02EEh
		st	d, CPR1		; Timer	comparison #1 MSB
		nop
		nop
		nop

loc_D7BE:				; CODE XREF: __RESET+1E57j
		ld	d, #13B6h
		st	d, IMASK	; Interrupt Request Mask MSB
		ei
		ld	#30h, SMRC_SIR	; Serial Master	Register Control
		ld	#12h, TAIT	; Timer	ASR Control
		ld	#09h, ASR1P	; ASR1 pos edge	counter	value MSB
		ld	#0B0h, ASR0NL	; ASR0 neg edge	counter	value LSB
		ld	#00h, unk_1D
		clrb	bit3, SSD
		ld	#00h, DDRA	; Port A i/o config
		ld	#38h, DDRB	; Port B i/o config
		ld	#18h, ASR0P	; ASR0 pos edge	counter	value MSB
		ld	#63h, ASR0PL	; ASR0 pos edge	counter	value LSB
		clrb	bit2, DOM
		clrb	bit3, DOM
		clrb	bit5, DOM
		clrb	bit7, DOM
		di
		ld	a, unk_E1
		and	a, #0C0h
		add	a, #34h
		st	a, unk_E1
		ei
		ld	s, #02FFh
		tbs	bit5, RAMST	; Built-in RAM status
		beq	loc_D7FF
		cmp	#66h, unk_F6
		bcc	loc_D801

loc_D7FF:				; CODE XREF: __RESET+CEj
		clr	unk_B5

loc_D801:				; CODE XREF: __RESET+D3j
		tbs	bit7, RAMST	; Built-in RAM status
		beq	loc_D819
		cmp	#5Ah, unk_82
		bne	loc_D819
		ld	y, #0082h

loc_D80D:				; CODE XREF: __RESET+EBj
		ld	d, [y]
		add	a, b
		inc	a
		bne	loc_D819
		cmp	y, #0088h
		bcs	loc_D80D
		bra	loc_D81B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D819:				; CODE XREF: __RESET+D9j __RESET+DEj ...
		bsr	sub_D830

loc_D81B:				; CODE XREF: __RESET+EDj
		tbbc	bit5, RAMST, loc_D820 ;	Built-in RAM status
		setb	bit0, unk_4A

loc_D820:				; CODE XREF: __RESET:loc_D81Bj
		bra	loc_D84A
; End of function __RESET


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D822:				; CODE XREF: sub_D830+Cp
		ld	x, #5AA5h
		ld	y, #0300h

loc_D828:				; CODE XREF: sub_D822+Bj
		ld	a, [y]
		add	x, a
		cmp	y, #030Ch
		bcs	loc_D828
		ret
; End of function sub_D822


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D830:				; CODE XREF: __RESET:loc_D819p
		clr	a
		clr	b
		st	a, unk_4B
		st	a, unk_4C
		dec	b
		ld	y, #0084h
		st	d, [y]
		st	d, [y]
		bsr	sub_D822
		st	x, unk_80
		st	x, unk_9E
		ld	d, #5AA5h
		st	d, unk_82
		clrb	bit0, unk_4A
		ret
; End of function sub_D830

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_D84A:				; CODE XREF: __RESET:loc_D820j
		jsr	loc_C0FB
		jsr	sub_D856
		jmp	loc_D8FA
; END OF FUNCTION CHUNK	FOR __RESET
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db 0FFh
		.db 0F8h ; ø
		.db 0D8h ; Ø

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D856:				; CODE XREF: __RESET+123p __RESET+C57p

; FUNCTION CHUNK AT D8F9 SIZE 00000001 BYTES

		tbs	bit0, unk_40
		beq	loc_D85D
		jmp	locret_D8F9
; End of function sub_D856

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D85D:				; CODE XREF: __RESET+78p __RESET+7Bp ...
		ld	a, SSD		; Serial Status	Data Register
		ld	a, SIDR_SODR	; Serial Input/Output Data Register
		clrb	bit3, DOUT
		ld	a, #08h

loc_D865:				; CODE XREF: ROM:D869j
		tbbs	bit7, SSD, loc_D86F ; Serial Status Data Register
		dec	a
		bne	loc_D865

loc_D86B:				; CODE XREF: ROM:loc_D86Fj
		ld	a, SIDR_SODR	; Serial Input/Output Data Register
		bra	loc_D87F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D86F:				; CODE XREF: ROM:loc_D865j
		tbbs	bit6, SSD, loc_D86B ; Serial Status Data Register
		ld	a, SIDR_SODR	; Serial Input/Output Data Register
		xor	a, #41h
		ld	y, #004Fh
		ld	x, #0D853h
		jsr	sub_D5DD

loc_D87F:				; CODE XREF: ROM:D86Dj
		setb	bit1, SSD
		ld	#0DAh, SIDR_SODR ; Serial Input/Output Data Register
		ld	x, #0D854h
		clr	a
		tbbc	bit6, PORTB, loc_D88D ;	Port B Data Register
		or	a, #80h

loc_D88D:				; CODE XREF: ROM:D888j
		tbbc	bit0, PORTA, loc_D892 ;	Port A Data Register
		or	a, #20h

loc_D892:				; CODE XREF: ROM:loc_D88Dj
		tbbc	bit7, PORTB, loc_D897 ;	Port B Data Register
		or	a, #10h

loc_D897:				; CODE XREF: ROM:loc_D892j
		tbbs	bit6, PORTA, loc_D89C ;	Port A Data Register
		or	a, #40h

loc_D89C:				; CODE XREF: ROM:loc_D897j
		tbbc	bit4, PBCS, loc_D8A1 ; Port B Control Register
		or	a, #08h

loc_D8A1:				; CODE XREF: ROM:loc_D89Cj
		xor	a, #00h
		ld	y, #004Eh
		tbbc	bit5, DOUT, loc_D8AA ; DOUT Data Register
		inc	x

loc_D8AA:				; CODE XREF: ROM:D8A6j
		jsr	sub_D5DD
		ld	a, unk_4E
		and	a, #0F8h
		ld	b, unk_F8
		cmpb	b, #10h
		beq	loc_D8B9
		or	a, #01h

loc_D8B9:				; CODE XREF: ROM:D8B5j
		cmpb	b, #40h
		beq	loc_D8BF
		or	a, #02h

loc_D8BF:				; CODE XREF: ROM:D8BBj
		cmpb	b, #80h
		beq	loc_D8C5
		or	a, #04h

loc_D8C5:				; CODE XREF: ROM:D8C1j
		st	a, unk_4E
		ld	a, #08h

loc_D8C9:				; CODE XREF: ROM:D8CAj
		dec	a
		bne	loc_D8C9
		tbbc	bit7, SSD, loc_D8EE+1 ;	Serial Status Data Register
		tbbs	bit6, SSD, loc_D8EE+1 ;	Serial Status Data Register
		ld	a, SSD		; Serial Status	Data Register
		ld	b, SIDR_SODR	; Serial Input/Output Data Register
		and	a, #01h
		shl	d
		cmp	d, #003Eh
		bne	loc_D8E1
		ld	d, #0FFDCh

loc_D8E1:				; CODE XREF: ROM:D8DCj
		mov	d, x
		ld	d, x + 00h
		clrb	bit1, SSD
		st	a, SIDR_SODR	; Serial Input/Output Data Register
		clrb	bit1, SSD
		clrb	bit1, SSD
		st	b, SIDR_SODR	; Serial Input/Output Data Register

loc_D8EE:				; CODE XREF: ROM:D8CCj	ROM:D8CFj
		cmp	x, #0DA06h
		setb	bit3, DOUT
		jsr	loc_F37D
		jsr	loc_F3B2
; START	OF FUNCTION CHUNK FOR sub_D856

locret_D8F9:				; CODE XREF: sub_D856+4j
		ret
; END OF FUNCTION CHUNK	FOR sub_D856
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_D8FA:				; CODE XREF: __RESET+126j
		clr	b
		tbbs	bit6, unk_4E, loc_D91B
		ld	x, #0D511h
		ld	a, unk_F5

loc_D903:				; CODE XREF: __RESET+1DFj
		cmp	a, x + 00h
		ble	loc_D90B
		inc	b
		inc	x
		bra	loc_D903
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D90B:				; CODE XREF: __RESET+1DBj
		ld	a, unk_5E
		sub	a, b
		beq	loc_D91D
		bcs	loc_D91B
		ld	a, x + 00h
		sub	a, #02h
		cmp	a, unk_F5
		bgt	loc_D91B
		inc	b

loc_D91B:				; CODE XREF: __RESET+1D1j __RESET+1E6j ...
		st	b, unk_5E

loc_D91D:				; CODE XREF: __RESET+1E4j
		mov	b, a
		cmp	a, #0Ah
		ble	loc_D929
		inc	a
		cmp	a, #0Ch
		beq	loc_D929
		ld	a, #0Eh

loc_D929:				; CODE XREF: __RESET+1F6j __RESET+1FBj
		shr	a
		st	a, unk_5D
		ld	x, #0D51Eh
		add	x, a
		ld	b, x + 00h
		cmp	#0A5h, unk_7F
		bne	loc_D97F
		tbbs	bit7, unk_4F, loc_D951
		tbbc	bit2, PORTA, loc_D946 ;	Port A Data Register
		ld	b, unk_6E
		tbbs	bit3, PORTA, loc_D94D ;	Port A Data Register
		ld	b, unk_61
		bra	loc_D94D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D946:				; CODE XREF: __RESET+210j
		ld	b, unk_60
		tbbs	bit3, PORTA, loc_D94D ;	Port A Data Register
		ld	b, unk_70

loc_D94D:				; CODE XREF: __RESET+215j __RESET+21Aj ...
		and	b, #38h
		bra	loc_D97F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D951:				; CODE XREF: __RESET+20Dj
		tbbs	bit5, unk_4F, loc_D96D
		ld	a, PORTC	; Port C Data Register
		and	a, #03h
		ld	b, #08h
		tbbs	bit6, unk_4F, loc_D965
		cmp	a, #02h
		beq	loc_D97F
		ld	b, #10h
		bra	loc_D97F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D965:				; CODE XREF: __RESET+230j
		cmp	a, #01h
		beq	loc_D97F
		ld	b, #20h
		bra	loc_D97F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D96D:				; CODE XREF: __RESET:loc_D951j
		tbbs	bit6, unk_4F, loc_D979
		ld	b, #18h
		tbbs	bit7, unk_4E, loc_D97F
		ld	b, #30h
		bra	loc_D97F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D979:				; CODE XREF: __RESET:loc_D96Dj
		ld	b, #38h
		tbbs	bit1, unk_4F, loc_D97F
		clr	b

loc_D97F:				; CODE XREF: __RESET+20Bj __RESET+225j ...
		ld	a, PORTB	; Port B Data Register
		and	a, #0C7h
		add	a, b
		st	a, PORTB	; Port B Data Register
		tbbs	bit6, unk_4A, loc_D996
		ld	d, #493Eh
		ld	x, unk_11E
		cmp	x, #0271h
		ble	loc_D9AE
		bra	loc_D9A1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D996:				; CODE XREF: __RESET+25Cj
		ld	d, #36EFh
		ld	x, unk_116
		cmp	x, #01D5h
		ble	loc_D9AE

loc_D9A1:				; CODE XREF: __RESET+26Aj
		cmp	x, #0FFFFh
		beq	loc_D9B1+1
		jsr	sub_D589
		shl	d
		shl	d
		shl	d
		bra	loc_D9B4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D9AE:				; CODE XREF: __RESET+268j __RESET+275j
		ld	d, #0F000h

loc_D9B1:				; CODE XREF: __RESET+27Aj
		cmp	x, #5253h

loc_D9B4:				; CODE XREF: __RESET+282j
		st	d, unk_6E
		clr	a
		cmp	#0Eh, unk_A2
		bcs	loc_D9C9
		ld	y, #0122h
		ld	b, #08h

loc_D9C1:				; CODE XREF: __RESET+299j
		st	a, [y]
		dec	b
		bne	loc_D9C1
		st	a, unk_DF
		bra	loc_D9DB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D9C9:				; CODE XREF: __RESET+290j __RESET+2AFj
		ld	b, unk_DF
		beq	loc_D9DB
		ld	x, #0122h
		jsr	sub_D9E2
		push	b
		ld	b, unk_DF
		cmp	b, unk_54
		pull	b
		bne	loc_D9C9

loc_D9DB:				; CODE XREF: __RESET+29Dj __RESET+2A1j
		and	b, #0F0h
		st	d, unk_70
		jmp	loc_DAA0
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D9E2:				; CODE XREF: __RESET+2A6p
		st	b, unk_54
		ld	y, #0056h
		clr	y + 00h
		clr	y + 01h
		clr	y + 02h
		cmp	b, #01h
		bne	loc_D9FD
		ld	d, x + 00h
		st	d, y + 01h
		shl	x
		st	a, [y]
		rolc	y + 01h
		rolc	y + 00h
		bra	loc_DA0B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D9FD:				; CODE XREF: sub_D9E2+Dj
		cmp	b, #02h
		bne	loc_DA13
		ld	d, x + 00h
		add	d, x + 02h
		st	d, y + 01h
		bcc	loc_DA0B
		inc	y + 00h

loc_DA0B:				; CODE XREF: sub_D9E2+19j sub_D9E2+25j
		shl	x
		st	a, [y]
		rolc	y + 01h
		rolc	y + 00h
		bra	loc_DA5A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DA13:				; CODE XREF: sub_D9E2+1Dj
		cmp	b, #03h
		bne	loc_DA49

loc_DA17:				; CODE XREF: sub_D9E2+44j
		ld	d, x + 00h
		add	d, y + 01h
		st	d, y + 01h
		bcc	loc_DA21
		inc	y + 00h

loc_DA21:				; CODE XREF: sub_D9E2+3Bj
		inc	x
		inc	x
		cmp	x, #0126h
		ble	loc_DA17
		shl	x
		st	a, [y]
		rolc	y + 01h
		rolc	y + 00h
		shl	x
		st	a, [y]
		rolc	y + 01h
		rolc	y + 00h
		clr	a
		ld	b, y + 00h
		div	d, #03h
		st	b, y + 00h
		ld	b, y + 01h
		div	d, #03h
		st	b, y + 01h
		ld	b, y + 02h
		div	d, #03h
		st	b, y + 02h
		bra	loc_DA5A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DA49:				; CODE XREF: sub_D9E2+33j sub_D9E2+76j
		ld	d, x + 00h
		add	d, y + 01h
		st	d, y + 01h
		bcc	loc_DA53
		inc	y + 00h

loc_DA53:				; CODE XREF: sub_D9E2+6Dj
		inc	x
		inc	x
		cmp	x, #0128h
		ble	loc_DA49

loc_DA5A:				; CODE XREF: sub_D9E2+2Fj sub_D9E2+65j
		ld	a, y + 00h
		bne	loc_DA76
		ld	d, y + 01h
		cmp	d, #0683h
		bcc	loc_DA6A
		ld	d, #0B400h
		bra	locret_DA9F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DA6A:				; CODE XREF: sub_D9E2+81j
		shr	d
		shr	d
		shr	d
		mov	d, x
		ld	d, #927Ch
		jsr	sub_D589
		bra	locret_DA9F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DA76:				; CODE XREF: sub_D9E2+7Aj
		cmp	a, #01h
		bne	loc_DA8C
		ld	d, y + 01h
		shr	x
		addc	a, #14h
		rorc	b
		mov	d, x
		ld	d, #493Eh
		jsr	sub_D589
		shl	d
		shl	d
		shl	d
		bra	locret_DA9F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DA8C:				; CODE XREF: sub_D9E2+96j
		ld	d, y + 01h
		shr	x
		addc	a, #14h
		rorc	b
		shr	x
		addc	a, #14h
		rorc	b
		mov	d, x
		ld	d, #493Eh
		jsr	sub_D589
		shl	d
		shl	d

locret_DA9F:				; CODE XREF: sub_D9E2+86j sub_D9E2+92j ...
		ret
; End of function sub_D9E2

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_DAA0:				; CODE XREF: __RESET+2B5j
		cmp	#56h, unk_C2
		bcc	loc_DAAF+1
		ld	d, unk_116
		ld	x, #0AC78h
		bsr	sub_DAEA
		st	b, unk_61

loc_DAAF:				; CODE XREF: __RESET+379j
		cmp	x, #6114h
		cmp	#1Dh, unk_C3
		bcc	loc_DAC1+1
		ld	d, unk_11E
		ld	x, #0E5F6h
		bsr	sub_DAEA
		st	b, unk_60

loc_DAC1:				; CODE XREF: __RESET+38Bj
		cmp	x, #6114h
		bra	loc_DB06
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_DAC6:				; CODE XREF: __RESET+72p
		clr	unk_61
		ld	d, #0FFFFh
		st	d, unk_110
		st	d, unk_112
		st	d, unk_114
		st	d, unk_116
		ret
; End of function sub_DAC6


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_DAD8:				; CODE XREF: __RESET+75p
		clr	unk_60
		ld	d, #0FFFFh
		st	d, unk_118
		st	d, unk_11A
		st	d, unk_11C
		st	d, unk_11E
		ret
; End of function sub_DAD8


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_DAEA:				; CODE XREF: __RESET+381p __RESET+393p
		shr	d
		shr	d
		st	d, unk_52
		mov	x, d

loc_DAEF:				; CODE XREF: sub_DAEA+Fj
		cmp	#00h, unk_52
		beq	loc_DAFB
		shr	d
		shr	unk_52
		rorc	unk_53
		bra	loc_DAEF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DAFB:				; CODE XREF: sub_DAEA+8j
		div	d, unk_53
		bcs	loc_DB03
		cmp	b, #0FFh
		bne	locret_DB05

loc_DB03:				; CODE XREF: sub_DAEA+13j
		ld	b, #0FEh

locret_DB05:				; CODE XREF: sub_DAEA+17j
		ret
; End of function sub_DAEA

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_DB06:				; CODE XREF: __RESET+39Aj
		ld	a, unk_60
		tbbs	bit3, unk_4A, loc_DB0E
		tbbc	bit0, unk_45, loc_DB1A

loc_DB0E:				; CODE XREF: __RESET+3DEj
		setb	bit0, unk_45
		tbbs	bit2, unk_4A, loc_DB17
		ld	a, unk_61
		bra	loc_DB1A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DB17:				; CODE XREF: __RESET+3E6j
		clrb	bit0, unk_45
		clr	a

loc_DB1A:				; CODE XREF: __RESET+3E1j __RESET+3EBj
		st	a, unk_100
		ld	a, unk_60
		tbbs	bit3, unk_4A, loc_DB25
		tbbc	bit6, unk_4A, loc_DB2C

loc_DB25:				; CODE XREF: __RESET+3F5j
		setb	bit6, unk_4A
		tbbs	bit2, unk_4A, loc_DB2F
		ld	a, unk_61

loc_DB2C:				; CODE XREF: __RESET+3F8j
		cmpz	a
		bne	loc_DB36

loc_DB2F:				; CODE XREF: __RESET+3FDj
		clr	a
		clrb	bit3, unk_4A
		clrb	bit2, unk_4A
		clrb	bit6, unk_4A

loc_DB36:				; CODE XREF: __RESET+403j
		st	a, unk_62
		cmp	#0Dh, unk_A3
		tbbc	bit6, unk_4A, loc_DB41
		cmp	#13h, unk_C2

loc_DB41:				; CODE XREF: __RESET+411j
		bcs	loc_DB44
		clr	a

loc_DB44:				; CODE XREF: __RESET:loc_DB41j
		st	a, unk_5F
		ld	a, unk_F6
		cmp	a, #8Dh
		bcs	loc_DB4E
		setb	bit7, unk_48

loc_DB4E:				; CODE XREF: __RESET+420j
		cmp	a, #86h
		bgt	loc_DB54
		clrb	bit7, unk_48

loc_DB54:				; CODE XREF: __RESET+426j
		ld	a, unk_F7
		cmp	a, #0CEh
		bcc	loc_DB5C
		clrb	bit6, unk_48

loc_DB5C:				; CODE XREF: __RESET+42Ej
		cmp	a, #0D2h
		ble	loc_DB62
		setb	bit6, unk_48

loc_DB62:				; CODE XREF: __RESET+434j
		tbbc	bit6, unk_48, loc_DB6A+1
		tbbc	bit7, unk_48, loc_DB6A+1
		clrb	bit0, unk_43

loc_DB6A:				; CODE XREF: __RESET:loc_DB62j
					; __RESET+43Bj
		cmp	x, #7713h
		tbbs	bit3, unk_4F, loc_DB85+1
		tbbc	bit0, unk_46, loc_DB7A
		cmp	#55h, unk_A6
		ble	loc_DB8F
		clrb	bit0, unk_46

loc_DB7A:				; CODE XREF: __RESET+446j
		tbbs	bit2, unk_4F, loc_DB8A+1
		tbbc	bit1, unk_46, loc_DB8D
		cmp	#18h, unk_A6
		ble	loc_DB8F

loc_DB85:				; CODE XREF: __RESET+443j
		cmp	x, #7716h
		clrb	bit1, unk_46

loc_DB8A:				; CODE XREF: __RESET:loc_DB7Aj
		cmp	x, #7736h

loc_DB8D:				; CODE XREF: __RESET+453j
		clr	unk_A6

loc_DB8F:				; CODE XREF: __RESET+44Cj __RESET+459j
		tbbc	bit5, unk_4F, loc_DB99+1
		cmp	#01h, unk_EC
		bne	loc_DB99+1
		setb	bit2, unk_46

loc_DB99:				; CODE XREF: __RESET:loc_DB8Fj
					; __RESET+46Bj
		cmp	x, #7556h
		cmp	#06h, unk_F0
		bcc	loc_DBA3
		setb	bit3, unk_41

loc_DBA3:				; CODE XREF: __RESET+475j
		cmp	#08h, unk_F0
		bcs	loc_DBB3
		tbbc	bit3, unk_41, loc_DBB3
		setb	bit5, unk_42
		setb	bit6, unk_42
		setb	bit7, unk_42
		clrb	bit3, unk_41

loc_DBB3:				; CODE XREF: __RESET+47Cj __RESET+47Ej
		ld	a, unk_F7
		cmp	a, #0D2h
		bcc	loc_DBCD
		cmp	a, #0B3h
		bcc	loc_DBCF
		cmp	#2Dh, unk_62
		bcc	loc_DBCF
		cmp	a, #0A9h
		bcc	loc_DBD1
		cmp	#28h, unk_62
		bcc	loc_DBD1
		bra	loc_DBD3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DBCD:				; CODE XREF: __RESET+48Dj
		clrb	bit7, unk_42

loc_DBCF:				; CODE XREF: __RESET+491j __RESET+496j
		clrb	bit6, unk_42

loc_DBD1:				; CODE XREF: __RESET+49Aj __RESET+49Fj
		clrb	bit5, unk_42

loc_DBD3:				; CODE XREF: __RESET+4A1j
		bra	loc_DC11
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_DBD5:				; CODE XREF: sub_F695+86p
		tbbs	bit7, PORTB, loc_DBDF ;	Port B Data Register
		tbbc	bit0, unk_47, loc_DBFE
		clrb	bit0, unk_47
		bra	loc_DBE3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DBDF:				; CODE XREF: sub_DBD5j
		tbs	bit0, unk_47
		bne	loc_DBFE

loc_DBE3:				; CODE XREF: sub_DBD5+8j
		ld	a, unk_A9
		clr	unk_A9
		cmp	a, #04h
		bcs	loc_DC0D
		cmp	a, #08h
		bgt	loc_DC0D
		ld	b, unk_EB
		bmi	loc_DBF6
		inc	b
		st	b, unk_EB

loc_DBF6:				; CODE XREF: sub_DBD5+1Cj
		cmp	b, #07h
		bcs	locret_DC10
		ld	b, #02h
		st	b, unk_EC

loc_DBFE:				; CODE XREF: sub_DBD5+3j sub_DBD5+Cj
		ld	b, unk_A9
		cmp	b, #0Ch
		bcs	locret_DC10
		ld	a, #01h
		tbbs	bit0, unk_47, loc_DC0B
		ld	a, #00h

loc_DC0B:				; CODE XREF: sub_DBD5+31j
		st	a, unk_EC

loc_DC0D:				; CODE XREF: sub_DBD5+14j sub_DBD5+18j
		clr	b
		st	b, unk_EB

locret_DC10:				; CODE XREF: sub_DBD5+23j sub_DBD5+2Dj
		ret
; End of function sub_DBD5

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_DC11:				; CODE XREF: __RESET:loc_DBD3j
		tbbs	bit0, unk_46, loc_DC48
		tbbs	bit1, unk_46, loc_DC48
		ld	a, unk_5D
		bne	loc_DC28
		tbbc	bit6, unk_4E, loc_DC25
		tbbc	bit7, unk_4F, loc_DC4A
		setb	bit3, unk_4D
		bra	loc_DC4A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DC25:				; CODE XREF: __RESET+4F1j
		tbbs	bit7, unk_4F, loc_DC4A

loc_DC28:				; CODE XREF: __RESET+4EFj
		ld	a, unk_4D
		and	a, #03h
		cmp	a, #01h
		bne	loc_DC48
		tbbc	bit3, unk_4D, loc_DC4A
		setb	bit4, unk_4D
		ld	x, #0D15Eh

loc_DC38:				; CODE XREF: __RESET+516j
		ld	a, x + 00h
		cmp	a, unk_5E
		bgt	loc_DC42
		inc	x
		inc	x
		bra	loc_DC38
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DC42:				; CODE XREF: __RESET+512j
		ld	a, x + 01h
		cmp	a, unk_A8
		bgt	loc_DC4F

loc_DC48:				; CODE XREF: __RESET:loc_DC11j
					; __RESET+4EAj	...
		clrb	bit3, unk_4D

loc_DC4A:				; CODE XREF: __RESET+4F4j __RESET+4F9j ...
		clr	a
		st	a, unk_A8
		clrb	bit4, unk_4D

loc_DC4F:				; CODE XREF: __RESET+51Cj
		bra	loc_DC6D
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_DC51:				; CODE XREF: __RESET+72Cp __RESET+743p
		tbbc	bit3, unk_4D, locret_DC6C
		tbbc	bit4, unk_4D, loc_DC5B
		ld	a, #0FFh
		bra	locret_DC6C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DC5B:				; CODE XREF: sub_DC51+3j
		st	a, unk_52
		ld	a, unk_4D
		and	a, #03h
		cmp	a, x + 00h
		beq	loc_DC69+1
		inc	x
		add	x, a
		ld	a, x + 00h

loc_DC69:				; CODE XREF: sub_DC51+12j
		cmp	x, #0DA52h

locret_DC6C:				; CODE XREF: sub_DC51j	sub_DC51+8j
		ret
; End of function sub_DC51

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_DC6D:				; CODE XREF: __RESET:loc_DC4Fj
		ld	d, unk_6E
		shl	d
		bcc	loc_DC74
		ld	a, #0FFh

loc_DC74:				; CODE XREF: __RESET+546j
		st	a, unk_53
		ld	b, unk_64
		and	b, #03h
		st	b, unk_52
		tbbc	bit6, unk_46, loc_DC95
		cmp	b, #02h
		beq	loc_DC93
		cmp	b, #00h
		beq	loc_DC93
		ld	b, unk_53
		ld	y, #0D02Fh
		jsr	sub_D62F
		cmp	a, unk_BF
		bgt	loc_DC95

loc_DC93:				; CODE XREF: __RESET+557j __RESET+55Bj
		clrb	bit6, unk_46

loc_DC95:				; CODE XREF: __RESET+552j __RESET+567j
		tbbc	bit7, unk_46, loc_DCAB
		cmp	#00h, unk_52
		beq	loc_DCA9
		ld	b, unk_53
		ld	y, #0D038h
		jsr	sub_D62F
		cmp	a, unk_C0
		bgt	loc_DCAB

loc_DCA9:				; CODE XREF: __RESET+571j
		clrb	bit7, unk_46

loc_DCAB:				; CODE XREF: __RESET:loc_DC95j
					; __RESET+57Dj
		cmp	#04h, unk_5E
		bcc	loc_DCBF+1
		tbs	bit0, unk_41
		bne	loc_DCC2
		cmp	#0FFh, unk_BA
		bne	loc_DCBC
		ld	#0EDh, unk_BA

loc_DCBC:				; CODE XREF: __RESET+58Dj
		ld	#0FFh, unk_67

loc_DCBF:				; CODE XREF: __RESET+584j
		cmp	x, #7511h

loc_DCC2:				; CODE XREF: __RESET+588j
		tbbc	bit6, unk_4E, loc_DCCB+1
		tbs	bit1, unk_41
		bne	loc_DCCE
		clr	unk_BD

loc_DCCB:				; CODE XREF: __RESET:loc_DCC2j
		cmp	x, #7531h

loc_DCCE:				; CODE XREF: __RESET+59Dj
		cmp	#22h, unk_AA
		bcc	loc_DCE5

loc_DCD3:				; CODE XREF: __RESET+5C0j
		ld	a, unk_4D
		and	a, #03h
		bne	loc_DCDC
		jmp	loc_DDBD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DCDC:				; CODE XREF: __RESET+5ADj
		clr	unk_4D
		ld	b, unk_64
		and	b, #0FCh
		jmp	loc_DDB9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DCE5:				; CODE XREF: __RESET+5A7j
		ld	a, unk_108
		cmpb	a, #20h
		bne	loc_DCD3
		tbbc	bit4, unk_4F, loc_DCF1
		setb	bit1, unk_42

loc_DCF1:				; CODE XREF: __RESET+5C2j
		tbbs	bit0, unk_42, loc_DD20
		tbbc	bit5, unk_4A, loc_DCF9+1
		setb	bit3, unk_48

loc_DCF9:				; CODE XREF: __RESET+5CAj
		cmp	x, #7578h
		tbbs	bit0, unk_4F, loc_DD4F
		cmp	#7Ah, unk_C8
		bcs	loc_DD11
		cmp	#09h, unk_5F
		bgt	loc_DD5E
		ld	a, unk_E5
		cmpb	a, #04h
		beq	loc_DD5E
		clr	unk_C8

loc_DD11:				; CODE XREF: __RESET+5D8j
		tbbs	bit6, unk_4E, loc_DD5E
		tbbs	bit5, unk_4A, loc_DD64
		cmp	#2Ch, unk_70
		bcs	loc_DD5E
		setb	bit3, unk_48
		setb	bit0, unk_42

loc_DD20:				; CODE XREF: __RESET:loc_DCF1j
		tbbs	bit5, unk_4A, loc_DD69
		ld	a, unk_C8
		cmp	a, #12h
		bcs	loc_DD2B
		setb	bit5, unk_4D

loc_DD2B:				; CODE XREF: __RESET+5FDj
		cmp	a, #7Ah
		bcc	loc_DD4D
		tbbs	bit0, unk_4F, loc_DD4D
		clr	a
		tbbc	bit1, unk_42, loc_DD38
		ld	a, #04h

loc_DD38:				; CODE XREF: __RESET+609j
		jsr	sub_E4A1
		tbbs	bit1, unk_42, loc_DD42
		add	a, #14h
		bra	loc_DD44
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DD42:				; CODE XREF: __RESET+611j
		add	a, #0Ch

loc_DD44:				; CODE XREF: __RESET+616j
		bcc	loc_DD49
		ld	d, #0FFFFh

loc_DD49:				; CODE XREF: __RESET:loc_DD44j
		cmp	d, unk_70
		ble	loc_DD75

loc_DD4D:				; CODE XREF: __RESET+603j __RESET+605j
		clrb	bit3, unk_48

loc_DD4F:				; CODE XREF: __RESET+5D2j __RESET+642j ...
		ld	#0FFh, unk_C8
		tbbc	bit5, unk_4D, loc_DD5C
		tbbs	bit1, unk_42, loc_DD5C
		setb	bit4, unk_48
		clr	unk_B0

loc_DD5C:				; CODE XREF: __RESET+628j __RESET+62Bj
		clrb	bit1, unk_42

loc_DD5E:				; CODE XREF: __RESET+5DDj __RESET+5E3j ...
		clrb	bit5, unk_4D
		clrb	bit0, unk_42
		bra	loc_DD75
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DD64:				; CODE XREF: __RESET+5EAj
		cmp	#2Eh, unk_F0
		bcs	loc_DD5E

loc_DD69:				; CODE XREF: __RESET:loc_DD20j
		cmp	#7Ah, unk_C8
		bcc	loc_DD4F
		tbbs	bit0, unk_4F, loc_DD4F
		setb	bit0, unk_42
		setb	bit5, unk_4D

loc_DD75:				; CODE XREF: __RESET+621j __RESET+638j
		tbbc	bit5, unk_4D, loc_DD92
		tbbs	bit1, unk_42, loc_DD92
		ld	a, unk_64
		mov	a, b
		and	a, #03h
		cmp	a, #03h
		beq	loc_DDBD
		ld	a, unk_4D
		and	a, #0FCh
		or	a, #03h
		st	a, unk_4D
		and	b, #0FCh
		or	b, #03h
		bra	loc_DDB9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DD92:				; CODE XREF: __RESET:loc_DD75j
					; __RESET+64Ej
		ld	b, unk_4D
		tbbc	bit4, unk_4F, loc_DDD1
		and	b, #0FCh
		or	b, #01h
		st	b, unk_4D
		tbbs	bit0, unk_4F, loc_DDC0
		cmp	#14h, unk_62
		bcc	loc_DDA8
		tbbc	bit4, unk_42, loc_DDC0

loc_DDA8:				; CODE XREF: __RESET+679j
		tbs	bit2, unk_42
		bne	loc_DDBD
		tbbs	bit3, unk_42, loc_DDC2
		tbs	bit4, unk_42
		bne	loc_DDBD
		ld	b, unk_64
		and	b, #0FCh
		or	b, #02h

loc_DDB9:				; CODE XREF: __RESET+5B8j __RESET+666j ...
		st	b, unk_64
		setb	bit7, unk_4D

loc_DDBD:				; CODE XREF: __RESET+5AFj __RESET+658j ...
		jmp	loc_E06A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DDC0:				; CODE XREF: __RESET+673j __RESET+67Bj
		setb	bit2, unk_42

loc_DDC2:				; CODE XREF: __RESET+682j
		setb	bit3, unk_42
		tbbs	bit4, unk_42, loc_DDDA
		ld	b, unk_64
		and	b, #03h
		cmp	b, #01h
		bne	loc_DDDF
		bra	loc_DDDA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DDD1:				; CODE XREF: __RESET+66Aj
		clrb	bit2, unk_42
		cmp	#14h, unk_62
		bcc	loc_DDDA
		clrb	bit3, unk_42

loc_DDDA:				; CODE XREF: __RESET+69Aj __RESET+6A5j ...
		tbbc	bit4, unk_42, loc_DDE7
		clrb	bit4, unk_42

loc_DDDF:				; CODE XREF: __RESET+6A3j
		ld	b, unk_64
		and	b, #0FCh
		or	b, #01h
		bra	loc_DDB9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DDE7:				; CODE XREF: __RESET:loc_DDDAj
		tbbs	bit2, unk_42, loc_DDBD
		ld	a, unk_4D
		and	a, #03h
		tbbc	bit5, unk_42, loc_DDFF
		cmp	a, #00h
		beq	loc_DDF9
		cmp	a, #02h
		bne	loc_DDFF

loc_DDF9:				; CODE XREF: __RESET+6C9j
		ld	#0FFh, unk_68
		jmp	loc_DF00
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DDFF:				; CODE XREF: __RESET+6C4j __RESET+6CDj
		tbbs	bit0, unk_46, loc_DE07
		tbbs	bit1, unk_46, loc_DE0D
		bra	loc_DE1F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DE07:				; CODE XREF: __RESET:loc_DDFFj
		ld	#0FFh, unk_68
		jmp	loc_DECF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DE0D:				; CODE XREF: __RESET+6D8j
		jmp	loc_DE83
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_DE10:				; CODE XREF: sub_F695+8Cp
		ld	a, unk_64
		and	a, #03h
		cmp	a, #02h
		bne	locret_DE1E
		inc	unk_68
		bne	locret_DE1E
		dec	unk_68

locret_DE1E:				; CODE XREF: sub_DE10+6j sub_DE10+Aj
		ret
; End of function sub_DE10

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_DE1F:				; CODE XREF: __RESET+6DBj
		tbbs	bit6, unk_42, loc_DE2A
		cmp	#00h, unk_EC
		beq	loc_DE2A
		tbbc	bit5, unk_4E, loc_DE4A

loc_DE2A:				; CODE XREF: __RESET:loc_DE1Fj
					; __RESET+6FBj
		cmp	a, #00h
		bne	loc_DE33
		clr	unk_68
		jmp	loc_DEFC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DE33:				; CODE XREF: __RESET+702j
		tbbc	bit5, unk_42, loc_DE46
		cmp	a, #02h
		bne	loc_DE40
		ld	#0FFh, unk_68
		jmp	loc_DF00
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DE40:				; CODE XREF: __RESET+70Ej
		cmp	a, #03h
		beq	loc_DE65
		bra	loc_DE4A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DE46:				; CODE XREF: __RESET:loc_DE33j
		cmp	a, #02h
		beq	loc_DE65

loc_DE4A:				; CODE XREF: __RESET+6FDj __RESET+71Aj
		cmp	a, #00h
		beq	loc_DE65

loc_DE4E:				; CODE XREF: __RESET:loc_DEC7j
		clrb	bit7, unk_40
		jsr	sub_E0C9
		ld	x, #0D154h
		jsr	sub_DC51
		cmp	a, unk_5F
		ble	loc_DE78
		ld	a, unk_4D
		and	a, #03h
		cmp	a, #01h
		beq	loc_DE81

loc_DE65:				; CODE XREF: __RESET+718j __RESET+71Ej ...
		setb	bit7, unk_40
		jsr	sub_E0C9
		ld	x, #0D159h
		jsr	sub_DC51
		cmp	a, unk_5F
		ble	loc_DE81
		cmp	b, #02h
		beq	loc_DE7B+1

loc_DE78:				; CODE XREF: __RESET+731j
		ld	#0FFh, unk_68

loc_DE7B:				; CODE XREF: __RESET+74Cj
		cmp	x, #7268h
		jmp	loc_DF08
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DE81:				; CODE XREF: __RESET+739j __RESET+748j
		bra	loc_DECD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DE83:				; CODE XREF: __RESET:loc_DE0Dj
		cmp	a, #00h
		bne	loc_DE92
		ld	b, unk_5F
		cmp	b, unk_D044
		bcs	loc_DE9D
		clr	unk_68
		bra	loc_DEFC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DE92:				; CODE XREF: __RESET+75Bj
		cmp	a, #02h
		bne	loc_DEBA
		ld	b, unk_5F
		cmp	b, unk_D044
		bcc	loc_DEA2

loc_DE9D:				; CODE XREF: __RESET+762j
		ld	#0FFh, unk_68
		bra	loc_DF00
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DEA2:				; CODE XREF: __RESET+771j
		cmp	b, unk_D045
		bcc	loc_DEAE
		cmp	#49h, unk_68
		bcs	loc_DECD
		bra	loc_DEB3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DEAE:				; CODE XREF: __RESET+77Bj
		cmp	#7Ah, unk_68
		bcs	loc_DECD

loc_DEB3:				; CODE XREF: __RESET+782j
		cmp	b, unk_D043
		bcs	loc_DF00
		bra	loc_DECD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DEBA:				; CODE XREF: __RESET+76Aj
		ld	#0FFh, unk_68
		cmp	a, #03h
		bne	loc_DEC7
		jmp	loc_DE65
; END OF FUNCTION CHUNK	FOR __RESET
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  03h
		.db 0DEh ; Þ
		.db  65h ; e
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_DEC7:				; CODE XREF: __RESET+795j
		jmp	loc_DE4E
; END OF FUNCTION CHUNK	FOR __RESET
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  03h
		.db 0DEh ; Þ
		.db  4Eh ; N
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_DECD:				; CODE XREF: __RESET:loc_DE81j
					; __RESET+780j	...
		bra	loc_DEF5
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DECF:				; CODE XREF: __RESET+6E0j
		cmp	a, #01h
		beq	loc_DEF5
		cmp	a, #03h
		bne	loc_DEE5
		cmp	#00h, unk_A5
		bcs	loc_DEF5
		ld	b, unk_5F
		cmp	b, unk_D041
		bcc	loc_DEF5
		bra	loc_DF04
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DEE5:				; CODE XREF: __RESET+7ABj
		cmp	a, #02h
		bne	loc_DEFC
		ld	b, unk_5F
		cmp	b, unk_D042
		bcc	loc_DEF5
		ld	#0FFh, unk_68
		bra	loc_DF00
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DEF5:				; CODE XREF: __RESET:loc_DECDj
					; __RESET+7A7j	...
		jmp	loc_DFA7
; END OF FUNCTION CHUNK	FOR __RESET
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db 0CBh ; Ë
		.db  43h ; C
		.db  40h ; @
		.db  0Ch
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_DEFC:				; CODE XREF: __RESET+706j __RESET+766j ...
		ld	b, #02h
		bra	loc_DF08
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DF00:				; CODE XREF: __RESET+6D2j __RESET+713j ...
		ld	b, #03h
		bra	loc_DF08
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DF04:				; CODE XREF: __RESET+7B9j
		ld	b, #01h
		bra	loc_DF08

loc_DF08:				; CODE XREF: __RESET+754j __RESET+7D4j ...
		and	b, #43h
		ld	a, unk_4D
		and	a, #0BCh
		add	a, b
		st	a, unk_4D
		and	b, #03h
		mov	b, a
		and	a, #03h
		ld	x, #0D013h
		clr	b
		clrb	bit2, unk_41
		tbbs	bit6, unk_4D, loc_DF29
		ld	b, #14h
		cmp	a, #02h
		bne	loc_DF50
		add	b, #02h
		bra	loc_DF50
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DF29:				; CODE XREF: __RESET+7F2j
		cmpz	a
		bne	loc_DF2E
		ld	b, #02h

loc_DF2E:				; CODE XREF: __RESET+800j
		tbbc	bit6, unk_4E, loc_DF3A

loc_DF31:				; CODE XREF: __RESET:loc_DF3Aj
		add	b, #10h
		ld	a, unk_EA
		shr	a
		st	a, unk_EA
		bra	loc_DF50
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DF3A:				; CODE XREF: __RESET:loc_DF2Ej
		tbbs	bit0, unk_41, loc_DF31
		ld	a, unk_EA
		setc
		rorc	a
		st	a, unk_EA
		shl	b
		tbbs	bit7, unk_41, loc_DF49
		add	b, #08h

loc_DF49:				; CODE XREF: __RESET+81Aj
		cmp	#08h, unk_5E
		bcs	loc_DF50
		add	b, #02h

loc_DF50:				; CODE XREF: __RESET+7F9j __RESET+7FDj ...
		add	x, b
		ld	a, x + 00h
		st	a, unk_65
		ld	a, x + 01h
		st	a, unk_66
		tbbs	bit6, unk_41, loc_DF73
		tbbc	bit4, unk_41, loc_DF73
		tbbs	bit0, unk_41, loc_DF80
		tbbc	bit6, unk_4D, loc_DF80
		ld	a, unk_66
		add	a, unk_BC
		bcc	loc_DF6D
		ld	a, #0FFh

loc_DF6D:				; CODE XREF: __RESET+83Fj
		st	a, unk_67
		ld	a, unk_BC
		bra	loc_DF86
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DF73:				; CODE XREF: __RESET+82Fj __RESET+832j
		clr	unk_BC
		setb	bit4, unk_41
		tbbs	bit7, unk_41, loc_DF90
		tbbs	bit0, unk_41, loc_DF80
		tbbs	bit6, unk_4D, loc_DF9B

loc_DF80:				; CODE XREF: __RESET+835j __RESET+838j ...
		ld	a, unk_66
		st	a, unk_67
		ld	a, unk_BE

loc_DF86:				; CODE XREF: __RESET+847j
		add	a, unk_65
		bcc	loc_DF8C
		ld	a, #0FFh

loc_DF8C:				; CODE XREF: __RESET+85Ej
		st	a, unk_B9
		bra	loc_DFA3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DF90:				; CODE XREF: __RESET+84Dj
		tbbc	bit6, unk_41, loc_DF9B
		ld	a, unk_66
		cmp	a, unk_67
		bcc	loc_DF9D
		bra	loc_DF9F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DF9B:				; CODE XREF: __RESET+853j
					; __RESET:loc_DF90j
		ld	a, unk_66

loc_DF9D:				; CODE XREF: __RESET+86Dj
		st	a, unk_67

loc_DF9F:				; CODE XREF: __RESET+86Fj
		ld	a, unk_65
		st	a, unk_B9

loc_DFA3:				; CODE XREF: __RESET+864j
		setb	bit5, unk_41
		clrb	bit6, unk_41

loc_DFA7:				; CODE XREF: __RESET:loc_DEF5j
		bra	loc_DFDD
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_DFA9:				; CODE XREF: __RESET:loc_DFDDp
		tbbc	bit4, unk_41, locret_DFDC
		tbbs	bit6, unk_4D, loc_DFB3
		clrb	bit4, unk_46
		bra	loc_DFD8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DFB3:				; CODE XREF: sub_DFA9+3j
		tbbc	bit6, unk_4E, locret_DFDC
		tbs	bit2, unk_41
		bne	locret_DFDC
		ld	a, unk_4D
		and	a, #03h
		cmp	a, #00h
		bne	loc_DFCC
		ld	b, unk_64
		and	b, #03h
		cmp	b, #02h
		beq	loc_DFCC
		ld	a, #01h

loc_DFCC:				; CODE XREF: sub_DFA9+17j sub_DFA9+1Fj
		ld	x, #0D02Bh
		add	x, a
		ld	a, x + 00h
		setb	bit4, unk_46
		add	a, unk_BD
		bcc	loc_DFDA

loc_DFD8:				; CODE XREF: sub_DFA9+8j
		ld	a, #0FFh

loc_DFDA:				; CODE XREF: sub_DFA9+2Dj
		st	a, unk_BB

locret_DFDC:				; CODE XREF: sub_DFA9j
					; sub_DFA9:loc_DFB3j ...
		ret
; End of function sub_DFA9

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_DFDD:				; CODE XREF: __RESET:loc_DFA7j
		bsr	sub_DFA9
		tbbc	bit4, unk_41, loc_E059
		tbbc	bit6, unk_4D, loc_DFF2
		cmp	#0FFh, unk_BA
		bne	loc_E059
		tbbc	bit6, unk_4E, loc_DFF2
		cmp	#0FFh, unk_BB
		bne	loc_E059

loc_DFF2:				; CODE XREF: __RESET+8B8j __RESET+8C0j
		cmp	#0FFh, unk_B9
		bne	loc_E059
		tbbc	bit4, unk_46, loc_DFFF+1
		tbbc	bit6, unk_4E, loc_DFFF+1
		setb	bit5, unk_46

loc_DFFF:				; CODE XREF: __RESET+8CDj __RESET+8D0j
		cmp	x, #75B6h
		ld	a, unk_4D
		jsr	sub_E487
		mov	a, b
		ld	a, unk_64
		jsr	sub_E487
		cmp	a, b
		bcc	loc_E035
		tbbs	bit5, unk_46, loc_E015
		inc	a
		mov	a, b

loc_E015:				; CODE XREF: __RESET+8E6j
		cmp	b, #02h
		bne	loc_E01F
		setb	bit6, unk_46
		clr	unk_BF
		bra	loc_E035
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E01F:				; CODE XREF: __RESET+8EDj
		cmp	b, #03h
		bne	loc_E02F
		tbbs	bit5, unk_46, loc_E029
		tbbs	bit6, unk_46, loc_E059

loc_E029:				; CODE XREF: __RESET+8F9j
		setb	bit7, unk_46
		clr	unk_C0
		bra	loc_E035
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E02F:				; CODE XREF: __RESET+8F7j
		tbbs	bit5, unk_46, loc_E035
		tbbs	bit7, unk_46, loc_E059

loc_E035:				; CODE XREF: __RESET+8E4j __RESET+8F3j ...
		ld	y, #0E494h
		dec	b
		add	y, b
		ld	b, y + 00h
		ld	a, unk_64
		and	a, #0FCh
		add	a, b
		st	a, unk_64
		setb	bit7, unk_4D
		clrb	bit4, unk_46
		clrb	bit2, unk_41
		ld	#0FFh, unk_BB
		and	a, #03h
		ld	b, unk_4D
		and	b, #03h
		cmp	a, b
		bne	loc_E059
		clrb	bit4, unk_41
		setb	bit6, unk_41

loc_E059:				; CODE XREF: __RESET+8B5j __RESET+8BEj ...
		tbbc	bit5, unk_41, loc_E06A
		cmp	#0FFh, unk_67
		beq	loc_E064
		tbbc	bit0, unk_41, loc_E06A

loc_E064:				; CODE XREF: __RESET+935j
		clrb	bit5, unk_41
		ld	a, #10h
		st	a, unk_E2

loc_E06A:				; CODE XREF: __RESET:loc_DDBDj
					; __RESET:loc_E059j ...
		ld	a, unk_64
		and	a, #03h
		cmp	a, #00h
		bne	loc_E074
		clr	unk_A5

loc_E074:				; CODE XREF: __RESET+946j
		tbbc	bit7, unk_4D, loc_E087
		clrb	bit7, unk_4D
		ld	a, #0FFh
		and	a, unk_12D
		st	a, unk_12D
		clr	unk_C1
		clr	a
		st	a, unk_12F

loc_E087:				; CODE XREF: __RESET:loc_E074j
		ld	a, unk_12F
		mov	a, b
		and	a, #03h
		shl	a
		shl	a
		st	a, unk_52
		and	b, #18h
		shr	b
		or	b, unk_52
		ld	a, unk_64
		and	a, #03h
		tbbs	bit4, unk_4F, loc_E0A9
		tbbs	bit0, unk_46, loc_E0A9
		add	a, b
		ld	x, #0D003h
		add	x, a
		ld	a, x + 00h
		bra	loc_E0B1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E0A9:				; CODE XREF: __RESET+970j __RESET+973j
		shr	b
		shr	b
		xor	b, #0FFh
		st	b, unk_52
		and	a, unk_52

loc_E0B1:				; CODE XREF: __RESET+97Dj
		and	a, #03h
		ld	b, unk_63
		and	b, #0FCh
		add	a, b
		st	a, unk_63
		mov	a, b
		xor	a, unk_134
		and	a, #03h
		beq	loc_E0C4
		clr	unk_B6

loc_E0C4:				; CODE XREF: __RESET+996j
		st	b, unk_134
		bra	loc_E107
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E0C9:				; CODE XREF: __RESET+726p __RESET+73Dp
		tbbc	bit0, unk_43, loc_E0D1
		ld	y, #0D0FAh
		bra	loc_E0DD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E0D1:				; CODE XREF: sub_E0C9j
		ld	y, #0D046h
		tbbs	bit1, unk_46, loc_E0DD
		tbbc	bit2, unk_46, loc_E0DD
		ld	y, #0D0A0h

loc_E0DD:				; CODE XREF: sub_E0C9+6j sub_E0C9+Bj ...
		tbbc	bit7, unk_40, loc_E0E3
		ld	b, #2Dh
		add	y, b

loc_E0E3:				; CODE XREF: sub_E0C9:loc_E0DDj
		ld	a, unk_4D
		jsr	sub_E487
		tbbc	bit7, unk_40, loc_E0EC
		dec	a

loc_E0EC:				; CODE XREF: sub_E0C9+1Fj
		dec	a
		mul	a, #0Fh
		add	y, b
		ld	a, y + 00h
		push	a
		inc	y
		ld	b, unk_5E
		cmp	b, #0Ch
		bcs	loc_E102
		tbbc	bit6, unk_4F, loc_E102
		tbbs	bit4, unk_4A, loc_E102
		ld	b, #0Dh

loc_E102:				; CODE XREF: sub_E0C9+2Fj sub_E0C9+31j ...
		add	y, b
		ld	a, y + 00h
		pull	b
		ret
; End of function sub_E0C9

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_E107:				; CODE XREF: __RESET+99Dj
		tbbc	bit4, unk_4F, loc_E10D
		clr	a
		st	a, unk_AF

loc_E10D:				; CODE XREF: __RESET:loc_E107j
		tbbc	bit6, unk_4E, loc_E112
		clr	unk_A7

loc_E112:				; CODE XREF: __RESET:loc_E10Dj
		cmp	#22h, unk_AA
		bcs	loc_E14D
		ld	a, unk_108
		cmpb	a, #20h
		bne	loc_E14D
		tbbs	bit4, unk_4F, loc_E14D
		tbbs	bit0, unk_46, loc_E14D
		tbbs	bit1, unk_46, loc_E14D
		tbbs	bit7, unk_42, loc_E14D
		ld	a, unk_EC
		cmp	a, #00h
		beq	loc_E14D
		cmp	a, #02h
		beq	loc_E139
		cmp	#7Ah, unk_A7
		bcs	loc_E14D

loc_E139:				; CODE XREF: __RESET+A08j
		tbbs	bit7, unk_4F, loc_E14D
		ld	a, unk_64
		and	a, #03h
		cmp	a, #01h
		beq	loc_E14D
		cmp	a, #03h
		beq	loc_E14D
		ld	b, unk_12F
		beq	loc_E14F

loc_E14D:				; CODE XREF: __RESET+9EBj __RESET+9F2j ...
		bra	loc_E18A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E14F:				; CODE XREF: __RESET+A21j
		tbbs	bit4, unk_41, loc_E18E
		tbbs	bit6, unk_41, loc_E18E
		ld	b, unk_E2
		ld	a, unk_64
		and	a, #03h
		cmp	a, #02h
		bne	loc_E164
		tbbs	bit5, unk_4E, loc_E169
		bra	loc_E175
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E164:				; CODE XREF: __RESET+A33j
		ld	y, #0D164h
		bra	loc_E16C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E169:				; CODE XREF: __RESET+A35j
		ld	y, #0D184h

loc_E16C:				; CODE XREF: __RESET+A3Dj
		jsr	sub_E334
		ld	b, unk_E2
		cmp	a, unk_5F
		ble	loc_E17D

loc_E175:				; CODE XREF: __RESET+A38j
		ld	a, #14h
		cmpb	b, #08h
		beq	loc_E18E
		bra	loc_E183
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E17D:				; CODE XREF: __RESET+A49j
		ld	a, #0Ah
		cmpb	b, #08h
		bne	loc_E18E

loc_E183:				; CODE XREF: __RESET+A51j
		st	a, unk_E2
		clr	b
		st	b, unk_6B
		bra	loc_E18E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E18A:				; CODE XREF: __RESET:loc_E14Dj
		ld	a, #10h
		st	a, unk_E2

loc_E18E:				; CODE XREF: __RESET:loc_E14Fj
					; __RESET+A28j	...
		jsr	sub_E2A8
		tbbs	bit1, unk_44, loc_E1AA
		tbbs	bit2, unk_44, loc_E1AA
		ld	a, unk_E2
		and	a, #07h
		beq	loc_E1A1
		tbs	bit0, unk_44
		bne	loc_E1AA

loc_E1A1:				; CODE XREF: __RESET+A71j
		shl	a
		ld	x, #0E1D1h
		add	x, a
		ld	x, x + 00h
		jsr	x + 00h

loc_E1AA:				; CODE XREF: __RESET+A67j __RESET+A6Aj ...
		ld	a, unk_6A
		cmp	a, #5Ah
		bcs	loc_E1B4
		setb	bit7, unk_41
		bra	loc_E1BA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E1B4:				; CODE XREF: __RESET+A84j
		cmp	a, #0Ah
		bgt	loc_E1BA
		clrb	bit7, unk_41

loc_E1BA:				; CODE XREF: __RESET+A88j __RESET+A8Cj
		tbbc	bit7, unk_41, loc_E1BF
		clr	unk_BE

loc_E1BF:				; CODE XREF: __RESET:loc_E1BAj
		ld	a, #32h
		tbbs	bit5, unk_4F, loc_E1CB
		ld	a, #00h
		tbbs	bit6, unk_4F, loc_E1CB
		ld	a, #64h

loc_E1CB:				; CODE XREF: __RESET+A97j __RESET+A9Cj
		st	a, unk_160
		jmp	loc_E2A5
; END OF FUNCTION CHUNK	FOR __RESET
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db 0E2h ; â
		.db  9Dh ; 
		.db 0E2h ; â
		.db  9Dh ; 
		.db 0E1h ; á
		.db 0E1h ; á
		.db 0E1h ; á
		.db 0E1h ; á
		.db 0E2h ; â
		.db  3Fh ; ?
		.db 0E2h ; â
		.db  3Fh ; ?
		.db 0E2h ; â
		.db  9Dh ; 
		.db 0E2h ; â
		.db 0A0h ;  
		.db  8Fh ; 
		.db 0D2h ; Ò
		.db 0CCh ; Ì
		.db  01h
		.db 0E3h ; ã
		.db  4Ah ; J
		.db 0DAh ; Ú
		.db 0E2h ; â
		.db 0CEh ; Î
		.db  01h
		.db  46h ; F
		.db  0Bh
		.db 0C6h ; Æ
		.db  01h
		.db  92h ; ’
		.db 0E2h ; â
		.db 0DDh ; Ý
		.db  6Ah ; j
		.db  43h ; C
		.db  02h
		.db  93h ; “
		.db  6Ah ; j
		.db  63h ; c
		.db  33h ; 3
		.db  64h ; d
		.db  5Ah ; Z
		.db  5Ah ; Z
		.db  8Fh ; 
		.db 0D2h ; Ò
		.db 0D8h ; Ø
		.db  01h
		.db 0E3h ; ã
		.db  5Ah ; Z
		.db 0CCh ; Ì
		.db  05h
		.db  44h ; D
		.db  02h
		.db 0CAh ; Ê
		.db  05h
		.db 0DCh ; Ü
		.db  6Ah ; j
		.db  43h ; C
		.db  02h
		.db  92h ; ’
		.db  6Ah ; j
		.db 0D4h ; Ô
		.db  5Ah ; Z
		.db  44h ; D
		.db  19h
		.db  54h ; T
		.db  93h ; “
		.db  5Ch ; \
		.db  5Bh ; [
		.db  52h ; R
		.db  95h ; •
		.db  5Ch ; \
		.db  93h ; “
		.db  5Bh ; [
		.db  53h ; S
		.db  95h ; •
		.db  5Ch ; \
		.db 0DAh ; Ú
		.db  5Bh ; [
		.db  97h ; —
		.db  6Ah ; j
		.db  45h ; E
		.db  07h
		.db 0DCh ; Ü
		.db  5Ah ; Z
		.db  44h ; D
		.db  03h
		.db  65h ; e
		.db  40h ; @
		.db  03h
		.db 0DAh ; Ú
		.db  5Ah ; Z
		.db  67h ; g
		.db  9Ah ; š
		.db  6Ah ; j
		.db  44h ; D
		.db  0Ch
		.db 0CAh ; Ê
		.db  64h ; d
		.db  92h ; ’
		.db  6Ah ; j
		.db 0DAh ; Ú
		.db 0E2h ; â
		.db 0C2h ; Â
		.db 0F8h ; ø
		.db 0C0h ; À
		.db  07h
		.db  92h ; ’
		.db 0E2h ; â
		.db  63h ; c
		.db  8Fh ; 
		.db 0D2h ; Ò
		.db 0D0h ; Ð
		.db  01h
		.db 0E3h ; ã
		.db  4Ah ; J
		.db 0DAh ; Ú
		.db 0E2h ; â
		.db 0CEh ; Î
		.db  01h
		.db  46h ; F
		.db  0Bh
		.db 0C6h ; Æ
		.db  01h
		.db  92h ; ’
		.db 0E2h ; â
		.db 0DDh ; Ý
		.db  6Ah ; j
		.db  44h ; D
		.db  02h
		.db  93h ; “
		.db  6Ah ; j
		.db  63h ; c
		.db  5Ah ; Z
		.db  8Fh ; 
		.db 0D2h ; Ò
		.db 0D4h ; Ô
		.db  01h
		.db 0E3h ; ã
		.db  4Ah ; J
		.db  93h ; “
		.db  5Ah ; Z
		.db  8Fh ; 
		.db 0D2h ; Ò
		.db 0E8h ; è
		.db  01h
		.db 0E3h ; ã
		.db  4Ah ; J
		.db 0CCh ; Ì
		.db  5Fh ; _
		.db  43h ; C
		.db  02h
		.db 0CAh ; Ê
		.db  5Fh ; _
		.db 0DCh ; Ü
		.db  6Ah ; j
		.db  44h ; D
		.db  02h
		.db  92h ; ’
		.db  6Ah ; j
		.db 0D4h ; Ô
		.db  5Ah ; Z
		.db  45h ; E
		.db  1Ah
		.db  93h ; “
		.db  5Ch ; \
		.db  5Bh ; [
		.db  52h ; R
		.db  95h ; •
		.db  5Ch ; \
		.db  93h ; “
		.db  5Bh ; [
		.db  53h ; S
		.db  95h ; •
		.db  5Ch ; \
		.db  93h ; “
		.db  5Ch ; \
		.db  96h ; –
		.db  6Ah ; j
		.db  98h ; ˜
		.db  5Bh ; [
		.db  43h ; C
		.db  07h
		.db 0DCh ; Ü
		.db  5Ah ; Z
		.db  45h ; E
		.db  03h
		.db  65h ; e
		.db  40h ; @
		.db  03h
		.db 0DAh ; Ú
		.db  5Ah ; Z
		.db  67h ; g
		.db  9Ah ; š
		.db  6Ah ; j
		.db  44h ; D
		.db  06h
		.db 0DAh ; Ú
		.db 0E2h ; â
		.db 0C2h ; Â
		.db 0F8h ; ø
		.db  92h ; ’
		.db 0E2h ; â
		.db  63h ; c
		.db  52h ; R
		.db  40h ; @
		.db  02h
		.db 0CAh ; Ê
		.db  64h ; d
		.db  92h ; ’
		.db  6Ah ; j
		.db  63h ; c
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_E2A5:				; CODE XREF: __RESET+AA4j
		jmp	loc_E369
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E2A8:				; CODE XREF: __RESET:loc_E18Ep
		tbbs	bit0, unk_4F, loc_E2C1
		ld	a, unk_E5
		cmpb	a, #04h
		beq	loc_E2C1
		tbbs	bit0, unk_42, loc_E2C1
		cmp	#09h, unk_62
		bgt	loc_E2C1
		cmp	#28h, unk_70
		bcc	loc_E2C1
		clr	a
		st	a, unk_D5

loc_E2C1:				; CODE XREF: sub_E2A8j	sub_E2A8+7j ...
		tbbs	bit0, unk_4F, loc_E2F9
		tbbs	bit4, unk_4F, loc_E2F9
		ld	a, unk_D5
		cmp	a, #4Ch
		bcc	loc_E2F9
		ld	a, unk_63
		and	a, #03h
		cmp	a, #01h
		bne	loc_E2F6
		cmp	#02h, unk_5E
		bcs	loc_E2F6
		tbbs	bit2, unk_44, loc_E2E0
		clr	a
		st	a, unk_B1

loc_E2E0:				; CODE XREF: sub_E2A8+32j
		ld	a, unk_B1
		cmp	a, #18h
		bcc	loc_E2EA
		ld	b, #00h
		bra	loc_E2F0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E2EA:				; CODE XREF: sub_E2A8+3Cj
		ld	y, #0D2ECh
		jsr	sub_E363

loc_E2F0:				; CODE XREF: sub_E2A8+40j
		st	b, unk_6A
		setb	bit2, unk_44
		bra	loc_E2FF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E2F6:				; CODE XREF: sub_E2A8+2Bj sub_E2A8+30j
		tbbc	bit2, unk_44, loc_E2FD

loc_E2F9:				; CODE XREF: sub_E2A8:loc_E2C1j
					; sub_E2A8+1Cj	...
		ld	a, #0FFh
		st	a, unk_D5

loc_E2FD:				; CODE XREF: sub_E2A8:loc_E2F6j
		clrb	bit2, unk_44

loc_E2FF:				; CODE XREF: sub_E2A8+4Cj
		tbbc	bit0, unk_4F, loc_E32D
		ld	a, unk_63
		and	a, #03h
		cmp	a, #01h
		bne	loc_E32D
		ld	a, unk_E5
		cmpb	a, #04h
		bne	loc_E319
		ld	a, unk_AF
		cmp	a, #18h
		bcs	loc_E32D
		clr	a
		st	a, unk_B2

loc_E319:				; CODE XREF: sub_E2A8+66j
		ld	a, unk_B2
		cmp	a, #49h
		bcc	loc_E32D
		ld	b, #64h
		cmp	a, #08h
		bcs	loc_E327
		ld	b, #28h

loc_E327:				; CODE XREF: sub_E2A8+7Bj
		st	b, unk_6A
		setb	bit1, unk_44
		bra	locret_E333
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E32D:				; CODE XREF: sub_E2A8:loc_E2FFj
					; sub_E2A8+60j	...
		ld	a, #0FFh
		st	a, unk_B2
		clrb	bit1, unk_44

locret_E333:				; CODE XREF: sub_E2A8+83j
		ret
; End of function sub_E2A8


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E334:				; CODE XREF: __RESET:loc_E16Cp
		clr	a
		cmpb	b, #08h
		beq	loc_E33B
		ld	a, #08h

loc_E33B:				; CODE XREF: sub_E334+3j
		tbbs	bit0, unk_43, loc_E343
		tbbc	bit2, unk_46, loc_E343
		add	a, #10h

loc_E343:				; CODE XREF: sub_E334:loc_E33Bj
					; sub_E334+Aj
		add	y, a
		ld	b, unk_5D
		add	y, b
		ld	a, y + 00h
		ret
; End of function sub_E334

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db 0DBh ; Û
		.db  64h ; d
		.db 0C3h ; Ã
		.db  03h
		.db  46h ; F
		.db  02h
		.db  1Dh
		.db  1Dh
		.db  79h ; y
		.db  0Ah
		.db  5Eh ; ^
		.db  45h ; E
		.db  0Fh
		.db  1Dh
		.db  40h ; @
		.db  0Ch
		.db 0DBh ; Û
		.db  64h ; d
		.db 0C3h ; Ã
		.db  03h
		.db  46h ; F
		.db  03h
		.db 0CBh ; Ë
		.db  08h
		.db  0Fh

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E363:				; CODE XREF: sub_E2A8+45p
		ld	b, unk_5D
		add	y, b
		ld	b, y + 00h
		ret
; End of function sub_E363

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_E369:				; CODE XREF: __RESET:loc_E2A5j
		ld	a, unk_63
		and	a, #03h
		di
		ld	b, PORTD_ASRIN	; Port D Data Register / ASR Input Data
		and	b, #0FCh
		add	a, b
		st	a, PORTD_ASRIN	; Port D Data Register / ASR Input Data
		ei
		ld	a, unk_E5
		and	a, #0FBh
		tbbc	bit0, unk_4F, loc_E37F
		or	a, #04h

loc_E37F:				; CODE XREF: __RESET+C50j
		st	a, unk_E5
		jsr	sub_D856
		jsr	sub_E4B8
		tbs	bit5, unk_40
		bne	loc_E38E
		jsr	sub_E573

loc_E38E:				; CODE XREF: __RESET+C5Fj
		tbs	bit2, unk_40
		bne	loc_E39D
		ld	x, #00C8h
		ld	a, #0Ch
		jsr	sub_D5FE
		jsr	sub_F584

loc_E39D:				; CODE XREF: __RESET+C66j
		jmp	loc_E74D
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E3A0:				; CODE XREF: sub_E4B8+24p sub_E4B8+7Cp ...
		ld	x, #0155h
		dec	a
		mul	a, #03h
		add	x, b
		ld	a, #0F0h
		and	a, x + 01h
		st	a, unk_55
		ld	a, #0Fh
		and	a, x + 01h
		st	a, unk_57
		ld	a, x + 02h
		st	a, unk_58
		ld	a, #0E0h
		and	a, x + 00h
		ld	b, unk_43
		and	b, #1Fh
		add	a, b
		st	a, unk_43
		ld	a, #0Ch
		and	a, x + 00h
		st	a, unk_54
		ld	a, #03h
		and	a, x + 00h
		st	a, unk_56
		ret
; End of function sub_E3A0


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E3CF:				; CODE XREF: sub_E4B8+5Ap sub_E4B8+B7p ...
		ld	x, #0155h
		dec	a
		mul	a, #03h
		add	x, b
		ld	a, unk_55
		or	a, unk_57
		st	a, x + 01h
		ld	a, unk_58
		st	a, x + 02h
		ld	a, unk_43
		and	a, #0E0h
		or	a, unk_54
		or	a, unk_56
		st	a, x + 00h
		ret
; End of function sub_E3CF


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E3EB:				; CODE XREF: sub_E63Fp	sub_E573+1ABp ...
		ld	a, unk_56
		beq	loc_E3F7
		cmp	a, #02h
		bne	loc_E3F5
		add	a, #02h

loc_E3F5:				; CODE XREF: sub_E3EB+6j
		add	a, #02h

loc_E3F7:				; CODE XREF: sub_E3EB+2j
		ld	y, #0D293h
		add	y, a
		ld	a, unk_6E
		cmp	a, y + 00h
		bcc	loc_E405
		ld	b, #00h
		bra	loc_E416
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E405:				; CODE XREF: sub_E3EB+14j
		cmp	a, y + 01h
		bcc	loc_E40D
		ld	b, #03h
		bra	loc_E416
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E40D:				; CODE XREF: sub_E3EB+1Cj
		cmp	a, y + 02h
		bcc	loc_E413+1
		ld	b, #06h

loc_E413:				; CODE XREF: sub_E3EB+24j
		cmp	x, #0CB09h

loc_E416:				; CODE XREF: sub_E3EB+18j sub_E3EB+20j
		add	x, b
		bra	sub_E45B
; End of function sub_E3EB


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E419:				; CODE XREF: sub_E5BF:loc_E5D6p
		ld	x, #0E42Eh
		bra	loc_E421
; End of function sub_E419


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E41E:				; CODE XREF: sub_E573+138p
					; __RESET+1619p ...
		ld	x, #0E432h

loc_E421:				; CODE XREF: sub_E419+3j
		cmp	#04h, unk_54
		bne	loc_E42A
		ld	x, x + 00h
		bra	sub_E466
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E42A:				; CODE XREF: sub_E41E+6j
		ld	x, x + 02h
		bra	sub_E45B
; End of function sub_E41E

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db 0D1h ; Ñ
		.db 0CDh ; Í
		.db 0D2h ; Ò
		.db  8Dh ; 
		.db 0D1h ; Ñ
		.db 0E9h ; é
		.db 0D2h ; Ò
		.db  90h ; 

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E436:				; CODE XREF: sub_E573:loc_E6C5p
					; sub_E573:loc_E725p ...
		tbbs	bit0, unk_4F, loc_E447
		tbbs	bit0, unk_43, loc_E447
		cmp	#0FAh, unk_F9
		bcc	loc_E447
		tbbs	bit0, unk_46, loc_E447
		tbbc	bit7, unk_43, loc_E449

loc_E447:				; CODE XREF: sub_E436j	sub_E436+3j ...
		clr	a
		ret
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E449:				; CODE XREF: sub_E436+Ej
		cmp	#04h, unk_54
		beq	loc_E456
		tbbs	bit5, unk_4A, loc_E447
		ld	x, #0D278h
		bra	loc_E459
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E456:				; CODE XREF: sub_E436+16j
		ld	x, #0D1AEh

loc_E459:				; CODE XREF: sub_E436+1Ej
		bra	sub_E466
; End of function sub_E436


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E45B:				; CODE XREF: sub_E3EB+2Cj sub_E41E+Ej	...
		ld	a, unk_56
		cmp	#04h, unk_54
		bne	loc_E463
		dec	a

loc_E463:				; CODE XREF: sub_E45B+5j
		add	x, a
		bra	loc_E482
; End of function sub_E45B


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E466:				; CODE XREF: sub_E41E+Aj
					; sub_E436:loc_E459j ...
		ld	a, unk_56
		cmp	#04h, unk_54
		bne	loc_E477
		cmp	a, #02h
		bne	loc_E476
		tbbc	bit6, unk_43, loc_E476
		ld	a, #04h

loc_E476:				; CODE XREF: sub_E466+9j sub_E466+Bj
		dec	a

loc_E477:				; CODE XREF: sub_E466+5j
		mul	a, #07h
		add	x, b
		ld	a, unk_5D
		sub	a, #01h
		bcc	loc_E481
		clr	a

loc_E481:				; CODE XREF: sub_E466+18j
		add	x, a

loc_E482:				; CODE XREF: sub_E45B+9j
		ld	a, x + 00h
		ret
; End of function sub_E466


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E485:				; CODE XREF: sub_E4B8p	__RESET+113Bp ...
		ld	a, unk_63
; End of function sub_E485


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E487:				; CODE XREF: __RESET+8DAp __RESET+8E0p ...
		and	a, #03h
		ld	x, #0E490h
		add	x, a
		ld	a, x + 00h
		ret
; End of function sub_E487

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  04h
		.db  01h
		.db  03h
		.db  02h
		.db  01h
		.db  03h
		.db  02h
		.db  00h

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E498:				; CODE XREF: __RESET+1632p
					; __RESET+1732p ...
		dec	a
; End of function sub_E498


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E499:				; CODE XREF: sub_E573+167p
		cmp	a, #03h
		bne	sub_E4A1
		clr	a
		clr	b
		bra	loc_E4B5
; End of function sub_E499


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E4A1:				; CODE XREF: __RESET:loc_DD38p
					; sub_E499+2j ...
		ld	y, unk_6E
		shl	a
		ld	x, #0D1A4h
		add	x, a
		ld	d, x + 00h
		jsr	sub_D553
		mov	y, d
		shl	d
		shl	d
		bcc	loc_E4B5
		ld	d, #0FFFFh

loc_E4B5:				; CODE XREF: sub_E499+6j sub_E4A1+Fj
		and	b, #0F0h
		ret
; End of function sub_E4A1


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E4B8:				; CODE XREF: __RESET+C5Ap
		bsr	sub_E485
		ld	b, unk_75
		st	b, unk_74
		st	a, unk_75
		cmp	a, unk_74
		bne	loc_E4C7
		jmp	locret_E572
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E4C7:				; CODE XREF: sub_E4B8+Aj
					; sub_E4B8:loc_E4C7j
		beq	loc_E4C7
		bcs	loc_E51F
		ld	a, unk_74
		inc	a
		st	a, unk_52

loc_E4D0:				; CODE XREF: sub_E4B8+65j
		cmp	#00h, unk_73
		bne	loc_E4DA
		ld	#10h, unk_55
		bra	loc_E4F3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E4DA:				; CODE XREF: sub_E4B8+1Bj
		ld	a, unk_73
		jsr	sub_E3A0
		cmp	#04h, unk_54
		bne	loc_E4F0
		cmp	#03h, unk_73
		bcc	loc_E4EB
		inc	unk_73

loc_E4EB:				; CODE XREF: sub_E4B8+2Fj
		ld	#10h, unk_55
		bra	loc_E4F9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E4F0:				; CODE XREF: sub_E4B8+2Aj
		ld	#20h, unk_55

loc_E4F3:				; CODE XREF: sub_E4B8+20j
		ld	#01h, unk_73
		ld	#01h, unk_72

loc_E4F9:				; CODE XREF: sub_E4B8+36j
		ld	#04h, unk_54
		ld	a, unk_52
		dec	a
		st	a, unk_56
		ld	a, unk_43
		and	a, #1Fh
		st	a, unk_43
		tbbc	bit2, unk_48, loc_E50C
		setb	bit6, unk_43

loc_E50C:				; CODE XREF: sub_E4B8+4Fj
		clr	unk_58
		clr	unk_57
		ld	a, unk_73
		jsr	sub_E3CF
		ld	a, unk_52
		cmp	a, unk_75
		bcc	locret_E572
		inc	unk_52
		bra	loc_E4D0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E51F:				; CODE XREF: sub_E4B8+11j
		cmp	#00h, unk_73
		bne	loc_E532

loc_E524:				; CODE XREF: sub_E4B8+97j
		ld	#01h, unk_73
		ld	#01h, unk_72
		ld	a, unk_43
		and	a, #1Fh
		st	a, unk_43
		bra	loc_E55E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E532:				; CODE XREF: sub_E4B8+6Aj
		ld	a, unk_73
		jsr	sub_E3A0
		cmp	#04h, unk_54
		bne	loc_E54C
		ld	#01h, unk_73
		ld	#01h, unk_72
		ld	a, unk_43
		and	a, #1Fh
		st	a, unk_43
		setb	bit7, unk_43
		bra	loc_E55E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E54C:				; CODE XREF: sub_E4B8+82j
		cmp	#10h, unk_55
		beq	loc_E524
		ld	a, unk_43
		and	a, #1Fh
		st	a, unk_43
		cmp	#03h, unk_73
		bcc	loc_E55E
		inc	unk_73

loc_E55E:				; CODE XREF: sub_E4B8+78j sub_E4B8+92j ...
		ld	#08h, unk_54
		ld	#10h, unk_55
		clr	unk_57
		clr	unk_58
		ld	a, unk_75
		dec	a
		st	a, unk_56
		ld	a, unk_73
		jsr	sub_E3CF

locret_E572:				; CODE XREF: sub_E4B8+Cj sub_E4B8+61j
		ret
; End of function sub_E4B8


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E573:				; CODE XREF: __RESET+C61p

; FUNCTION CHUNK AT E659 SIZE 0000001C BYTES
; FUNCTION CHUNK AT E69D SIZE 000000B0 BYTES

		ld	a, unk_C7
		inc	a
		beq	loc_E57A
		st	a, unk_C7

loc_E57A:				; CODE XREF: sub_E573+3j
		ld	x, #0155h
		ld	a, x + 02h
		inc	a
		beq	loc_E584
		st	a, x + 02h

loc_E584:				; CODE XREF: sub_E573+Dj
		ld	a, x + 05h
		inc	a
		beq	loc_E58B
		st	a, x + 05h

loc_E58B:				; CODE XREF: sub_E573+14j
		ld	a, x + 08h
		inc	a
		beq	loc_E592
		st	a, x + 08h

loc_E592:				; CODE XREF: sub_E573+1Bj
		ld	x, #0149h
		ld	a, #03h
		jsr	sub_D5FE
		ld	a, unk_72
		cmp	a, #00h
		beq	loc_E5BC
		cmp	a, #01h
		beq	loc_E5AA
		cmp	a, #02h
		beq	loc_E5B0
		bra	loc_E5B6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E5AA:				; CODE XREF: sub_E573+2Fj
		ld	#01h, unk_59
		jsr	sub_E5BF

loc_E5B0:				; CODE XREF: sub_E573+33j
		ld	#02h, unk_59
		jsr	sub_E5BF

loc_E5B6:				; CODE XREF: sub_E573+35j
		ld	#03h, unk_59
		jsr	sub_E5BF

loc_E5BC:				; CODE XREF: sub_E573+2Bj
		jmp	loc_E659
; End of function sub_E573


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E5BF:				; CODE XREF: sub_E573+3Ap sub_E573+40p ...
		ld	a, unk_73
		cmp	a, unk_59
		bcs	locret_E63E
		ld	a, unk_59
		jsr	sub_E3A0
		ld	a, unk_55
		cmp	a, #10h
		beq	loc_E5D6
		cmp	a, #20h
		beq	loc_E5E0
		bra	locret_E63E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E5D6:				; CODE XREF: sub_E5BF+Fj
		jsr	sub_E419
		cmp	a, unk_58
		bgt	loc_E639
		ld	#20h, unk_55

loc_E5E0:				; CODE XREF: sub_E5BF+13j
		cmp	#04h, unk_54
		bne	loc_E619
		ld	x, #0D205h
		jsr	sub_E466
		cmp	a, unk_58
		bgt	loc_E5F3
		setb	bit5, unk_43
		bra	loc_E629
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E5F3:				; CODE XREF: sub_E5BF+2Ej
		tbbs	bit5, unk_4A, loc_E639
		ld	d, #0100h
		add	d, unk_70
		st	d, unk_52
		ld	a, unk_56
		dec	a
		jsr	sub_E4A1
		cmp	d, unk_52
		ble	loc_E615
		cmp	#0Fh, unk_57
		bcc	loc_E60E
		inc	unk_57

loc_E60E:				; CODE XREF: sub_E5BF+4Bj
		cmp	#01h, unk_57
		bcs	loc_E639
		bra	loc_E629
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E615:				; CODE XREF: sub_E5BF+46j
		clr	unk_57
		bra	loc_E639
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E619:				; CODE XREF: sub_E5BF+24j
		ld	a, unk_56
		jsr	sub_E4A1
		st	d, unk_52
		ld	x, #0D2B4h
		bsr	sub_E63F
		cmp	d, unk_52
		ble	loc_E639

loc_E629:				; CODE XREF: sub_E5BF+32j sub_E5BF+54j
		ld	#30h, unk_55
		ld	#0FFh, unk_67
		clr	unk_C7
		ld	a, unk_59
		st	a, unk_72
		setb	bit5, unk_44
		clrb	bit3, unk_43

loc_E639:				; CODE XREF: sub_E5BF+1Cj
					; sub_E5BF:loc_E5F3j ...
		ld	a, unk_59
		jsr	sub_E3CF

locret_E63E:				; CODE XREF: sub_E5BF+4j sub_E5BF+15j
		ret
; End of function sub_E5BF


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E63F:				; CODE XREF: sub_E5BF+64p
					; sub_E573+19Dp
		jsr	sub_E3EB
		clr	b
		shr	d
		shr	d
		add	d, unk_52
		bcc	loc_E64C
		ld	d, #0FFFFh

loc_E64C:				; CODE XREF: sub_E63F+8j
		st	d, unk_52
		ld	d, unk_70
		add	d, #3C00h
		bcc	locret_E658
		ld	d, #0FFFFh

locret_E658:				; CODE XREF: sub_E63F+14j
		ret
; End of function sub_E63F

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR sub_E573

loc_E659:				; CODE XREF: sub_E573:loc_E5BCj
		ld	a, #03h
		bsr	sub_E675
		cmpz	a
		bne	loc_E669
		ld	a, #02h
		bsr	sub_E675
		cmpz	a
		bne	loc_E66E
		bra	loc_E673
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E669:				; CODE XREF: sub_E573+EBj
		ld	#02h, unk_59
		bsr	sub_E685

loc_E66E:				; CODE XREF: sub_E573+F2j
		ld	#01h, unk_59
		bsr	sub_E685

loc_E673:				; CODE XREF: sub_E573+F4j
		bra	loc_E69D
; END OF FUNCTION CHUNK	FOR sub_E573

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E675:				; CODE XREF: sub_E573+E8p sub_E573+EFp
		jsr	sub_E3A0
		clr	a
		cmp	#04h, unk_54
		bne	locret_E684
		cmp	#20h, unk_55
		bcs	locret_E684
		dec	a

locret_E684:				; CODE XREF: sub_E675+7j sub_E675+Cj
		ret
; End of function sub_E675


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E685:				; CODE XREF: sub_E573+F9p sub_E573+FEp
		ld	a, unk_59
		jsr	sub_E3A0
		cmp	#04h, unk_54
		bne	locret_E69C
		cmp	#10h, unk_55
		bne	locret_E69C
		ld	#20h, unk_55
		ld	a, unk_59
		jsr	sub_E3CF

locret_E69C:				; CODE XREF: sub_E685+8j sub_E685+Dj
		ret
; End of function sub_E685

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR sub_E573

loc_E69D:				; CODE XREF: sub_E573:loc_E673j
		ld	a, unk_72
		bne	loc_E6A8
		clrb	bit2, unk_43
		clr	unk_78
		jmp	loc_E74D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E6A8:				; CODE XREF: sub_E573+12Cj
		jsr	sub_E3A0
		jsr	sub_E41E
		cmp	a, unk_58
		bgt	loc_E6B5
		jmp	loc_E745
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E6B5:				; CODE XREF: sub_E573+13Dj
		ld	a, unk_55
		cmp	a, #10h
		beq	loc_E6C5
		cmp	a, #20h
		beq	loc_E6C5
		cmp	a, #30h
		beq	loc_E6CE
		bra	loc_E735
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E6C5:				; CODE XREF: sub_E573+146j
					; sub_E573+14Aj
		jsr	sub_E436
		st	a, unk_78
		clrb	bit2, unk_43
		bra	loc_E735
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E6CE:				; CODE XREF: sub_E573+14Ej
		setb	bit5, unk_44
		cmp	#04h, unk_54
		bne	loc_E703
		tbbs	bit5, unk_43, loc_E6F7
		ld	a, unk_56
		jsr	sub_E499
		st	d, unk_52
		ld	x, #0D23Dh
		jsr	sub_E466
		clr	b
		add	d, unk_52
		bcc	loc_E6ED
		ld	d, #0FFFFh

loc_E6ED:				; CODE XREF: sub_E573+175j
		st	d, unk_52
		ld	d, unk_70
		cmp	d, unk_52
		bcc	loc_E725
		bra	loc_E737
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E6F7:				; CODE XREF: sub_E573+162j
		ld	x, #0D221h
		jsr	sub_E466
		cmp	a, unk_C7
		bgt	loc_E725
		bra	loc_E737
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E703:				; CODE XREF: sub_E573+160j
		tbbs	bit3, unk_43, loc_E71B
		ld	a, unk_56
		jsr	sub_E4A1
		st	d, unk_52
		ld	x, #0D2C0h
		jsr	sub_E63F
		cmp	d, unk_52
		ble	loc_E725
		clr	unk_C7
		setb	bit3, unk_43

loc_E71B:				; CODE XREF: sub_E573:loc_E703j
		ld	x, #0D29Ch
		jsr	sub_E3EB
		cmp	a, unk_C7
		ble	loc_E737

loc_E725:				; CODE XREF: sub_E573+180j
					; sub_E573+18Cj ...
		jsr	sub_E436
		cmpz	a
		beq	loc_E731
		setb	bit2, unk_43
		st	a, unk_78
		bra	loc_E735
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E731:				; CODE XREF: sub_E573+1B6j
		clrb	bit2, unk_43
		clr	unk_78

loc_E735:				; CODE XREF: sub_E573+150j
					; sub_E573+159j ...
		bra	loc_E748
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E737:				; CODE XREF: sub_E573+182j
					; sub_E573+18Ej ...
		jsr	sub_E436
		st	a, unk_79
		clr	unk_7A
		ld	#40h, unk_55
		clrb	bit4, unk_43
		bra	loc_E748
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E745:				; CODE XREF: sub_E573+13Fj
		ld	#00h, unk_55

loc_E748:				; CODE XREF: sub_E573:loc_E735j
					; sub_E573+1D0j
		ld	a, unk_72
		jsr	sub_E3CF
; END OF FUNCTION CHUNK	FOR sub_E573
; START	OF FUNCTION CHUNK FOR __RESET

loc_E74D:				; CODE XREF: __RESET:loc_E39Dj
					; sub_E573+132j
		ld	a, unk_72
		beq	loc_E761
		jsr	sub_E3A0
		ld	a, unk_55
		cmp	a, #40h
		beq	loc_E764
		cmp	a, #00h
		bne	loc_E761
		jmp	loc_E82A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E761:				; CODE XREF: __RESET+1025j
					; __RESET+1032j
		jmp	loc_E856
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E764:				; CODE XREF: __RESET+102Ej
		jsr	sub_E436
		cmpz	a
		bne	loc_E770
		jmp	loc_E822
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E76D:				; CODE XREF: __RESET+1049j
		jmp	loc_E7FE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E770:				; CODE XREF: __RESET+103Ej
		cmp	#04h, unk_54
		bne	loc_E76D
		tbbc	bit5, unk_43, loc_E781
		ld	x, #0D1CAh
		jsr	sub_E45B
		jmp	loc_E804
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E781:				; CODE XREF: __RESET+104Bj
		ld	x, #0D23Dh
		jsr	sub_E466
		clr	b
		mov	d, y
		ld	a, unk_79
		sub	a, #03h
		bcs	loc_E798
		ld	x, #0E7F9h
		add	x, a
		ld	a, x + 00h
		jsr	sub_D578

loc_E798:				; CODE XREF: __RESET+1063j
		ld	x, #0D275h
		jsr	sub_E45B
		mov	a, b
		clr	a
		shl	d
		shl	d
		jsr	sub_D553
		st	d, unk_52
		mov	y, d
		cmpz	a
		beq	loc_E7B0
		ld	d, #0FFFFh
		bra	loc_E7B3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E7B0:				; CODE XREF: __RESET+107Fj
		mov	b, a
		ld	b, unk_52

loc_E7B3:				; CODE XREF: __RESET+1084j
		st	d, unk_52
		cmp	#00h, unk_78
		beq	loc_E822
		ld	a, unk_56
		cmp	a, #03h
		beq	loc_E7C3+1
		jsr	sub_E4A1

loc_E7C3:				; CODE XREF: __RESET+1094j
		cmp	x, #5253h
		st	d, unk_5A
		ld	d, unk_70
		sub	d, unk_5A
		bcs	loc_E822
		st	d, unk_5A
		ld	x, #0D259h
		jsr	sub_E466
		clr	b
		shr	d
		shr	d
		shr	d
		cmp	d, unk_5A
		bgt	loc_E822
		tbs	bit4, unk_43
		beq	loc_E7EC
		ld	d, unk_76
		sub	d, unk_5A
		bcs	loc_E81E
		cmp	d, unk_52
		bcs	loc_E81E

loc_E7EC:				; CODE XREF: __RESET+10B6j
		ld	d, unk_5A
		st	d, unk_76
		cmp	#01h, unk_78
		ble	loc_E81E
		dec	unk_78
		bra	loc_E81E
; END OF FUNCTION CHUNK	FOR __RESET
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  80h ; €
		.db  55h ; U
		.db  40h ; @
		.db  33h ; 3
		.db  2Bh ; +
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_E7FE:				; CODE XREF: __RESET:loc_E76Dj
		ld	x, #0D2A8h
		jsr	sub_E3EB

loc_E804:				; CODE XREF: __RESET+1054j
		beq	loc_E822
		cmp	a, unk_7A
		ble	loc_E822
		st	a, unk_52
		ld	a, unk_79
		beq	loc_E822
		dec	a
		mul	a, unk_7A
		div	d, unk_52
		add	b, #01h
		ld	a, unk_79
		sub	a, b
		ble	loc_E822
		st	a, unk_78

loc_E81E:				; CODE XREF: __RESET+10BCj
					; __RESET+10C0j ...
		setb	bit2, unk_43
		bra	loc_E856
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E822:				; CODE XREF: __RESET+1040j
					; __RESET+108Ej ...
		ld	#00h, unk_55
		ld	a, unk_72
		jsr	sub_E3CF

loc_E82A:				; CODE XREF: __RESET+1034j
		ld	a, unk_73
		cmp	a, unk_72
		bgt	loc_E84F

loc_E830:				; CODE XREF: __RESET+1128j
		clr	unk_72
		clr	unk_73
		clrb	bit2, unk_43
		clr	unk_78
		clr	a
		ld	y, #0155h

loc_E83C:				; CODE XREF: __RESET+1116j
		st	a, [y]
		cmp	y, #015Dh
		ble	loc_E83C
		ld	a, #0FFh
		st	a, unk_157
		st	a, unk_15A
		st	a, unk_15D
		bra	loc_E856
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E84F:				; CODE XREF: __RESET+1104j
		cmp	#03h, unk_72
		bcc	loc_E830
		inc	unk_72

loc_E856:				; CODE XREF: __RESET:loc_E761j
					; __RESET+10F6j ...
		ld	a, unk_78
		tbbc	bit2, unk_43, loc_E85D
		or	a, #80h

loc_E85D:				; CODE XREF: __RESET+112Ej
		st	a, unk_102
		ld	a, unk_5D
		st	a, unk_101
		jsr	sub_E485
		ld	b, unk_E9
		st	a, unk_E9
		st	b, unk_5B
		cmp	a, b
		beq	loc_E8A4
		bcs	loc_E88D
		clrb	bit4, unk_48
		cmp	a, #03h
		bne	loc_E881
		tbbc	bit2, unk_48, loc_E87E+1
		setb	bit1, unk_48

loc_E87E:				; CODE XREF: __RESET+114Fj
		cmp	x, #7538h

loc_E881:				; CODE XREF: __RESET+114Dj
		cmp	a, #04h
		bne	loc_E8A2
		cmp	b, #03h
		beq	loc_E8A2
		setb	bit6, unk_49
		bra	loc_E8A2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E88D:				; CODE XREF: __RESET+1147j
		cmp	a, #01h
		bne	loc_E89C
		cmp	b, #03h
		bcs	loc_E897
		setb	bit3, unk_49

loc_E897:				; CODE XREF: __RESET+1169j
		cmp	#08h, unk_B0
		bcs	loc_E89E

loc_E89C:				; CODE XREF: __RESET+1165j
		clrb	bit4, unk_48

loc_E89E:				; CODE XREF: __RESET+1170j
		clr	b
		st	b, unk_149

loc_E8A2:				; CODE XREF: __RESET+1159j
					; __RESET+115Dj ...
		clr	unk_C9

loc_E8A4:				; CODE XREF: __RESET+1145j
		cmp	a, #03h
		bcs	loc_E8AA
		setb	bit2, unk_48

loc_E8AA:				; CODE XREF: __RESET+117Cj
		cmp	a, #01h
		bne	loc_E8B0
		clrb	bit2, unk_48

loc_E8B0:				; CODE XREF: __RESET+1182j
		cmp	#0FFh, unk_C9
		bcs	loc_E8B7
		clrb	bit6, unk_41

loc_E8B7:				; CODE XREF: __RESET+1189j
		ld	a, unk_6C
		st	a, unk_5A
		bra	loc_E8E1
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E8BD:				; CODE XREF: __RESET+11D6p
					; __RESET+11F8p
		cmp	#09h, unk_62
		ble	loc_E8C4
		or	a, #02h

loc_E8C4:				; CODE XREF: sub_E8BD+3j
		cmp	#28h, unk_70
		bcs	locret_E8CB
		or	a, #01h

locret_E8CB:				; CODE XREF: sub_E8BD+Aj
		ret
; End of function sub_E8BD


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_E8CC:				; CODE XREF: __RESET+11E5p
					; __RESET+120Cp
		ld	d, unk_70
		cmp	a, #40h
		bcs	loc_E8D6
		ld	a, #0FFh
		bra	loc_E8DD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E8D6:				; CODE XREF: sub_E8CC+4j
		shl	d
		shl	d
		cmp	a, unk_152
		ble	locret_E8E0

loc_E8DD:				; CODE XREF: sub_E8CC+8j
		st	a, unk_152

locret_E8E0:				; CODE XREF: sub_E8CC+Fj
		ret
; End of function sub_E8CC

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_E8E1:				; CODE XREF: __RESET+1191j
		tbbc	bit0, unk_4F, loc_E8E7
		jmp	loc_EA58
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E8E7:				; CODE XREF: __RESET:loc_E8E1j
		clr	unk_D7
		ld	a, unk_E5
		cmpb	a, #08h
		bne	loc_E8FC
		tbbs	bit4, unk_4F, loc_E8F8
		cmpb	a, #10h
		bne	loc_E8FC
		bra	loc_E911
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E8F8:				; CODE XREF: __RESET+11C5j
		cmpb	a, #10h
		bne	loc_E911

loc_E8FC:				; CODE XREF: __RESET+11C3j
					; __RESET+11CAj
		tbbs	bit0, unk_42, loc_E91D
		clr	a
		bsr	sub_E8BD
		cmpz	a
		bne	loc_E91A
		clr	a
		st	a, unk_D6
		st	a, unk_E4
		st	a, unk_152
		clrb	bit0, unk_48
		bsr	sub_E8CC

loc_E911:				; CODE XREF: __RESET+11CCj
					; __RESET+11D0j
		tbbs	bit0, unk_42, loc_E91D
		ld	a, unk_D6
		cmp	a, #4Ch
		bcs	loc_E920

loc_E91A:				; CODE XREF: __RESET+11D9j
					; __RESET+11FEj ...
		jmp	loc_EA20
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E91D:				; CODE XREF: __RESET:loc_E8FCj
					; __RESET:loc_E911j
		jmp	loc_E9E4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E920:				; CODE XREF: __RESET+11EEj
		ld	a, unk_E4
		bsr	sub_E8BD
		st	a, unk_E4
		cmpb	a, #02h
		bne	loc_E91A
		tbbs	bit6, unk_4E, loc_E932
		cmp	#00h, unk_5E
		bgt	loc_E91A

loc_E932:				; CODE XREF: __RESET+1200j
		tbs	bit4, unk_44
		bne	loc_E96A
		bsr	sub_E8CC
		tbbc	bit6, unk_4E, loc_E96A
		ld	a, unk_E4
		cmpb	a, #02h
		bne	loc_E96A
		cmpb	a, #04h
		beq	loc_E96A
		ld	y, #0D4BBh
		tbbs	bit4, unk_4F, loc_E954
		ld	y, #0D4B1h
		tbbs	bit6, unk_48, loc_E954
		ld	y, #0D4B6h

loc_E954:				; CODE XREF: __RESET+121Ej
					; __RESET+1224j
		jsr	sub_D61F
		ld	b, #07h
		tbbc	bit4, unk_4F, loc_E95E
		ld	b, #00h

loc_E95E:				; CODE XREF: __RESET+122Fj
		add	b, unk_5A
		bcc	loc_E964
		ld	b, #64h

loc_E964:				; CODE XREF: __RESET+1236j
		cmp	a, b
		ble	loc_E968
		mov	b, a

loc_E968:				; CODE XREF: __RESET+123Bj
		st	a, unk_5A

loc_E96A:				; CODE XREF: __RESET+120Aj
					; __RESET+120Ej ...
		ld	a, unk_D6
		cmp	a, #4Ch
		bcc	loc_E989
		clr	b
		ld	a, unk_152
		shr	d
		shr	d
		sub	d, unk_F0
		bgt	loc_E983
		neg	a
		neg	b
		subc	a, #00h
		cmp	d, #0280h
		bcc	loc_E989

loc_E983:				; CODE XREF: __RESET+124Ej
		ld	a, unk_E4
		or	a, #08h
		st	a, unk_E4

loc_E989:				; CODE XREF: __RESET+1244j
					; __RESET+1257j
		ld	a, unk_E4
		cmpb	a, #08h
		beq	loc_E9A4
		clr	b
		ld	a, unk_152
		shr	d
		shr	d
		sub	d, unk_70
		bcs	loc_E9A4
		cmp	d, #0180h
		bcs	loc_E9A4
		ld	a, unk_E4
		or	a, #10h
		st	a, unk_E4

loc_E9A4:				; CODE XREF: __RESET+1263j
					; __RESET+126Dj ...
		ld	y, #0D4CAh
		tbbs	bit4, unk_4F, loc_E9B3
		ld	y, #0D4C0h
		tbbs	bit6, unk_48, loc_E9B3
		ld	y, #0D4C5h

loc_E9B3:				; CODE XREF: __RESET+127Dj
					; __RESET+1283j
		jsr	sub_D61F
		clr	b
		shr	d
		shr	d
		st	d, unk_153
		tbbc	bit0, unk_48, loc_E9C7
		ld	a, unk_AD
		cmp	a, #10h
		bcs	loc_E9DC
		bra	loc_EA20
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E9C7:				; CODE XREF: __RESET+1292j
		tbbs	bit4, unk_4F, loc_E9D0
		ld	a, unk_E4
		cmpb	a, #10h
		beq	loc_E9DC

loc_E9D0:				; CODE XREF: __RESET:loc_E9C7j
		ld	d, unk_70
		cmp	d, #0300h
		bgt	loc_E9DC
		clr	a
		st	a, unk_AD
		setb	bit0, unk_48

loc_E9DC:				; CODE XREF: __RESET+1299j
					; __RESET+12A4j ...
		ld	a, unk_E4
		cmpb	a, #01h
		bne	loc_E9E8
		bra	loc_E9EB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E9E4:				; CODE XREF: __RESET:loc_E91Dj
		ld	a, #0FFh
		st	a, unk_D6

loc_E9E8:				; CODE XREF: __RESET+12B6j
					; __RESET+12DEj
		clr	a
		bra	loc_EA53
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E9EB:				; CODE XREF: __RESET+12B8j
		tbbs	bit4, unk_4F, loc_E9F2
		cmpb	a, #10h
		beq	loc_E9FF

loc_E9F2:				; CODE XREF: __RESET:loc_E9EBj
		ld	d, unk_70
		cmp	d, unk_153
		bgt	loc_E9FF
		ld	a, unk_E4
		or	a, #04h
		st	a, unk_E4

loc_E9FF:				; CODE XREF: __RESET+12C6j
					; __RESET+12CDj
		ld	b, #00h
		tbbc	bit4, unk_4F, loc_EA06
		ld	b, #0Ch

loc_EA06:				; CODE XREF: __RESET+12D7j
		cmp	b, unk_D6
		bgt	loc_E9E8
		ld	a, unk_E4
		cmpb	a, #04h
		beq	loc_EA2A
		cmpb	a, #02h
		bne	loc_EA2A
		tbbs	bit4, unk_4F, loc_EA1B
		cmpb	a, #10h
		beq	loc_EA2A

loc_EA1B:				; CODE XREF: __RESET+12EAj
		tbbc	bit6, unk_4E, loc_EA2A
		bra	loc_EA55
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EA20:				; CODE XREF: __RESET:loc_E91Aj
					; __RESET+129Bj
		ld	d, #0FF00h
		st	a, unk_D6
		st	b, unk_E4
		jmp	loc_EAA2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EA2A:				; CODE XREF: __RESET+12E4j
					; __RESET+12E8j ...
		ld	a, unk_E4
		cmpb	a, #20h
		bne	loc_EA36
		or	a, #20h
		st	a, unk_E4
		clr	unk_AE

loc_EA36:				; CODE XREF: __RESET+1304j
		ld	y, #0D4ACh
		tbbs	bit4, unk_4F, loc_EA45
		ld	y, #0D4A2h
		tbbs	bit6, unk_48, loc_EA45
		ld	y, #0D4A7h

loc_EA45:				; CODE XREF: __RESET+130Fj
					; __RESET+1315j
		jsr	sub_D61F
		cmpz	a
		beq	loc_EA53
		ld	b, unk_AE
		cmp	b, #08h
		bcc	loc_EA53
		ld	a, #64h

loc_EA53:				; CODE XREF: __RESET+12BFj
					; __RESET+131Fj ...
		st	a, unk_5A

loc_EA55:				; CODE XREF: __RESET+12F4j
		jmp	loc_EF70+1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EA58:				; CODE XREF: __RESET+11BAj
		ld	a, unk_E5
		cmpb	a, #08h
		bne	loc_EA6C
		ld	a, unk_AF
		cmp	a, #18h
		bgt	loc_EA66+1
		ld	a, #80h

loc_EA66:				; CODE XREF: __RESET+1338j
		brn	#52h
		st	a, unk_E4
		clr	unk_D6

loc_EA6C:				; CODE XREF: __RESET+1332j
		ld	a, unk_E4
		and	a, #80h
		st	a, unk_E4
		cmp	#2Eh, unk_D6
		bcc	loc_EA83
		ld	a, #00h
		ld	b, unk_E4
		cmpb	b, #80h
		beq	loc_EA81
		ld	a, #1Eh

loc_EA81:				; CODE XREF: __RESET+1353j
		bra	loc_EA53
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EA83:				; CODE XREF: __RESET+134Bj
		tbbs	bit6, unk_44, loc_EA9C
		cmp	#3Dh, unk_D7
		bcs	loc_EA9C
		cmp	#0Ah, unk_F0
		bcs	loc_EA99
		cmp	#7Ah, unk_D7
		bcs	loc_EA9D+1
		setb	bit6, unk_44
		bra	loc_EA9C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EA99:				; CODE XREF: __RESET+1364j
		ld	#3Dh, unk_D7

loc_EA9C:				; CODE XREF: __RESET:loc_EA83j
					; __RESET+135Fj ...
		clr	a

loc_EA9D:				; CODE XREF: __RESET+1369j
		cmp	x, #0CA64h
		bra	loc_EA53
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EAA2:				; CODE XREF: __RESET+12FDj
		ld	b, unk_5B
		ld	a, unk_E5
		tbbs	bit1, unk_46, loc_EABB
		tbbs	bit0, unk_46, loc_EAF2
		tbbc	bit5, unk_4E, loc_EAB9
		cmp	b, unk_E9
		ble	loc_EAB9
		ld	b, unk_E9
		cmp	b, #03h
		beq	loc_EACA

loc_EAB9:				; CODE XREF: __RESET+1382j
					; __RESET+1387j
		bra	loc_EAF0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EABB:				; CODE XREF: __RESET+137Cj
		cmpb	a, #02h
		bne	loc_EAE0
		ld	a, unk_5F
		cmp	a, unk_D043
		bcs	loc_EACE
		cmp	b, #04h
		bne	loc_EAE0

loc_EACA:				; CODE XREF: __RESET+138Dj
		ld	a, #01h
		bra	loc_EADD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EACE:				; CODE XREF: __RESET+139Aj
					; __RESET+13D5j
		cmp	#49h, unk_A5
		bgt	loc_EAD7
		ld	a, #02h
		bra	loc_EADD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EAD7:				; CODE XREF: __RESET+13A7j
		cmp	b, #03h
		bne	loc_EAF0

loc_EADB:				; CODE XREF: __RESET+13C4j
		ld	a, #04h

loc_EADD:				; CODE XREF: __RESET+13A2j
					; __RESET+13ABj
		jmp	loc_EB1F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EAE0:				; CODE XREF: __RESET+1393j
					; __RESET+139Ej
		ld	a, unk_E9
		cmp	a, unk_5B
		bcc	loc_EAF0
		cmp	a, #02h
		bne	loc_EAF0
		ld	a, unk_E3
		cmpb	a, #06h
		beq	loc_EADB

loc_EAF0:				; CODE XREF: __RESET:loc_EAB9j
					; __RESET+13AFj ...
		bra	loc_EB1D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EAF2:				; CODE XREF: __RESET+137Fj
		cmpb	a, #01h
		bne	loc_EB0D
		cmp	b, #01h
		beq	loc_EB1D
		ld	a, unk_5F
		cmp	a, unk_D041
		bcc	loc_EACE
		cmp	#49h, unk_A5
		bgt	loc_EB08+1
		ld	a, #08h

loc_EB08:				; CODE XREF: __RESET+13DAj
					; __RESET+13F1j
		cmp	x, #0CA10h
		bra	loc_EB1F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB0D:				; CODE XREF: __RESET+13CAj
		ld	a, unk_E9
		cmp	a, unk_5B
		bcc	loc_EB1D
		cmp	a, #01h
		bne	loc_EB1D
		ld	a, unk_E3
		cmpb	a, #18h
		beq	loc_EB08+1

loc_EB1D:				; CODE XREF: __RESET:loc_EAF0j
					; __RESET+13CEj ...
		bra	loc_EB32
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB1F:				; CODE XREF: __RESET:loc_EADDj
					; __RESET+13E1j
		st	a, unk_E3
		clr	unk_CA
		ld	y, #0D4F2h
		jsr	sub_D617
		st	a, unk_150
		clrb	bit0, unk_48
		clr	a
		clr	b
		st	d, unk_CB

loc_EB32:				; CODE XREF: __RESET:loc_EB1Dj
		ld	b, unk_E3
		ld	a, unk_E9
		cmp	a, unk_5B
		bgt	loc_EB3F
		cmp	#0FFh, unk_CA
		bcs	loc_EB47

loc_EB3F:				; CODE XREF: __RESET+140Ej
		clr	unk_E3
		ld	#0FFh, unk_CA
		jmp	loc_EC83
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB47:				; CODE XREF: __RESET+1413j
		clr	b
		cmp	a, #01h
		beq	loc_EB54
		cmp	a, #02h
		beq	loc_EB52
		st	b, unk_CC

loc_EB52:				; CODE XREF: __RESET+1424j
		st	b, unk_CB

loc_EB54:				; CODE XREF: __RESET+1420j
		tbbs	bit6, unk_4E, loc_EB5F
		cmp	#06h, unk_5E
		bcs	loc_EB5F
		jmp	loc_EC83
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB5F:				; CODE XREF: __RESET:loc_EB54j
					; __RESET+1430j
		clr	a
		ld	b, unk_E3
		cmpb	b, #01h
		bne	loc_EB6C
		inc	a
		cmpb	b, #06h
		bne	loc_EB6C
		inc	a

loc_EB6C:				; CODE XREF: __RESET+143Aj
					; __RESET+143Fj
		mul	a, #05h
		ld	x, #0D4CFh
		add	x, b
		st	x, unk_52
		ld	#10h, unk_E6
		clr	a
		clr	b
		st	d, unk_13D
		ld	a, unk_CA
		cmp	a, x + 00h
		bcs	loc_EB85
		jmp	loc_EC80
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB85:				; CODE XREF: __RESET+1456j
		ld	b, unk_E3
		cmpb	b, #0Ah
		beq	loc_EB93
		cmp	a, unk_150
		bcc	loc_EBB7
		jmp	loc_EC36
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB93:				; CODE XREF: __RESET+145Fj
		cmpb	b, #10h
		bne	loc_EBA8
		cmpb	b, #04h
		beq	loc_EBB7
		tbbs	bit0, unk_46, loc_EBB0
		ld	b, unk_E9
		cmp	b, #02h
		bgt	loc_EBB4
		ld	a, unk_CC
		bra	loc_EBB0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EBA8:				; CODE XREF: __RESET+146Bj
		ld	b, unk_E9
		cmp	b, #01h
		bne	loc_EBB4
		ld	a, unk_CB

loc_EBB0:				; CODE XREF: __RESET+1471j
					; __RESET+147Cj
		cmp	a, x + 01h
		bcc	loc_EBB7

loc_EBB4:				; CODE XREF: __RESET+1478j
					; __RESET+1482j
		jmp	loc_EF6F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EBB7:				; CODE XREF: __RESET+1464j
					; __RESET+146Fj ...
		tbbc	bit5, unk_4A, loc_EBBD
		jmp	loc_EC30
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EBBD:				; CODE XREF: __RESET:loc_EBB7j
		ld	b, unk_E3
		cmpb	b, #01h
		beq	loc_EBC7
		ld	d, unk_6E
		bra	loc_EBD0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EBC7:				; CODE XREF: __RESET+1497j
		clr	a
		cmpb	b, #18h
		bne	loc_EBCD
		inc	a

loc_EBCD:				; CODE XREF: __RESET+14A0j
		jsr	sub_E4A1

loc_EBD0:				; CODE XREF: __RESET+149Bj
		mov	d, x
		ld	y, unk_52
		tbbc	bit0, unk_48, loc_EBDF
		ld	a, unk_AD
		cmp	a, #10h
		bcs	loc_EBEE
		jmp	loc_EC80
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EBDF:				; CODE XREF: __RESET+14A9j
		sub	a, y + 03h
		bcc	loc_EBE5
		clr	a
		clr	b

loc_EBE5:				; CODE XREF: __RESET+14B7j
		cmp	d, unk_70
		bgt	loc_EBEE
		setb	bit0, unk_48
		clr	a
		st	a, unk_AD

loc_EBEE:				; CODE XREF: __RESET+14B0j
					; __RESET+14BDj
		ld	a, unk_E3
		cmpb	a, #80h
		bne	loc_EC21
		cmpb	a, #01h
		beq	loc_EC0B
		push	x
		push	y
		ld	y, #0D4F7h
		jsr	sub_D617
		clr	b
		shr	d
		shr	d
		st	d, unk_52
		pull	y
		pull	d
		sub	d, unk_52
		bra	loc_EC0E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EC0B:				; CODE XREF: __RESET+14CCj
		mov	x, d
		sub	a, y + 02h

loc_EC0E:				; CODE XREF: __RESET+14DFj
		bcc	loc_EC12
		clr	a
		clr	b

loc_EC12:				; CODE XREF: __RESET:loc_EC0Ej
		cmp	d, unk_70
		bgt	loc_EC30
		ld	a, unk_E3
		or	a, #80h
		st	a, unk_E3
		ld	a, unk_5A
		st	a, unk_151

loc_EC21:				; CODE XREF: __RESET+14C8j
		ld	a, y + 04h
		add	a, unk_151
		bcs	loc_EC2C
		cmp	a, #64h
		ble	loc_EC7B

loc_EC2C:				; CODE XREF: __RESET+14FCj
		ld	a, #64h
		bra	loc_EC7B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EC30:				; CODE XREF: __RESET+1490j
					; __RESET+14EAj
		ld	a, unk_E3
		cmpb	a, #01h
		beq	loc_EC4E

loc_EC36:				; CODE XREF: __RESET+1466j
		ld	x, #0D4FCh
		jsr	sub_F15A
		cmp	a, unk_6E
		bgt	loc_EC73
		ld	y, #0D4E8h
		ld	b, unk_E3
		cmpb	b, #02h
		beq	loc_EC6E
		ld	y, #0D4EDh
		bra	loc_EC6E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EC4E:				; CODE XREF: __RESET+150Aj
		cmpb	a, #06h
		beq	loc_EC61
		ld	x, #0D503h
		jsr	sub_F15A
		cmp	a, unk_6E
		bgt	loc_EC75+1
		ld	y, #0D4E3h
		bra	loc_EC6E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EC61:				; CODE XREF: __RESET+1526j
		ld	x, #0D50Ah
		jsr	sub_F15A
		cmp	a, unk_6E
		bgt	loc_EC78+1
		ld	y, #0D4DEh

loc_EC6E:				; CODE XREF: __RESET+151Dj
					; __RESET+1522j ...
		jsr	sub_D617
		bra	loc_EC7B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EC73:				; CODE XREF: __RESET+1514j
		ld	a, #64h

loc_EC75:				; CODE XREF: __RESET+1530j
		cmp	x, #0CA64h

loc_EC78:				; CODE XREF: __RESET+153Fj
		cmp	x, #0CA64h

loc_EC7B:				; CODE XREF: __RESET+1500j
					; __RESET+1504j ...
		st	a, unk_5A
		jmp	loc_EF70+1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EC80:				; CODE XREF: __RESET+1458j
					; __RESET+14B2j
		jmp	loc_EF50
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EC83:				; CODE XREF: __RESET+141Aj
					; __RESET+1432j
		ld	a, unk_E9
		cmp	a, unk_5B
		beq	loc_EC8E
		bgt	loc_EC9A
		jmp	loc_ECF5
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EC8E:				; CODE XREF: __RESET+155Dj
		ld	d, unk_E6
		cmp	a, #0FFh
		bne	loc_EC97
		jmp	loc_EF61
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EC97:				; CODE XREF: __RESET+1568j
		jmp	loc_ED1B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EC9A:				; CODE XREF: __RESET+155Fj
		clrb	bit3, unk_49
		ld	b, unk_5B

loc_EC9E:				; CODE XREF: __RESET+15C5j
		ld	a, unk_13E
		bne	loc_ECC6
		clrb	bit4, unk_49
		clrb	bit1, unk_49
		clrb	bit7, unk_49
		clrb	bit5, unk_44
		clrb	bit5, unk_49
		st	a, unk_13D
		inc	a
		st	a, unk_13E
		ld	#0FFh, unk_AC
		clr	unk_E7
		ld	a, unk_E6
		ld	#00h, unk_E6
		cmp	a, #0FFh
		bne	loc_ECCA
		clr	unk_AB
		bra	loc_ECCC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_ECC6:				; CODE XREF: __RESET+1577j
		setb	bit2, unk_49
		setb	bit1, unk_49

loc_ECCA:				; CODE XREF: __RESET+1596j
		setb	bit0, unk_49

loc_ECCC:				; CODE XREF: __RESET+159Aj
		ld	a, unk_13D
		cmp	a, #03h
		bcc	loc_ECD7
		inc	a
		st	a, unk_13D

loc_ECD7:				; CODE XREF: __RESET+15A7j
		inc	b
		ld	x, #0143h
		dec	a
		add	x, a
		st	b, x + 00h
		ld	x, #0149h
		add	x, a
		clr	x + 00h
		ld	x, #0146h
		add	x, a
		ld	a, unk_62
		st	a, x + 00h
		cmp	b, unk_E9
		bcs	loc_EC9E
		ld	a, unk_E6
		bra	loc_ED1B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_ECF5:				; CODE XREF: __RESET+1561j
		clr	a
		clr	b
		st	d, unk_13D
		clrb	bit4, unk_49
		clrb	bit2, unk_49
		clrb	bit6, unk_49
		ld	a, unk_E6
		cmp	a, #0FFh
		beq	loc_ED12
		cmp	a, #10h
		bcs	loc_ED12
		ld	b, unk_E9
		cmp	b, #01h
		bne	loc_ED12
		setb	bit3, unk_49

loc_ED12:				; CODE XREF: __RESET+15DAj
					; __RESET+15DEj ...
		ld	d, #1000h
		st	d, unk_E6
		ld	b, #0FFh
		st	b, unk_AC

loc_ED1B:				; CODE XREF: __RESET:loc_EC97j
					; __RESET+15C9j
		cmp	a, #10h
		bcs	loc_ED71
		cmp	#0FFh, unk_CA
		beq	loc_ED27
		tbbs	bit4, unk_41, loc_ED6B

loc_ED27:				; CODE XREF: __RESET+15F8j
		cmp	#01h, unk_E9
		bne	loc_ED32
		tbbc	bit4, unk_48, loc_ED32
		clr	b
		bra	loc_ED38
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_ED32:				; CODE XREF: __RESET+1600j
					; __RESET+1602j
		ld	y, #0D457h
		jsr	sub_F182

loc_ED38:				; CODE XREF: __RESET+1606j
		st	b, unk_5A
		ld	a, unk_E9
		dec	a
		st	a, unk_56
		ld	a, #08h
		st	a, unk_54
		jsr	sub_E41E
		shr	a
		cmp	a, unk_C9
		ble	loc_ED6E
		tbbs	bit5, unk_4A, loc_ED6B
		ld	a, unk_AC
		cmp	a, #0FFh
		beq	loc_ED5A
		cmp	a, #10h
		bcc	loc_ED6E
		bra	loc_ED6B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_ED5A:				; CODE XREF: __RESET+1628j
		ld	a, unk_E9
		jsr	sub_E498
		sub	d, #0100h
		ble	loc_ED6E
		cmp	d, unk_70
		bcc	loc_ED6B
		clr	a
		st	a, unk_AC

loc_ED6B:				; CODE XREF: __RESET+15FAj
					; __RESET+1621j ...
		jmp	loc_EF70+1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_ED6E:				; CODE XREF: __RESET+161Fj
					; __RESET+162Cj ...
		jmp	loc_EF50
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_ED71:				; CODE XREF: __RESET+15F3j
		ld	y, #0143h
		ld	b, unk_13E
		dec	b
		add	y, b
		ld	b, y + 00h
		st	b, unk_E8
		tbbc	bit5, unk_4A, loc_ED83
		jmp	loc_EE14
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_ED83:				; CODE XREF: __RESET+1653j
		cmp	a, #00h
		beq	loc_ED98
		cmp	a, #01h
		beq	loc_ED95
		cmp	a, #03h
		bne	loc_ED92
		jmp	loc_EF3F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_ED92:				; CODE XREF: __RESET+1663j
		jmp	loc_EE82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_ED95:				; CODE XREF: __RESET+165Fj
		jmp	loc_EE28
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_ED98:				; CODE XREF: __RESET+165Bj
		tbbc	bit5, unk_44, loc_EDBE
		tbbs	bit0, unk_49, loc_EDE4
		tbbs	bit4, unk_49, loc_EDE4
		tbs	bit4, unk_44
		bne	loc_EDE6
		tbs	bit5, unk_49
		beq	loc_EDE6
		ld	d, unk_70
		st	d, unk_13F
		ld	d, #0100h
		st	d, unk_E6
		ld	d, #8000h
		st	d, unk_14C
		st	d, unk_14E
		bra	loc_EE2F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EDBE:				; CODE XREF: __RESET:loc_ED98j
		tbbc	bit2, unk_49, loc_EDC9
		ld	a, unk_E9
		cmp	a, #04h
		bne	loc_EDC9
		setb	bit7, unk_49

loc_EDC9:				; CODE XREF: __RESET:loc_EDBEj
					; __RESET+169Bj
		setb	bit4, unk_44
		ld	a, unk_EA
		ld	b, unk_13D
		sub	b, unk_13E
		ble	loc_EDDB
		cmp	b, #01h
		beq	loc_EDDA
		shl	a

loc_EDDA:				; CODE XREF: __RESET+16ADj
		shl	a

loc_EDDB:				; CODE XREF: __RESET+16A9j
		cmpb	a, #80h
		beq	loc_EDE6
		tbbc	bit0, unk_41, loc_EDFF
		bra	loc_EDFD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EDE4:				; CODE XREF: __RESET+1671j
					; __RESET+1674j
		setb	bit4, unk_44

loc_EDE6:				; CODE XREF: __RESET+1679j
					; __RESET+167Dj ...
		ld	a, unk_EA
		ld	b, unk_13D
		sub	b, unk_13E
		ble	loc_EDF6
		cmp	b, #01h
		beq	loc_EDF5
		shl	a

loc_EDF5:				; CODE XREF: __RESET+16C8j
		shl	a

loc_EDF6:				; CODE XREF: __RESET+16C4j
		cmpb	a, #80h
		bne	loc_EDFF
		tbbc	bit6, unk_4E, loc_EDFF

loc_EDFD:				; CODE XREF: __RESET+16B8j
		setb	bit4, unk_49

loc_EDFF:				; CODE XREF: __RESET+16B5j
					; __RESET+16CEj ...
		tbbs	bit0, unk_49, loc_EE0C
		ld	b, unk_AB
		cmp	b, #08h
		bcc	loc_EE0C
		ld	b, #64h
		bra	loc_EE1F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EE0C:				; CODE XREF: __RESET:loc_EDFFj
					; __RESET+16DCj
		tbbs	bit0, unk_43, loc_EE14
		cmp	#0FAh, unk_F9
		bcs	loc_EE1C

loc_EE14:				; CODE XREF: __RESET+1656j
					; __RESET:loc_EE0Cj
		ld	y, #0D42Ch
		jsr	sub_F16C
		bra	loc_EE1F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EE1C:				; CODE XREF: __RESET+16E8j
		jsr	sub_F0DD

loc_EE1F:				; CODE XREF: __RESET+16E0j
					; __RESET+16F0j
		st	b, unk_5A
		bra	loc_EE3E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EE23:				; CODE XREF: __RESET:loc_EE28j
					; __RESET+175Ej
		ld	#00h, unk_E6
		bra	loc_EE3E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EE28:				; CODE XREF: __RESET:loc_ED95j
		tbbs	bit0, unk_49, loc_EE23
		tbs	bit4, unk_44
		bne	loc_EE3E

loc_EE2F:				; CODE XREF: __RESET+1692j
		ld	y, #0D405h
		jsr	sub_F16C
		cmp	b, unk_E7
		bcs	loc_EE3E
		jsr	sub_EFC2
		st	a, unk_5A

loc_EE3E:				; CODE XREF: __RESET+16F7j
					; __RESET+16FCj ...
		tbbs	bit5, unk_4A, loc_EE44
		tbbc	bit1, unk_49, loc_EE47

loc_EE44:				; CODE XREF: __RESET:loc_EE3Ej
					; __RESET+1723j
		jmp	loc_EEB5
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EE47:				; CODE XREF: __RESET+1717j
		ld	b, unk_13E
		cmp	b, unk_13D
		bcs	loc_EE44
		ld	y, #0D390h
		jsr	sub_F16C
		mov	b, a
		mul	a, #40h
		st	d, unk_52
		ld	a, unk_E8
		jsr	sub_E498
		add	d, unk_52
		bcc	loc_EE66
		ld	d, #0FFFFh

loc_EE66:				; CODE XREF: __RESET+1737j
		cmp	d, unk_70
		bcs	loc_EEB5
		ld	y, #0D3B7h
		jsr	sub_F16C
		cmp	b, #00h
		bne	loc_EE78
		setb	bit1, unk_49
		bra	loc_EEB5
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EE78:				; CODE XREF: __RESET+1748j
		ld	d, #0200h
		st	d, unk_E6
		ld	a, unk_5A
		st	a, unk_141

loc_EE82:				; CODE XREF: __RESET:loc_ED92j
		ld	b, unk_13E
		cmp	b, unk_13D
		bcs	loc_EE23
		tbs	bit4, unk_44
		bne	loc_EEB5
		ld	y, #0D3B7h
		jsr	sub_F16C
		add	b, unk_141
		bcs	loc_EE9D
		cmp	b, #64h
		ble	loc_EE9F

loc_EE9D:				; CODE XREF: __RESET+176Dj
		ld	b, #64h

loc_EE9F:				; CODE XREF: __RESET+1771j
		st	b, unk_5B
		ld	y, #0D3DEh
		jsr	sub_F16C
		add	b, unk_5A
		bcc	loc_EEAD
		ld	b, #64h

loc_EEAD:				; CODE XREF: __RESET+177Fj
		cmp	b, unk_5B
		ble	loc_EEB3
		ld	b, unk_5B

loc_EEB3:				; CODE XREF: __RESET+1785j
		st	b, unk_5A

loc_EEB5:				; CODE XREF: __RESET:loc_EE44j
					; __RESET+173Ej ...
		ld	a, unk_E8
		dec	a
		st	a, unk_56
		clrb	bit6, unk_43
		tbbc	bit1, unk_48, loc_EEC1
		setb	bit6, unk_43

loc_EEC1:				; CODE XREF: __RESET+1792j
		ld	a, #04h
		st	a, unk_54
		jsr	sub_E41E
		ld	b, unk_13E
		dec	b
		ld	x, #0149h
		add	x, b
		cmp	a, x + 00h
		bgt	loc_EEDE
		ld	a, unk_13E
		cmp	a, unk_13D
		bcc	loc_EF50
		bra	loc_EF09
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EEDE:				; CODE XREF: __RESET+17A8j
		tbbs	bit5, unk_4A, loc_EEF9
		ld	a, unk_AC
		cmp	a, #0FFh
		beq	loc_EEFB
		ld	b, unk_13E
		cmp	b, unk_13D
		bcs	loc_EF09
		cmp	a, #10h
		bcs	loc_EEF9
		ld	a, #0FFh
		st	a, unk_AC
		bra	loc_EF2A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EEF9:				; CODE XREF: __RESET:loc_EEDEj
					; __RESET+17C7j
		bra	loc_EF70+1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EEFB:				; CODE XREF: __RESET+17BBj
		ld	a, unk_E8
		jsr	sub_E498
		add	d, #0100h
		bcs	loc_EF09
		cmp	d, unk_70
		bcs	loc_EF70+1

loc_EF09:				; CODE XREF: __RESET+17B2j
					; __RESET+17C3j ...
		ld	a, unk_13E
		cmp	a, unk_13D
		bcc	loc_EF26
		ld	d, #0000h
		st	d, unk_E6
		ld	a, unk_13E
		inc	a
		st	a, unk_13E
		clrb	bit4, unk_49
		clrb	bit1, unk_49
		ld	#0FFh, unk_AC
		bra	loc_EF70+1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EF26:				; CODE XREF: __RESET+17E5j
		clr	unk_AC
		bra	loc_EF70+1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EF2A:				; CODE XREF: __RESET+17CDj
		tbbc	bit7, unk_49, loc_EF50
		clrb	bit4, unk_49
		ld	b, #6Dh
		tbbc	bit0, unk_41, loc_EF38
		setb	bit4, unk_49
		ld	b, #85h

loc_EF38:				; CODE XREF: __RESET+1807j
		st	b, unk_AC
		ld	d, #0300h
		st	d, unk_E6

loc_EF3F:				; CODE XREF: __RESET+1665j
		ld	a, unk_AC
		cmp	a, #0FFh
		bcc	loc_EF50
		ld	b, #28h
		tbbc	bit4, unk_49, loc_EF4C
		ld	b, #50h

loc_EF4C:				; CODE XREF: __RESET+181Dj
		st	b, unk_5A
		bra	loc_EF70+1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EF50:				; CODE XREF: __RESET:loc_EC80j
					; __RESET:loc_ED6Ej ...
		clrb	bit6, unk_49
		clrb	bit7, unk_49
		ld	#0FFh, unk_CA
		clr	unk_E3
		tbbc	bit6, unk_41, loc_EF61
		clrb	bit6, unk_41
		ld	#0FFh, unk_C9

loc_EF61:				; CODE XREF: __RESET+156Aj
					; __RESET+182Fj
		ld	a, unk_49
		and	a, #0C0h
		st	a, unk_49
		ld	#0FFh, unk_E6
		clr	a
		clr	b
		st	d, unk_13D

loc_EF6F:				; CODE XREF: __RESET:loc_EBB4j
		clr	a

loc_EF70:				; CODE XREF: __RESET:loc_EA55j
					; __RESET+1553j ...
		cmp	x, #0DA5Ah
		st	a, unk_6C
		ld	b, unk_E6
		and	b, #0Fh
		cmp	b, #01h
		bne	loc_EF8B
		cmp	a, #64h
		ble	loc_EF85
		ld	a, #64h
		bra	loc_EF8B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EF85:				; CODE XREF: __RESET+1855j
		cmp	a, #00h
		bcc	loc_EF8B
		ld	a, #00h

loc_EF8B:				; CODE XREF: __RESET+1851j
					; __RESET+1859j ...
		cmp	#0A5h, unk_7F
		bne	loc_EF9C
		ld	a, #32h
		tbbs	bit5, unk_4F, loc_EF9C
		ld	a, #64h
		tbbs	bit6, unk_4F, loc_EF9C
		ld	a, #00h

loc_EF9C:				; CODE XREF: __RESET+1864j
					; __RESET+1868j ...
		st	a, unk_6D
		clr	a
		tbbc	bit0, unk_46, loc_EFA4
		or	a, #01h

loc_EFA4:				; CODE XREF: __RESET+1875j
		tbbc	bit1, unk_46, loc_EFA9
		or	a, #02h

loc_EFA9:				; CODE XREF: __RESET:loc_EFA4j
		tbbc	bit5, unk_4E, loc_EFAE
		or	a, #80h

loc_EFAE:				; CODE XREF: __RESET:loc_EFA9j
		tbbc	bit0, unk_4F, loc_EFB3
		or	a, #08h

loc_EFB3:				; CODE XREF: __RESET:loc_EFAEj
		tbbc	bit4, unk_4F, loc_EFB8
		or	a, #10h

loc_EFB8:				; CODE XREF: __RESET:loc_EFB3j
		ld	b, unk_E5
		and	b, #04h
		add	a, b
		st	a, unk_E5
		jmp	loc_F19A
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_EFC2:				; CODE XREF: __RESET+170Fp
		st	b, unk_52
		ld	a, unk_E7
		clr	b
		div	d, unk_52
		bcc	loc_EFD2
		ld	a, unk_E9
		jsr	sub_E498
		bra	loc_F006
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EFD2:				; CODE XREF: sub_EFC2+7j
		st	b, unk_52
		ld	a, unk_E9
		jsr	sub_E498
		clrb	bit7, unk_40
		sub	d, unk_13F
		bcc	loc_EFE6
		setb	bit7, unk_40
		neg	a
		neg	b
		subc	a, #00h

loc_EFE6:				; CODE XREF: sub_EFC2+1Cj
		mov	d, y
		ld	a, unk_52
		clr	b
		jsr	sub_D553
		mov	y, d
		tbbc	bit7, unk_40, loc_EFFE
		st	d, unk_52
		ld	d, unk_13F
		sub	d, unk_52
		bcc	loc_F006
		clr	a
		clr	b
		bra	loc_F006
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EFFE:				; CODE XREF: sub_EFC2+2Cj
		add	d, unk_13F
		bcc	loc_F006
		ld	d, #0FFFFh

loc_F006:				; CODE XREF: sub_EFC2+Ej sub_EFC2+36j	...
		st	d, unk_15E
		sub	d, unk_70
		bcc	loc_F01B
		cmp	d, #0D800h
		bcc	loc_F015
		ld	d, #0D800h

loc_F015:				; CODE XREF: sub_EFC2+4Ej
		shra	a
		rorc	b
		shra	a
		rorc	b
		bra	loc_F025
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F01B:				; CODE XREF: sub_EFC2+49j
		cmp	d, #2800h
		ble	loc_F023
		ld	d, #2800h

loc_F023:				; CODE XREF: sub_EFC2+5Cj
		shr	d
		shr	d

loc_F025:				; CODE XREF: sub_EFC2+57j
		add	a, #80h
		st	d, unk_52
		ld	x, #014Ch
		xch	a, x + 00h
		xch	b, x + 01h
		xch	a, x + 02h
		xch	b, x + 03h
		ld	d, unk_14E
		sub	a, #80h
		neg	a
		neg	b
		subc	a, #00h
		add	d, unk_14C
		ld	x, #0D453h
		bsr	sub_F06A
		sub	a, #80h
		bcs	loc_F057
		bsr	sub_F0B0
		add	a, unk_5A
		bcs	loc_F053
		cmp	a, #64h
		bcs	locret_F069

loc_F053:				; CODE XREF: sub_EFC2+8Bj
		ld	a, #64h
		bra	locret_F069
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F057:				; CODE XREF: sub_EFC2+85j
		neg	a
		neg	b
		subc	a, #00h
		bsr	sub_F0B0
		neg	a
		bne	loc_F064
		ld	a, unk_5A
		bra	locret_F069
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F064:				; CODE XREF: sub_EFC2+9Cj
		add	a, unk_5A
		bcs	locret_F069
		clr	a

locret_F069:				; CODE XREF: sub_EFC2+8Fj sub_EFC2+93j ...
		ret
; End of function sub_EFC2


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F06A:				; CODE XREF: sub_EFC2+81p
		sub	a, #80h
		bcs	loc_F07A
		bsr	sub_F0D1
		sub	a, #80h
		bcc	loc_F088
		neg	a
		neg	b
		subc	a, #00h
		bra	loc_F098
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F07A:				; CODE XREF: sub_F06A+2j
		neg	a
		neg	b
		subc	a, #00h
		bsr	sub_F0D1
		sub	a, #80h
		bcc	loc_F098
		neg	a
		neg	b
		subc	a, #00h

loc_F088:				; CODE XREF: sub_F06A+8j
		jsr	sub_D553
		st	y, unk_52
		mov	a, b
		xch	a, unk_53
		add	a, #80h
		bcc	locret_F097
		ld	d, #0FFFFh

locret_F097:				; CODE XREF: sub_F06A+28j
		ret
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F098:				; CODE XREF: sub_F06A+Ej sub_F06A+18j
		jsr	sub_D553
		st	y, unk_52
		mov	a, b
		xch	a, unk_53
		neg	a
		neg	b
		subc	a, #00h
		add	a, #80h
		bcs	locret_F0AF
		cmp	d, #8000h
		beq	locret_F0AF
		clr	a
		clr	b

locret_F0AF:				; CODE XREF: sub_F06A+3Cj sub_F06A+41j
		ret
; End of function sub_F06A


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F0B0:				; CODE XREF: sub_EFC2+87p sub_EFC2+99p
		st	d, unk_52
		ld	a, #0C8h
		mul	a, unk_52
		cmpz	a
		bne	loc_F0CE
		st	b, unk_52
		ld	a, #0C8h
		mul	a, unk_53
		add	a, unk_52
		bcs	loc_F0CE
		shl	b
		bcc	loc_F0CA
		add	a, #01h
		bcs	loc_F0CE

loc_F0CA:				; CODE XREF: sub_F0B0+14j
		cmp	a, #64h
		ble	locret_F0D0

loc_F0CE:				; CODE XREF: sub_F0B0+7j sub_F0B0+11j	...
		ld	a, #64h

locret_F0D0:				; CODE XREF: sub_F0B0+1Cj
		ret
; End of function sub_F0B0


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F0D1:				; CODE XREF: sub_F06A+4p sub_F06A+14p
		mov	d, y
		ld	a, unk_E9
		cmp	a, #04h
		bne	loc_F0DA
		inc	x
		inc	x

loc_F0DA:				; CODE XREF: sub_F0D1+5j
		ld	d, x + 00h
		ret
; End of function sub_F0D1


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F0DD:				; CODE XREF: __RESET:loc_EE1Cp
		ld	a, unk_E8
		sub	a, #02h
		bcc	loc_F0E4
		clr	a

loc_F0E4:				; CODE XREF: sub_F0DD+4j
		cmp	#05h, unk_5D
		bcs	loc_F107
		ld	y, #0D2F4h
		tbbc	bit2, unk_46, loc_F0F2
		ld	y, #0D300h

loc_F0F2:				; CODE XREF: sub_F0DD+Fj
		cmp	a, #01h
		bne	loc_F0FB
		tbbc	bit1, unk_48, loc_F0FB
		ld	a, #03h

loc_F0FB:				; CODE XREF: sub_F0DD+17j sub_F0DD+19j
		mul	a, #03h
		add	y, b
		ld	a, unk_5D
		sub	a, #05h
		add	y, a
		ld	b, y + 00h
		bra	locret_F147
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F107:				; CODE XREF: sub_F0DD+Aj
		ld	y, #0D30Ch
		mul	a, #2Ch
		add	y, b
		ld	a, unk_5E
		inc	a
		tbbc	bit6, unk_4E, loc_F114
		clr	a

loc_F114:				; CODE XREF: sub_F0DD+33j
		mul	a, #04h
		add	y, b
		ld	d, y + 00h
		st	a, unk_53
		st	b, unk_55
		ld	d, y + 02h
		st	a, unk_57
		st	b, unk_56
		ld	y, #0D046h
		jsr	sub_F148
		st	a, unk_52
		ld	y, #0D0A0h
		jsr	sub_F148
		st	a, unk_54
		ld	#0FFh, unk_58
		ld	y, #0146h
		ld	b, unk_13E
		dec	b
		add	y, b
		ld	b, y + 00h
		ld	y, #0052h
		jsr	sub_D62F
		mov	a, b

locret_F147:				; CODE XREF: sub_F0DD+28j
		ret
; End of function sub_F0DD


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F148:				; CODE XREF: sub_F0DD+49p sub_F0DD+51p
		ld	a, unk_E8
		dec	a
		dec	a
		mul	a, #0Fh
		add	y, b
		inc	y
		ld	b, unk_5E
		tbbc	bit6, unk_4E, loc_F156
		clr	b

loc_F156:				; CODE XREF: sub_F148+Aj
		add	y, b
		ld	a, y + 00h
		ret
; End of function sub_F148


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F15A:				; CODE XREF: __RESET+150Fp
					; __RESET+152Bp ...
		ld	a, #06h
		tbbs	bit6, unk_4E, loc_F168
		ld	a, #05h
		cmp	#06h, unk_5E
		bcc	loc_F168
		ld	a, unk_5E

loc_F168:				; CODE XREF: sub_F15A+2j sub_F15A+Aj
		add	x, a
		ld	a, x + 00h
		ret
; End of function sub_F15A


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F16C:				; CODE XREF: __RESET+16EDp
					; __RESET+1708p ...
		push	y
		ld	y, #0F17Eh
		ld	b, unk_E8
		dec	b
		add	y, b
		ld	b, y + 00h
		pull	y
		add	y, b

loc_F178:				; CODE XREF: sub_F182+16j
		ld	b, unk_5E
		add	y, b
		ld	b, y + 00h
		ret
; End of function sub_F16C

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  00h
		.db  00h
		.db  0Dh
		.db  1Ah

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F182:				; CODE XREF: __RESET+160Bp
		ld	a, unk_E9
		cmp	a, #01h
		bne	loc_F18C
		tbbs	bit3, unk_49, loc_F18C
		clr	a

loc_F18C:				; CODE XREF: sub_F182+4j sub_F182+6j
		cmp	a, #03h
		bne	loc_F194
		tbbc	bit2, unk_46, loc_F194
		inc	a

loc_F194:				; CODE XREF: sub_F182+Cj sub_F182+Ej
		shl	a
		add	y, a
		ld	y, y + 00h
		bra	loc_F178
; End of function sub_F182

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_F19A:				; CODE XREF: __RESET+1895j
		tbs	bit3, unk_40
		bne	loc_F1A6
		ld	x, #00D5h
		ld	a, #03h
		jsr	sub_D5FE

loc_F1A6:				; CODE XREF: __RESET+1A72j
		tbs	bit1, unk_40
		bne	loc_F1AD
		jsr	sub_F1F1

loc_F1AD:				; CODE XREF: __RESET+1A7Ej
		tbbc	bit3, unk_4E, loc_F1B2
		clr	unk_B3

loc_F1B2:				; CODE XREF: __RESET:loc_F1ADj
		tbbs	bit0, unk_4E, loc_F1B7
		clr	unk_B4

loc_F1B7:				; CODE XREF: __RESET:loc_F1B2j
		cmp	#0Ah, unk_61
		bcc	loc_F1C3
		cmp	#0Ah, unk_60
		bcc	loc_F1C3
		clr	unk_D4

loc_F1C3:				; CODE XREF: __RESET+1A90j
					; __RESET+1A95j
		cmp	#0Ah, unk_62
		bcc	loc_F1DC
		clr	a
		tbbs	bit6, unk_4E, loc_F1EB
		tbbs	bit7, unk_4F, loc_F1EB
		ld	a, unk_5D
		inc	a
		bra	loc_F1EB
; END OF FUNCTION CHUNK	FOR __RESET
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  06h
		.db  00h
		.db  04h
		.db  02h
		.db  07h
		.db  01h
		.db  05h
		.db  03h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_F1DC:				; CODE XREF: __RESET+1A9Cj
		ld	a, PORTB	; Port B Data Register
		and	a, #03h
		tbbc	bit7, unk_41, loc_F1E5
		add	a, #04h

loc_F1E5:				; CODE XREF: __RESET+1AB6j
		ld	y, #0F1D4h
		add	y, a
		ld	a, y + 00h

loc_F1EB:				; CODE XREF: __RESET+1A9Fj
					; __RESET+1AA2j ...
		st	a, unk_7E
		jmp	loc_F30C
; END OF FUNCTION CHUNK	FOR __RESET
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  1Bh

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F1F1:				; CODE XREF: __RESET+1A80p

; FUNCTION CHUNK AT F2D0 SIZE 0000003C BYTES

		cmp	#02h, unk_B6
		bcs	loc_F223
		ld	a, PORTB	; Port B Data Register
		and	a, #03h
		ld	b, PORTD_ASRIN	; Port D Data Register / ASR Input Data
		and	b, #03h
		st	d, unk_54
		xor	a, unk_55
		mov	a, b
		and	a, unk_54
		and	b, unk_55
		shl	b
		shl	b
		shl	b
		add	a, b
		ld	y, #012Ch
		ld	x, #0F1F0h
		jsr	sub_D5DD
		bra	loc_F226
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  37h ; 7
		.db 0AAh ; ª
		.db  0Ah
		.db  79h ; y
		.db  7Ah ; z
		.db 0B5h ; µ
		.db  43h ; C
		.db  05h
		.db  79h ; y
		.db  7Ah ; z
		.db 0B3h ; ³
		.db  42h ; B
		.db  03h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F223:				; CODE XREF: sub_F1F1+3j
		jmp	locret_F30B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F226:				; CODE XREF: sub_F1F1+23j
		ld	a, unk_12C
		mov	a, b
		and	a, #03h
		and	b, #18h
		shr	b
		shr	b
		shr	b
		st	d, unk_52
		add	a, b
		cmpb	a, #01h
		beq	loc_F23A
		setb	bit0, unk_4B

loc_F23A:				; CODE XREF: sub_F1F1+45j
		cmpb	a, #02h
		beq	loc_F240
		setb	bit1, unk_4B

loc_F240:				; CODE XREF: sub_F1F1+4Bj
		ld	a, unk_55
		xor	a, #0FFh
		and	a, #03h
		st	a, unk_54
		ld	a, unk_52
		and	a, unk_54
		ld	b, unk_54
		xor	b, #0FFh
		and	b, unk_12D
		add	a, b
		st	a, unk_12D
		ld	a, unk_55
		st	a, unk_54
		ld	a, unk_53
		and	a, unk_54
		shl	a
		shl	a
		shl	a
		ld	b, unk_54
		shl	b
		shl	b
		shl	b
		xor	b, #0FFh
		and	b, unk_12D
		add	a, b
		st	a, unk_12D
		ld	a, unk_55
		cmpb	a, #01h
		beq	loc_F27B
		ld	#08h, unk_52
		bra	loc_F27E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F27B:				; CODE XREF: sub_F1F1+83j
		ld	#01h, unk_52

loc_F27E:				; CODE XREF: sub_F1F1+88j
		bsr	sub_F292
		ld	a, unk_55
		cmpb	a, #02h
		beq	loc_F28B
		ld	#10h, unk_52
		bra	loc_F28E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F28B:				; CODE XREF: sub_F1F1+93j
		ld	#02h, unk_52

loc_F28E:				; CODE XREF: sub_F1F1+98j
		bsr	sub_F292
		bra	loc_F2D0
; End of function sub_F1F1


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F292:				; CODE XREF: sub_F1F1:loc_F27Ep
					; sub_F1F1:loc_F28Ep
		ld	a, unk_12D
		and	a, unk_52
		bne	loc_F2AC
		ld	a, unk_52
		bsr	sub_F2BD
		ld	a, x + 00h
		cmp	a, #08h
		bcc	locret_F2BC
		cmp	#03h, unk_C1
		bcs	locret_F2BC
		clr	x + 00h
		bra	locret_F2BC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F2AC:				; CODE XREF: sub_F292+5j
		ld	b, unk_12F
		and	b, unk_52
		bne	locret_F2BC
		bsr	sub_F2BD
		ld	a, x + 00h
		inc	a
		beq	locret_F2BC
		st	a, x + 00h

locret_F2BC:				; CODE XREF: sub_F292+Fj sub_F292+14j	...
		ret
; End of function sub_F292


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F2BD:				; CODE XREF: sub_F292+9p sub_F292+21p
		ld	x, #0130h
		cmp	a, #08h
		beq	locret_F2CF
		inc	x
		cmp	a, #01h
		beq	locret_F2CF
		inc	x
		cmp	a, #10h
		beq	locret_F2CF
		inc	x

locret_F2CF:				; CODE XREF: sub_F2BD+5j sub_F2BD+Aj ...
		ret
; End of function sub_F2BD

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR sub_F1F1

loc_F2D0:				; CODE XREF: sub_F1F1+9Fj
		ld	x, #0130h
		ld	b, #08h
		ld	a, unk_12D
		cmpb	a, #08h
		beq	loc_F2E0
		cmp	b, x + 00h
		ble	loc_F2EA+1

loc_F2E0:				; CODE XREF: sub_F1F1+E9j
		cmpb	a, #01h
		beq	loc_F2E8
		cmp	b, x + 01h
		ble	loc_F2EA+1

loc_F2E8:				; CODE XREF: sub_F1F1+F1j
		clrb	bit0, unk_4C

loc_F2EA:				; CODE XREF: sub_F1F1+EDj sub_F1F1+F5j
		cmp	x, #771Ch
		cmpb	a, #10h
		beq	loc_F2F5
		cmp	b, x + 02h
		ble	loc_F2FF+1

loc_F2F5:				; CODE XREF: sub_F1F1+FEj
		cmpb	a, #02h
		beq	loc_F2FD
		cmp	b, x + 03h
		ble	loc_F2FF+1

loc_F2FD:				; CODE XREF: sub_F1F1+106j
		clrb	bit1, unk_4C

loc_F2FF:				; CODE XREF: sub_F1F1+102j
					; sub_F1F1+10Aj
		cmp	x, #773Ch
		ld	a, unk_12D
		or	a, unk_12F
		st	a, unk_12F

locret_F30B:				; CODE XREF: sub_F1F1:loc_F223j
		ret
; END OF FUNCTION CHUNK	FOR sub_F1F1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_F30C:				; CODE XREF: __RESET+1AC3j
		cmp	#0FFh, unk_C9
		bcs	loc_F357+1
		tbbs	bit0, unk_4F, loc_F357+1
		jsr	sub_E485
		cmp	a, #04h
		beq	loc_F357+1
		cmp	#14h, unk_6E
		bcs	loc_F357+1
		cmp	#06h, unk_70
		bcc	loc_F342
		clr	unk_CF
		cmp	#0F4h, unk_CE
		bcs	loc_F32E
		setb	bit5, unk_4A

loc_F32E:				; CODE XREF: __RESET+1C00j
		ld	a, unk_12F
		bne	loc_F35C
		tbbs	bit6, unk_4A, loc_F35C
		tbbs	bit2, unk_4A, loc_F35C
		cmp	#0F4h, unk_CD
		bcs	loc_F35E
		setb	bit6, unk_4B
		bra	loc_F35E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F342:				; CODE XREF: __RESET+1BF9j
		cmp	#3Dh, unk_CF
		bcs	loc_F35E
		clrb	bit6, unk_4B
		clrb	bit5, unk_4A
		clrb	bit6, unk_4C
		di
		ld	d, unk_86
		and	a, #0BFh
		or	b, #40h
		st	d, unk_86
		ei

loc_F357:				; CODE XREF: __RESET+1BE5j
					; __RESET+1BE7j ...
		cmp	x, #72CFh
		clr	unk_CE

loc_F35C:				; CODE XREF: __RESET+1C07j
					; __RESET+1C09j ...
		clr	unk_CD

loc_F35E:				; CODE XREF: __RESET+1C12j
					; __RESET+1C16j ...
		ld	a, unk_6A
		cmp	#0A5h, unk_7F
		bne	loc_F368
		ld	a, unk_160

loc_F368:				; CODE XREF: __RESET+1C39j
		cmp	a, #5Ah
		bcs	loc_F379
		tbbc	bit0, PORTC, loc_F379 ;	Port C Data Register
		ld	a, unk_D0
		cmp	a, #3Dh
		bcs	loc_F39C
		setb	bit2, unk_4B
		bra	loc_F39C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F379:				; CODE XREF: __RESET+1C40j
					; __RESET+1C42j
		clr	unk_D0
		bra	loc_F39C
; END OF FUNCTION CHUNK	FOR __RESET
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F37D:				; CODE XREF: ROM:D8F3p
		cmp	#5Ah, unk_6A
		bcs	loc_F398+1
		tbbs	bit0, PORTC, loc_F398+1	; Port C Data Register
		cmp	#02h, unk_B7
		bcs	locret_F39B
		clrb	bit2, unk_4B
		clrb	bit2, unk_4C
		di
		ld	d, unk_86
		and	a, #0FBh
		or	b, #04h
		st	d, unk_86
		ei

loc_F398:				; CODE XREF: ROM:F380j	ROM:F382j
		cmp	x, #72B7h

locret_F39B:				; CODE XREF: ROM:F388j
		ret
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_F39C:				; CODE XREF: __RESET+1C49j
					; __RESET+1C4Dj ...
		cmp	#5Ah, unk_6D
		bcs	loc_F3AE
		tbbc	bit1, PORTC, loc_F3AE ;	Port C Data Register
		ld	a, unk_D1
		cmp	a, #3Dh
		bcs	loc_F3DB
		setb	bit3, unk_4B
		bra	loc_F3DB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F3AE:				; CODE XREF: __RESET+1C75j
					; __RESET+1C77j
		clr	unk_D1
		bra	loc_F3DB
; END OF FUNCTION CHUNK	FOR __RESET
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F3B2:				; CODE XREF: ROM:D8F6p
		cmp	#7Ah, unk_B3
		ble	loc_F3D7+1
		cmp	#7Ah, unk_B5
		ble	loc_F3D7+1
		cmp	#5Ah, unk_6D
		bcs	loc_F3D7+1
		tbbs	bit1, PORTC, loc_F3D7+1	; Port C Data Register
		cmp	#03h, unk_B8
		bcs	locret_F3DA
		clrb	bit3, unk_4B
		clrb	bit3, unk_4C
		di
		ld	d, unk_86
		and	a, #0F7h
		or	b, #08h
		st	d, unk_86
		ei

loc_F3D7:				; CODE XREF: ROM:F3B5j	ROM:F3BAj ...
		cmp	x, #72B8h

locret_F3DA:				; CODE XREF: ROM:F3C7j
		ret
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_F3DB:				; CODE XREF: __RESET+1C7Ej
					; __RESET+1C82j ...
		tbbc	bit6, unk_4F, loc_F3F2
		cmp	#0Ah, unk_62
		bcs	loc_F3FB
		cmp	#04h, unk_5E
		bcc	loc_F3FB
		ld	a, unk_D2
		cmp	a, #3Dh
		bcs	loc_F3FB
		setb	bit4, unk_4A
		bra	loc_F3FB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F3F2:				; CODE XREF: __RESET:loc_F3DBj
		cmp	#04h, unk_5E
		bcc	loc_F3F9
		clrb	bit4, unk_4A

loc_F3F9:				; CODE XREF: __RESET+1CCBj
		clr	unk_D2

loc_F3FB:				; CODE XREF: __RESET+1CB7j
					; __RESET+1CBCj ...
		tbs	bit4, unk_40
		beq	loc_F402
		jmp	loc_F541
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F402:				; CODE XREF: __RESET+1CD3j
		ld	a, unk_4C
		st	a, unk_54
		ld	a, unk_4B
		tbbc	bit5, RAMST, loc_F41A ;	Built-in RAM status
		cmp	#7Ah, unk_B5
		ble	loc_F41A
		cmp	#31h, unk_B4
		ble	loc_F41A
		cmp	#7Ah, unk_B3
		bgt	loc_F421

loc_F41A:				; CODE XREF: __RESET+1CDEj
					; __RESET+1CE4j ...
		clr	a
		st	a, unk_4B
		clrb	bit0, unk_4C
		clrb	bit1, unk_4C

loc_F421:				; CODE XREF: __RESET+1CEEj
		st	a, unk_52
		mov	a, b
		and	b, #03h
		and	a, unk_54
		and	a, #7Ch
		add	a, b
		mov	a, b
		st	a, unk_55
		ld	x, #0084h
		or	b, x + 00h
		bsr	sub_F442
		ld	b, unk_52
		and	b, #7Ch
		ld	x, #0086h
		or	b, x + 00h
		bsr	sub_F442
		bra	loc_F452
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F442:				; CODE XREF: __RESET+1D09p
					; __RESET+1D14p
		ld	a, x + 00h
		sub	a, b
		add	a, x + 01h
		xch	a, b
		st	d, x + 00h
		ret
; End of function sub_F442


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F44B:				; CODE XREF: __RESET+67p
		ld	a, unk_86
		and	a, #7Ch
		st	a, unk_4C
		ret
; End of function sub_F44B

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_F452:				; CODE XREF: __RESET+1D16j
		clr	b
		cmp	#31h, unk_B4
		bcc	loc_F45B
		jmp	loc_F4F0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F45B:				; CODE XREF: __RESET+1D2Cj
		tbbs	bit5, RAMST, loc_F461 ;	Built-in RAM status
		jmp	loc_F4EF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F461:				; CODE XREF: __RESET:loc_F45Bj
		tbbs	bit1, unk_4E, loc_F467
		tbbc	bit1, unk_4A, loc_F4D0

loc_F467:				; CODE XREF: __RESET:loc_F461j
		ld	a, unk_7D
		inc	a
		beq	loc_F491
		ld	b, unk_7C
		inc	b
		bne	loc_F49F
		ld	a, unk_7B
		beq	loc_F491
		dec	a
		beq	loc_F484
		ld	b, #78h
		cmpb	a, #0Fh
		bne	loc_F4CC
		mul	a, #10h
		ld	b, #69h
		bra	loc_F4CC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F484:				; CODE XREF: __RESET+1D4Cj
		st	a, unk_7B
		ld	a, unk_7D
		jsr	sub_F502
		beq	loc_F49A
		ld	b, #5Ah
		bra	loc_F4BE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F491:				; CODE XREF: __RESET+1D40j
					; __RESET+1D49j
		jsr	sub_F502
		bne	loc_F49A
		ld	b, #7Ch
		bra	loc_F4BC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F49A:				; CODE XREF: __RESET+1D61j
					; __RESET+1D6Aj
		clr	a
		ld	b, #3Bh
		bra	loc_F4BE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F49F:				; CODE XREF: __RESET+1D45j
		bvs	loc_F4A4
		jmp	loc_F4F7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F4A4:				; CODE XREF: __RESET:loc_F49Fj
		ld	a, unk_7B
		bne	loc_F4CA
		st	a, unk_7C
		tbbc	bit1, unk_4E, loc_F4D0
		setb	bit1, unk_4A
		ld	a, unk_7D
		bmi	loc_F4BA
		bne	loc_F4C2
		jsr	sub_F502
		bne	loc_F4C2

loc_F4BA:				; CODE XREF: __RESET+1D87j
		ld	b, #0FCh

loc_F4BC:				; CODE XREF: __RESET+1D6Ej
		ld	a, #80h

loc_F4BE:				; CODE XREF: __RESET+1D65j
					; __RESET+1D73j
		st	a, unk_7D
		bra	loc_F4F7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F4C2:				; CODE XREF: __RESET+1D89j
					; __RESET+1D8Ej
		st	a, unk_7D
		ld	y, #0F529h
		add	y, a
		ld	a, y + 02h

loc_F4CA:				; CODE XREF: __RESET+1D7Cj
		ld	b, #0F8h

loc_F4CC:				; CODE XREF: __RESET+1D52j
					; __RESET+1D58j
		st	a, unk_7B
		bra	loc_F4F7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F4D0:				; CODE XREF: __RESET+1D3Aj
					; __RESET+1D80j
		ld	b, unk_7C
		beq	loc_F4E1
		cmp	b, #80h
		beq	loc_F4E1
		inc	b
		bne	loc_F4DF
		ld	b, #69h
		bra	loc_F4F0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F4DF:				; CODE XREF: __RESET+1DAFj
		bvc	loc_F4F0

loc_F4E1:				; CODE XREF: __RESET+1DA8j
					; __RESET+1DACj
		ld	b, #0F8h
		ld	a, unk_55
		and	a, #70h
		bne	loc_F4F0
		tbbs	bit0, unk_4C, loc_F4F0
		tbbs	bit1, unk_4C, loc_F4F0

loc_F4EF:				; CODE XREF: __RESET+1D34j
		clr	b

loc_F4F0:				; CODE XREF: __RESET+1D2Ej
					; __RESET+1DB3j ...
		clrb	bit1, unk_4A
		ld	#0FFh, unk_7D
		clr	unk_7B

loc_F4F7:				; CODE XREF: __RESET+1D77j
					; __RESET+1D96j ...
		st	b, unk_7C
		bpz	loc_F4FD+1
		setb	bit5, DOUT

loc_F4FD:				; CODE XREF: __RESET+1DCFj
		cmp	x, #75A6h
		bra	loc_F541
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F502:				; CODE XREF: __RESET+1D5Ep
					; __RESET:loc_F491p ...
		ld	y, #0F529h
		add	a, #03h
		add	y, a
		cmp	a, #15h
		bgt	loc_F529
		ld	x, #0000h
		ld	b, y + 00h
		add	x, b
		ld	b, y + 01h
		cmpb	b, x + 00h
		beq	sub_F502

loc_F518:				; CODE XREF: sub_F502+25j
		cmp	a, #15h
		bcc	loc_F52A
		ld	b, y + 02h
		cmp	b, y + 05h
		bne	loc_F52A
		add	a, #03h
		inc	y
		inc	y
		inc	y
		bra	loc_F518
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F529:				; CODE XREF: sub_F502+8j
		clr	a

loc_F52A:				; CODE XREF: sub_F502+18j sub_F502+1Ej
		cmpz	a
		ret
; End of function sub_F502

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  84h ; „
		.db  10h
		.db  24h ; $
		.db  84h ; „
		.db  08h
		.db  64h ; d
		.db  84h ; „
		.db  20h
		.db  16h
		.db  84h ; „
		.db  01h
		.db  26h ; &
		.db  84h ; „
		.db  02h
		.db  36h ; 6
		.db  84h ; „
		.db  04h
		.db  46h ; F
		.db  84h ; „
		.db  40h ; @
		.db  76h ; v
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __RESET

loc_F541:				; CODE XREF: __RESET+1CD5j
					; __RESET+1DD6j
		clr	a
		tbbc	bit3, unk_48, loc_F547
		or	a, #01h

loc_F547:				; CODE XREF: __RESET+1E18j
		tbbc	bit4, unk_4F, loc_F54C
		or	a, #02h

loc_F54C:				; CODE XREF: __RESET:loc_F547j
		ld	b, unk_6A
		beq	loc_F562
		ld	b, unk_E2
		cmpb	b, #08h
		bne	loc_F560
		and	b, #07h
		cmp	b, #04h
		beq	loc_F560
		cmp	b, #05h
		bne	loc_F562

loc_F560:				; CODE XREF: __RESET+1E2Aj
					; __RESET+1E30j
		or	a, #08h

loc_F562:				; CODE XREF: __RESET+1E24j
					; __RESET+1E34j
		tbbc	bit6, unk_4F, loc_F56F
		tbbs	bit4, unk_4A, loc_F56F
		cmp	#07h, unk_5D
		bcs	loc_F56F
		or	a, #04h

loc_F56F:				; CODE XREF: __RESET:loc_F562j
					; __RESET+1E3Bj ...
		di
		ld	b, unk_109
		and	b, #80h
		add	a, b
		ld	b, unk_45
		and	b, #70h
		add	a, b
		st	a, unk_109
		ei
		setb	bit7, unk_4A
		jmp	loc_D7BE
; END OF FUNCTION CHUNK	FOR __RESET

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F584:				; CODE XREF: __RESET+C70p

; FUNCTION CHUNK AT F5D4 SIZE 00000094 BYTES

		tbbc	bit1, unk_4E, loc_F5A1
		tbbc	bit0, unk_4F, loc_F5A1
		tbbc	bit4, unk_4F, loc_F5A3
		tbbc	bit2, unk_4F, loc_F5A3
		tbbc	bit3, unk_4F, loc_F5A3
		tbbs	bit6, unk_4E, loc_F5A3
		ld	a, unk_D3
		cmp	a, #0Ch
		bcs	locret_F5A6
		ld	#0A5h, unk_7F
		bra	loc_F5D4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F5A1:				; CODE XREF: sub_F584j	sub_F584+3j
		clr	unk_7F

loc_F5A3:				; CODE XREF: sub_F584+6j sub_F584+9j ...
		clr	a
		st	a, unk_D3

locret_F5A6:				; CODE XREF: sub_F584+16j
					; sub_F584:loc_F5D4j
		ret
; End of function sub_F584


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F5A7:				; CODE XREF: sub_F584+93p sub_F584+ABp ...
		push	b
		clrb	bit3, DOUT
		ld	b, #10h

loc_F5AC:				; CODE XREF: sub_F5A7+9j
		tbbs	bit7, SSD, loc_F5B4 ; Serial Status Data Register
		dec	b
		bne	loc_F5AC
		bra	loc_F5C6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F5B4:				; CODE XREF: sub_F5A7:loc_F5ACj
		tbbs	bit6, SSD, loc_F5C6 ; Serial Status Data Register
		ld	b, SIDR_SODR	; Serial Input/Output Data Register
		and	b, #1Dh
		cmp	b, #1Ch
		bne	loc_F5C6
		tbbc	bit6, PORTA, loc_F5C6 ;	Port A Data Register
		setb	bit3, DOUT
		pull	b
		ret
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F5C6:				; CODE XREF: sub_F5A7+Bj
					; sub_F5A7:loc_F5B4j ...
		ld	y, #0040h
		clr	a
		clr	b

loc_F5CB:				; CODE XREF: sub_F5A7+28j
		st	d, [y]
		cmp	y, #0340h
		bcs	loc_F5CB
		jmp	__RESET
; End of function sub_F5A7

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR sub_F584

loc_F5D4:				; CODE XREF: sub_F584+1Bj
		tbbc	bit3, unk_4E, locret_F5A6
		ld	a, #34h
		st	a, ASR0N	; ASR0 neg edge	counter	value MSB

loc_F5DB:				; CODE XREF: sub_F584+DEj
		di
		clr	a
		clr	b
		st	d, IMASK	; Interrupt Request Mask MSB
		ld	#00h, DDRA	; Port A i/o config
		ld	#38h, DDRB	; Port B i/o config
		clr	PBCS		; Port B Control Register
		ld	#28h, PORTB	; Port B Data Register
		ld	#18h, ASR0P	; ASR0 pos edge	counter	value MSB
		st	d, ASR1N	; ASR1 neg edge	counter	value MSB
		ld	#02h, PORTD_ASRIN ; Port D Data	Register / ASR Input Data
		ld	#63h, ASR0PL	; ASR0 pos edge	counter	value LSB
		ld	a, SSD		; Serial Status	Data Register
		ld	a, SIDR_SODR	; Serial Input/Output Data Register
		setb	bit5, RAMST
		setb	bit5, DOUT
		clr	a

loc_F5FF:				; CODE XREF: sub_F584+9Aj
		mov	a, b
		ld	y, #0040h

loc_F603:				; CODE XREF: sub_F584+84j
		st	a, [y]
		inc	a
		cmp	y, #0340h
		bcs	loc_F603
		ld	y, #0040h

loc_F60D:				; CODE XREF: sub_F584+91j
		ld	a, [y]
		cmp	a, b
		bne	loc_F646
		inc	b
		cmp	y, #0340h
		bcs	loc_F60D
		bsr	sub_F5A7
		tbbc	bit4, PBCS, loc_F665 ; Port B Control Register
		inc	b
		mov	b, a
		bne	loc_F5FF
		ld	x, #0C000h
		clr	a
		clr	b

loc_F625:				; CODE XREF: sub_F584+B4j
		ld	y, #0100h

loc_F628:				; CODE XREF: sub_F584+A9j
		add	d, x + 00h
		inc	x
		inc	x
		dec	y
		bne	loc_F628
		jsr	sub_F5A7
		tbbc	bit4, PBCS, loc_F665 ; Port B Control Register
		cmp	x, #0000h
		bne	loc_F625
		cmp	d, #0AA55h
		bne	loc_F646
		clrb	bit5, DOUT
		shl	b
		ld	a, #19h
		bra	loc_F64F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F646:				; CODE XREF: sub_F584+8Bj sub_F584+B9j
		clr	b

loc_F647:				; CODE XREF: sub_F584+DCj
		tbs	bit5, DOUT	; DOUT Data Register
		beq	loc_F64D
		clrb	bit5, DOUT

loc_F64D:				; CODE XREF: sub_F584+C5j
		ld	a, #7Dh

loc_F64F:				; CODE XREF: sub_F584+C0j sub_F584+D8j
		ld	x, #0F9C4h

loc_F652:				; CODE XREF: sub_F584+CFj
		inc	x
		bne	loc_F652
		jsr	sub_F5A7
		tbbc	bit4, PBCS, loc_F665 ; Port B Control Register
		dec	a
		bne	loc_F64F
		cmp	b, #0AAh
		bne	loc_F647
		jmp	loc_F5DB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F665:				; CODE XREF: sub_F584+95j sub_F584+AEj ...
		jmp	loc_F5C6
; END OF FUNCTION CHUNK	FOR sub_F584

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


		; public IV6
IV6:					; DATA XREF: ROM:FFEAo
		clrb	bit1, IRQLL
		push	x
		push	y
		jsr	sub_F695
		pull	y
		pull	x
		reti
; End of function IV6


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


		; public IVc
IVc:					; DATA XREF: ROM:FFF6o
		clrb	bit4, IRQL
		push	x
		ld	x, #007Ah
		ld	a, #01h
		jsr	sub_D5FE
		pull	x
		ld	a, TIMER	; Timer	MSB (bit11~bit18)
		and	a, #0Eh
		shr	a
		cmp	a, unk_7E
		bcc	loc_F689+1
		clrb	bit7, DOUT

loc_F689:				; CODE XREF: IVc+13j
		cmp	x, #77E6h
		cmpb	a, #01h
		bne	locret_F694
		setb	bit2, unk_47
		setb	bit1, IRQLL

locret_F694:				; CODE XREF: IVc+1Cj
		reti
; End of function IVc


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F695:				; CODE XREF: IV6+4p
		tbbs	bit2, unk_47, loc_F69B
		jmp	locret_F724
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F69B:				; CODE XREF: sub_F695j
		clrb	bit2, unk_47
		brn	#6Eh
		ld	x, #0F69Eh
		ld	a, PORTA	; Port A Data Register
		xor	a, #20h
		ld	y, #0108h
		jsr	sub_D5DD
		ld	a, unk_108
		and	a, #6Eh
		tbbc	bit7, unk_47, loc_F6B6
		or	a, #80h

loc_F6B6:				; CODE XREF: sub_F695+1Cj
		tbbc	bit1, unk_4F, loc_F6BB
		or	a, #01h

loc_F6BB:				; CODE XREF: sub_F695:loc_F6B6j
		tbbc	bit7, unk_4E, loc_F6C0
		or	a, #10h

loc_F6C0:				; CODE XREF: sub_F695:loc_F6BBj
		st	a, unk_108
		clrb	bit7, unk_47
		ld	a, TIMER	; Timer	MSB (bit11~bit18)
		shr	a
		shr	a
		shr	a
		bcc	loc_F6F5
		shr	a
		bcc	loc_F6E8
		shr	a
		bcc	loc_F6D9
		shr	a
		bcs	loc_F6F2
		clrb	bit4, unk_40
		bra	loc_F6F2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F6D9:				; CODE XREF: sub_F695+3Bj
		clrb	bit3, unk_40
		clrb	bit0, unk_44
		clrb	bit4, unk_44
		ld	a, unk_E7
		inc	a
		beq	loc_F6E6
		st	a, unk_E7

loc_F6E6:				; CODE XREF: sub_F695+4Dj
		bra	loc_F6F2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F6E8:				; CODE XREF: sub_F695+38j
		clrb	bit2, unk_40
		ld	x, #00D4h
		ld	a, #01h
		jsr	sub_D5FE

loc_F6F2:				; CODE XREF: sub_F695+3Ej sub_F695+42j ...
		jmp	loc_F70E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F6F5:				; CODE XREF: sub_F695+35j
		clrb	bit1, unk_40
		clrb	bit5, unk_40
		ld	x, #00B9h
		ld	a, #0Eh
		jsr	sub_D5FE
		tbbc	bit7, unk_4A, loc_F70E
		ld	a, unk_109
		xor	a, #80h
		st	a, unk_109
		clrb	bit7, unk_4A

loc_F70E:				; CODE XREF: sub_F695:loc_F6F2j
					; sub_F695+6Cj
		clrb	bit0, unk_40
		ld	x, #00A0h
		ld	a, #19h
		jsr	sub_D5FE
		jsr	sub_FA33
		jsr	sub_DBD5
		jsr	sub_C200
		jsr	sub_DE10

locret_F724:				; CODE XREF: sub_F695+3j
		ret
; End of function sub_F695


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


		; public IVd
IVd:					; DATA XREF: ROM:FFF8o
		clrb	bit5, IRQLL
		cmp	#0Eh, unk_A2
		bcc	loc_F737
		ld	a, unk_E0
		add	a, #40h
		st	a, unk_E0
		bcs	loc_F737
		jmp	locret_F7A0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F737:				; CODE XREF: IVd+5j IVd+Dj
		push	y
		ld	y, #0122h
		cmp	#0Eh, unk_A2
		bcs	loc_F74D

loc_F740:				; CODE XREF: IVd+30j
		ld	b, #08h
		clr	a

loc_F743:				; CODE XREF: IVd+20j
		st	a, [y]
		dec	b
		bne	loc_F743
		st	d, unk_70
		st	a, unk_DF
		bra	loc_F790
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F74D:				; CODE XREF: IVd+19j
		ld	d, ASR1N	; ASR1 neg edge	counter	value MSB
		sub	d, unk_12A
		cmp	d, #0C350h
		bcc	loc_F740
		xch	a, y + 00h
		xch	b, y + 01h
		xch	a, y + 02h
		xch	b, y + 03h
		xch	a, y + 04h
		xch	b, y + 05h
		xch	a, y + 06h
		xch	b, y + 07h
		ld	a, unk_E0
		cmpb	a, #04h
		bne	loc_F775
		cmpb	a, #01h
		bne	loc_F77B
		ld	d, y + 00h
		bra	loc_F778
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F775:				; CODE XREF: IVd+46j
		ld	d, y + 00h
		shr	d

loc_F778:				; CODE XREF: IVd+4Ej
		shr	d
		st	d, y + 00h

loc_F77B:				; CODE XREF: IVd+4Aj
		cmp	#04h, unk_DF
		bcc	loc_F782
		inc	unk_DF

loc_F782:				; CODE XREF: IVd+59j
		ld	a, y + 00h
		cmp	a, #08h
		bcc	loc_F790
		cmp	a, #04h
		bcc	loc_F794
		ld	a, #04h
		bra	loc_F796
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F790:				; CODE XREF: IVd+26j IVd+61j
		ld	a, #0C1h
		bra	loc_F796
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F794:				; CODE XREF: IVd+65j
		ld	a, #82h

loc_F796:				; CODE XREF: IVd+69j IVd+6Dj
		st	a, unk_E0
		ld	d, ASR1N	; ASR1 neg edge	counter	value MSB
		st	d, unk_12A
		clr	unk_A2
		pull	y

locret_F7A0:				; CODE XREF: IVd+Fj
		reti
; End of function IVd


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


		; public IV9
IV9:					; DATA XREF: ROM:FFF0o
		clrb	bit0, IRQL
		push	x
		tbs	bit3, unk_44
		bne	loc_F7E4
		ld	d, CPR0		; Timer	comparison #0 MSB
		st	d, unk_139
		ld	a, unk_6A
		cmp	#0A5h, unk_7F
		bne	loc_F7B7
		ld	a, unk_160

loc_F7B7:				; CODE XREF: IV9+11j
		cmp	a, #05h
		ble	loc_F7DC
		setb	bit0, DOUT
		clrb	bit0, DOM
		cmp	a, #5Fh
		bcc	loc_F7E0
		mul	a, #43h
		shr	d
		shr	d
		add	d, CPR0		; Timer	comparison #0 MSB
		mov	d, x
		di
		sub	d, TIMER	; Timer	MSB (bit11~bit18)
		bmi	loc_F7DC
		cmp	d, #0004h
		bcs	loc_F7DC
		st	x, CPR0		; Timer	comparison #0 MSB
		setb	bit0, DOM
		clrb	bit0, DOUT
		bra	loc_F809
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F7DC:				; CODE XREF: IV9+18j IV9+2Cj ...
		clrb	bit0, DOUT
		clrb	bit0, DOM

loc_F7E0:				; CODE XREF: IV9+20j
		ld	d, CPR0		; Timer	comparison #0 MSB
		bra	loc_F802
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F7E4:				; CODE XREF: IV9+5j
		clrb	bit0, DOUT
		clrb	bit0, DOM
		ld	d, unk_139
		add	d, #068Bh
		mov	d, x
		di
		sub	d, TIMER	; Timer	MSB (bit11~bit18)
		bmi	loc_F7FD
		cmp	d, #0004h
		bcs	loc_F7FD
		st	x, CPR0		; Timer	comparison #0 MSB
		bra	loc_F807
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F7FD:				; CODE XREF: IV9+51j IV9+56j
		mov	x, d
		setb	bit0, DOUT
		clrb	bit0, DOM

loc_F802:				; CODE XREF: IV9+41j
		add	d, #068Bh
		st	d, CPR0		; Timer	comparison #0 MSB

loc_F807:				; CODE XREF: IV9+5Aj
		clrb	bit3, unk_44

loc_F809:				; CODE XREF: IV9+39j
		ei
		pull	x
		reti
; End of function IV9


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


		; public IV7
IV7:					; DATA XREF: ROM:FFECo
		clrb	bit1, IRQL
		push	x
		tbs	bit7, unk_44
		bne	loc_F847
		ld	d, CPR1		; Timer	comparison #1 MSB
		st	d, unk_13B
		ld	a, unk_6D
		cmp	a, #0Ah
		ble	loc_F83F
		setb	bit1, DOUT
		clrb	bit1, DOM
		cmp	a, #5Ah
		bcc	loc_F843
		mul	a, #43h
		shr	d
		shr	d
		add	d, CPR1		; Timer	comparison #1 MSB
		mov	d, x
		di
		sub	d, TIMER	; Timer	MSB (bit11~bit18)
		bmi	loc_F83F
		cmp	d, #0004h
		bcs	loc_F83F
		st	x, CPR1		; Timer	comparison #1 MSB
		setb	bit1, DOM
		clrb	bit1, DOUT
		bra	loc_F86C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F83F:				; CODE XREF: IV7+10j IV7+24j ...
		clrb	bit1, DOUT
		clrb	bit1, DOM

loc_F843:				; CODE XREF: IV7+18j
		ld	d, CPR1		; Timer	comparison #1 MSB
		bra	loc_F865
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F847:				; CODE XREF: IV7+5j
		clrb	bit1, DOUT
		clrb	bit1, DOM
		ld	d, unk_13B
		add	d, #068Bh
		mov	d, x
		di
		sub	d, TIMER	; Timer	MSB (bit11~bit18)
		bmi	loc_F860
		cmp	d, #0004h
		bcs	loc_F860
		st	x, CPR1		; Timer	comparison #1 MSB
		bra	loc_F86A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F860:				; CODE XREF: IV7+49j IV7+4Ej
		mov	x, d
		setb	bit1, DOUT
		clrb	bit1, DOM

loc_F865:				; CODE XREF: IV7+39j
		add	d, #068Bh
		st	d, CPR1		; Timer	comparison #1 MSB

loc_F86A:				; CODE XREF: IV7+52j
		clrb	bit7, unk_44

loc_F86C:				; CODE XREF: IV7+31j
		ei
		pull	x
		reti
; End of function IV7

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

		; public IV4
IV4:					; DATA XREF: ROM:FFE6o
		clrb	bit7, IRQLL
		ld	d, 34h		; Bad Address
		sub	d, unk_120
		cmp	d, #00BCh
		bgt	loc_F883
		cmp	#04h, unk_A4
		bcc	loc_F883
		jmp	locret_F96F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F883:				; CODE XREF: ROM:F879j	ROM:F87Ej
		push	x
		push	y
		cmp	#1Dh, unk_C3
		ble	loc_F890
		ld	x, #0FFFFh
		jmp	loc_F8EA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F890:				; CODE XREF: ROM:F888j
		ld	a, unk_DE
		add	a, #40h
		st	a, unk_DE
		bcs	loc_F89B
		jmp	loc_F91C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F89B:				; CODE XREF: ROM:F896j
		ld	d, 34h		; Bad Address
		sub	d, unk_DC
		shr	d
		shr	d
		shr	d
		st	d, unk_DC
		ld	a, unk_C3
		mov	a, b
		and	b, #0E0h
		and	a, #1Fh
		bne	loc_F8B9
		cmp	#1Fh, unk_DC
		bne	loc_F8C3
		cmpz	b
		beq	loc_F8C3
		sub	b, #20h
		bra	loc_F8C3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F8B9:				; CODE XREF: ROM:F8ABj
		cmp	a, #1Fh
		bne	loc_F8C3
		ld	a, unk_DC
		bne	loc_F8C3
		add	b, #20h

loc_F8C3:				; CODE XREF: ROM:F8B0j	ROM:F8B3j ...
		mov	b, a
		add	a, unk_DC
		ld	b, unk_DD
		mov	d, x
		ld	a, unk_DE
		cmpb	a, #08h
		bne	loc_F8D6
		cmpb	a, #20h
		bne	loc_F8D9+1
		mov	x, d
		bra	loc_F8D8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F8D6:				; CODE XREF: ROM:F8CDj
		mov	x, d
		shl	d

loc_F8D8:				; CODE XREF: ROM:F8D4j
		shl	d

loc_F8D9:				; CODE XREF: ROM:F8D1j
		brn	#3Ch
		mov	d, x
		cmp	d, #04E2h
		bgt	loc_F8EA
		cmp	d, #0271h
		bcc	loc_F8EC+1
		ld	a, #20h
		bra	loc_F8EF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F8EA:				; CODE XREF: ROM:F88Dj	ROM:F8DFj
		ld	a, #0C8h

loc_F8EC:				; CODE XREF: ROM:F8E4j
		cmp	x, #0CA90h

loc_F8EF:				; CODE XREF: ROM:F8E8j
		st	a, unk_DE
		mov	x, d
		ld	y, #0118h
		xch	a, y + 00h
		xch	b, y + 01h
		xch	a, y + 02h
		xch	b, y + 03h
		xch	a, y + 04h
		xch	b, y + 05h
		add	d, unk_118
		bcs	loc_F910
		add	d, unk_11A
		bcs	loc_F910
		add	d, unk_11C
		bcc	loc_F913

loc_F910:				; CODE XREF: ROM:F904j	ROM:F909j
		ld	d, #0FFFFh

loc_F913:				; CODE XREF: ROM:F90Ej
		st	d, unk_11E
		clr	unk_C3
		ld	d, 34h		; Bad Address
					; Bad Address
		st	d, unk_DC

loc_F91C:				; CODE XREF: ROM:F898j
		clr	unk_DB
		clr	a
		clr	b
		st	d, unk_137
		ld	x, unk_135
		inc	x
		beq	loc_F92C
		st	x, unk_135

loc_F92C:				; CODE XREF: ROM:F927j
		cmp	#0FAh, unk_D4
		bcs	loc_F94A
		tbbs	bit0, unk_4F, loc_F94A
		clrb	bit5, unk_4B
		clrb	bit5, unk_4C
		ld	d, unk_86
		and	a, #0DFh
		or	b, #20h
		st	d, unk_86
		ld	x, unk_135
		cmp	x, #1F40h
		bcs	loc_F94A
		setb	bit4, unk_4B

loc_F94A:				; CODE XREF: ROM:F92Fj	ROM:F931j ...
		cmp	#0Dh, unk_A4
		bgt	loc_F95B
		ld	a, unk_D8
		add	a, #10h
		bcc	loc_F959
		setb	bit2, unk_4A
		bra	loc_F95B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F959:				; CODE XREF: ROM:F953j
		st	a, unk_D8

loc_F95B:				; CODE XREF: ROM:F94Dj	ROM:F957j
		clrb	bit3, unk_4A
		cmp	#0Dh, unk_A4
		bcc	loc_F964
		clr	unk_A3

loc_F964:				; CODE XREF: ROM:F960j
		clr	unk_A4
		ld	d, 34h		; Bad Address
		st	d, unk_120
		pull	y
		pull	x
		setb	bit7, unk_47

locret_F96F:				; CODE XREF: ROM:F880j
		reti

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


		; public IV5
IV5:					; DATA XREF: ROM:FFE8o
		clrb	bit4, IRQLL
		push	x
		push	y
		ld	d, ASR0N	; ASR0 neg edge	counter	value MSB
		mov	d, x
		cmp	#56h, unk_C2
		ble	loc_F981
		ld	d, #0FFFFh
		bra	loc_F9B9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F981:				; CODE XREF: IV5+Aj
		sub	d, unk_D9
		cmp	d, #01F4h
		bgt	loc_F990
		cmp	#02h, unk_C2
		bcc	loc_F990
		jmp	loc_FA24
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F990:				; CODE XREF: IV5+16j IV5+1Bj
		shr	d
		shr	d
		shr	d
		st	d, unk_D9
		ld	a, unk_C2
		mov	a, b
		and	b, #0E0h
		and	a, #1Fh
		bne	loc_F9AA
		cmp	#1Fh, unk_D9
		bne	loc_F9B4
		cmpz	b
		beq	loc_F9B4
		sub	b, #20h
		bra	loc_F9B4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F9AA:				; CODE XREF: IV5+2Cj
		cmp	a, #1Fh
		bne	loc_F9B4
		ld	a, unk_D9
		bne	loc_F9B4
		add	b, #20h

loc_F9B4:				; CODE XREF: IV5+31j IV5+34j ...
		mov	b, a
		add	a, unk_D9
		ld	b, unk_DA

loc_F9B9:				; CODE XREF: IV5+Fj
		ld	y, #0110h
		xch	a, y + 00h
		xch	b, y + 01h
		xch	a, y + 02h
		xch	b, y + 03h
		xch	a, y + 04h
		xch	b, y + 05h
		add	d, unk_110
		bcs	loc_F9D7
		add	d, unk_112
		bcs	loc_F9D7
		add	d, unk_114
		bcc	loc_F9DA

loc_F9D7:				; CODE XREF: IV5+5Bj IV5+60j
		ld	d, #0FFFFh

loc_F9DA:				; CODE XREF: IV5+65j
		st	d, unk_116
		st	x, unk_D9
		clr	unk_D8
		clr	a
		clr	b
		st	d, unk_135
		ld	x, unk_137
		inc	x
		beq	loc_F9EF
		st	x, unk_137

loc_F9EF:				; CODE XREF: IV5+7Aj
		cmp	#0FAh, unk_D4
		bcs	loc_FA0D
		tbbs	bit0, unk_4F, loc_FA0D
		clrb	bit4, unk_4B
		clrb	bit4, unk_4C
		ld	d, unk_86
		and	a, #0EFh
		or	b, #10h
		st	d, unk_86
		ld	x, unk_137
		cmp	x, #07D0h
		bcs	loc_FA0D
		setb	bit5, unk_4B

loc_FA0D:				; CODE XREF: IV5+82j IV5+84j ...
		cmp	#13h, unk_C2
		bgt	loc_FA1E
		ld	a, unk_DB
		add	a, #40h
		bcc	loc_FA1C
		setb	bit3, unk_4A
		bra	loc_FA1E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_FA1C:				; CODE XREF: IV5+A6j
		st	a, unk_DB

loc_FA1E:				; CODE XREF: IV5+A0j IV5+AAj
		clr	unk_C2
		clrb	bit2, unk_4A
		setb	bit7, unk_47

loc_FA24:				; CODE XREF: IV5+1Dj
		pull	y
		pull	x
		reti
; End of function IV5


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_FA27:				; CODE XREF: __RESET+7Ep
		ld	#0FEh, unk_A0
		ld	a, #34h
		or	a, #0C0h
		st	a, unk_E1
		st	a, ASR0N	; ASR0 neg edge	counter	value MSB
		ret
; End of function sub_FA27


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_FA33:				; CODE XREF: sub_F695+83p
		cmp	#04h, unk_A1
		bcs	loc_FA42
		ld	a, unk_E1
		and	a, #0BFh
		st	a, unk_E1
		st	a, ASR0N	; ASR0 neg edge	counter	value MSB
		bra	loc_FA4F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_FA42:				; CODE XREF: sub_FA33+3j
		ld	#0FFh, TIMER3	; Timer	LSB (bit0~bit2)
		ld	a, TIMER3	; Timer	LSB (bit0~bit2)
		cmpb	a, #40h
		beq	loc_FA61
		cmpb	a, #08h
		bne	loc_FA51

loc_FA4F:				; CODE XREF: sub_FA33+Dj
		clr	unk_A1

loc_FA51:				; CODE XREF: sub_FA33+1Aj
		ld	a, unk_E1
		or	a, #40h
		st	a, unk_E1
		st	a, ASR0N	; ASR0 neg edge	counter	value MSB
		ld	d, #3900h
		st	d, ASR3		; ASR3 edge counter value MSB
		ld	#0B7h, TIMER3	; Timer	LSB (bit0~bit2)

loc_FA61:				; CODE XREF: sub_FA33+16j
		cmp	#04h, unk_A0
		bcs	locret_FA7C
		ld	a, unk_E1
		and	a, #7Fh
		st	a, ASR0N	; ASR0 neg edge	counter	value MSB
		or	a, #80h
		st	a, unk_E1
		st	a, ASR0N	; ASR0 neg edge	counter	value MSB
		ld	d, #38F0h
		st	d, ASR2		; ASR2 edge counter value MSB
		ld	#4Fh, TIMER3	; Timer	LSB (bit0~bit2)
		clr	unk_A0

locret_FA7C:				; CODE XREF: sub_FA33+31j
		ret
; End of function sub_FA33


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


		; public IV0
IV0:					; DATA XREF: ROM:FFDEo
		ld	b, RAMST	; Built-in RAM status
		ld	b, unk_1C
		clrb	bit2, IRQLL
		ld	#0FFh, TIMER3	; Timer	LSB (bit0~bit2)
		ld	a, TIMER3	; Timer	LSB (bit0~bit2)
		cmpb	a, #30h
		bne	loc_FA8E
		clr	unk_A0

loc_FA8E:				; CODE XREF: IV0+Dj
		ld	d, #38F0h
		st	d, ASR2		; ASR2 edge counter value MSB
		ld	#4Fh, TIMER3	; Timer	LSB (bit0~bit2)
		reti
; End of function IV0

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  5Fh ; _
		.db  03h
		.db 0D7h ; ×
		.db  2Ah ; *

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


		; public IVe
IVe:					; DATA XREF: ROM:FFE0o	ROM:FFE2o ...
		ld	d, #13B6h	; IV1
					; IV2
					; IV3
					; IV8
					; IVa
					; IVb
		st	d, IRQL		; Interrupt Request Flag MSB
		reti
; End of function IVe


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


		; public IVf
IVf:					; DATA XREF: ROM:FFFCo
		ld	s, #02FFh
		ld	d, #0D72Ah
		push	d
		push	d
		clr	a
		push	a
		clrb	bit7, IMASK
		reti
; End of function IVf

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.dw 0C2ABh		; checksum (most likely)
		.dw 8568h		; chip version
		.dw IV0			; External interrupt 0
		.dw IVe			; External interrupt 1
		.dw IVe			; External interrupt 2
		.dw IVe			; External interrupt 3
		.dw IV4			; External interrupt 4
		.dw IV5			; External interrupt 5
		.dw IV6			; External interrupt 6
		.dw IV7			; External interrupt 7
		.dw IVe			; External interrupt 8
		.dw IV9			; External interrupt 9
		.dw IVe			; External interrupt a
		.dw IVe			; External interrupt b
		.dw IVc			; External interrupt c
		.dw IVd			; External interrupt d
		.dw IVe			; External interrupt e
		.dw IVf			; External interrupt f
		.dw __RESET		; Processor reset
; end of 'ROM'


		.end
