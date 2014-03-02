;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TASM  test2 source
; Test operation of the Denso 8X Processor:  D8X
;
; This program test the difference between opcodes 0A and 3A shows as equal
; in the Kashi disassembler (Zero Page Direct)
; stxz	0A%8u	st x, $&0a	Store Register contents to memory M[op.2] = X
; stxz	3A%8u	st x, $&0a	Store Register contents to memory M[op.1] = X	
; ---------------------------------------------------------------------------
; Segment type: Pure code
;.segment code
		.msfirst		; Big Endian processor

_DDRA           .equ $00                ; Port A i/o config
_DDRB           .equ $01                ; Port B i/o config
_WDC            .equ $02                ; watch dog timer
_TIMER3         .equ $03                ; Timer LSB (bit0~bit2)
_TIMER          .equ $04                ; Timer MSB (bit11~bit18)
_TIMERL         .equ $05                ; Timer LSB (bit3~bit10)
_SIDR_SODR      .equ $06                ; Serial Input/Output Data Register
_SMRC_SIR       .equ $07                ; Serial Master Register Control
_CPR0           .equ $08                ; Timer comparison #0 MSB
_CPR0L          .equ $09                ; Timer comparison #0 LSB
_CPR1           .equ $0A                ; Timer comparison #1 MSB
_CPR1L          .equ $0B                ; Timer comparison #1 LSB
_CPR2           .equ $0C                ; Timer comparison #2 MSB
_CPR2L          .equ $0D                ; Timer comparison #2 LSB
_CPR3           .equ $0E                ; Timer comparison #3 MSB
_CPR3L          .equ $0F                ; Timer comparison #3 LSB
_ASR0P          .equ $10                ; ASR0 pos edge counter value MSB
_ASR0PL         .equ $11                ; ASR0 pos edge counter value LSB
_ASR0N          .equ $12                ; ASR0 neg edge counter value MSB
_ASR0NL         .equ $13                ; ASR0 neg edge counter value LSB
_ASR1P          .equ $14                ; ASR1 pos edge counter value MSB
_ASR1PL         .equ $15                ; ASR1 pos edge counter value LSB
_ASR1N          .equ $16                ; ASR1 neg edge counter value MSB
_ASR1NL         .equ $17                ; ASR1 neg edge counter value LSB
_ASR2           .equ $18                ; ASR2 edge counter value MSB
_ASR2L          .equ $19                ; ASR2 edge counter value LSB
_ASR3           .equ $1A                ; ASR3 edge counter value MSB
_ASR3L          .equ $1B                ; ASR3 edge counter value LSB
_OMODE          .equ $1F                ; Mode control Register
_PORTA          .equ $20                ; Port A Data Register
_PORTAL         .equ $21                ; Port A Latch
_PORTB          .equ $22                ; Port B Data Register
_PBCS           .equ $23                ; Port B Control Register
_TAIT           .equ $24                ; Timer ASR Control
_LDOUT          .equ $25                ; Latch DOUT
_DOUT           .equ $26                ; DOUT Data Register
_DOM            .equ $27                ; DOUT Control Register
_PORTC          .equ $28                ; Port C Data Register
_PORTD_ASRIN    .equ $29                ; Port D Data Register / ASR Input Data
_RAMST          .equ $2A                ; Built-in RAM status
_SSD            .equ $2B                ; Serial Status Data Register
_IRQL           .equ $2C                ; Interrupt Request Flag MSB
_IRQLL          .equ $2D                ; Interrupt Request Flag LSB
_IMASK          .equ $2E                ; Interrupt Request Mask MSB

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org $8000
reset:
	ld    	#$02, _OMODE	; change to mode 6
	di    			; disable interrupts
	ld    	s, #$01bf		; set stack to top of RAM
	ld    	#38h, _SMRC_SIR	; set SMRC cintrol reg to 0001 1000

toyinit ld      #0C2h, _PORTA    ; Port A Data Register
	ld      #0C3h, _DDRA     ; Port A i/o config
	ld      #10h, _PORTB     ; Port B Data Register
	ld      #3Fh, _DDRB      ; Port B i/o config
	clr     _PBCS            ; Port B Control Register
	ld      #1Eh, _ASR0P     ; ASR0 pos edge counter value MSB
majik	ld      #08h, $1D
	ld      #30h, _ASR0NL    ; ASR0 neg edge counter value LSB
	ld      #34h, _ASR0N     ; ASR0 neg edge counter value MSB
	ld      d, #3900h
	st      d, _ASR2         ; ASR2 edge counter value MSB
	ld      d, #38F0h
	st      d, _ASR3         ; ASR3 edge counter value MSB
	ld      #00h, _ASR1N     ; ASR1 neg edge counter value MSB
	ld      #00h, _ASR1NL    ; ASR1 neg edge counter value LSB
	ld      #0Fh, _ASR0PL    ; ASR0 pos edge counter value LSB
	ld      #0Bh, _PORTD_ASRIN ; Port D Data Register / ASR Input Data
	ld      #33h, _TAIT      ; Timer ASR Control
	ld      #0FDh, _ASR1P    ; ASR1 pos edge counter value MSB
	ld      #00h, _DOUT      ; turn off all
	ld      #00h, _DOM       ; DOUT Control Register

	setb    bit5, _RAMST



start	ld	#$55, $1E
	ld	#$55, _TIMER3
	ld	d,_TIMER
delay	cmp	d,_TIMER
	ble	delay

	ld	d,_TIMER
	add	d,#8
delay2	cmp	d,_TIMER
	ble	delay2

	ld	d,_TIMER
	add	d,#8
delay3	cmp	d,_TIMER
	ble	delay3

	ld	x,#$0FFFF

read	inc 	x
	ld 	a,x+0
	bsr	putch
	cmp	x,#$003A
	bcs	read

	bra	start


infloop	bra infloop
;=========================================================================putch
putch	
	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	putch		; loop until bit 6 set
	st	a,_SIDR_SODR
pwait	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	pwait		; loop until bit 6 set
	ret

.org 0ffdeh
IV0:            .dw reset              ; External interrupt 0
IV1:            .dw reset              ; External interrupt 1
IV2:            .dw reset              ; External interrupt 2
IV3:            .dw reset              ; External interrupt 3
IV4:            .dw reset              ; External interrupt 4
IV5:            .dw reset              ; External interrupt 5
IV6:            .dw reset              ; External interrupt 6
IV7:            .dw reset              ; External interrupt 7
IV8:            .dw reset              ; External interrupt 8
IV9:            .dw reset              ; External interrupt 9
IVa:            .dw reset              ; External interrupt a
IVb:            .dw reset              ; External interrupt b
IVc:            .dw reset              ; External interrupt c
IVd:            .dw reset              ; External interrupt d
IVe:            .dw reset              ; External interrupt e
IVf:            .dw reset              ; External interrupt f
RESET:		.dw reset             ; Processor reset
		.end

