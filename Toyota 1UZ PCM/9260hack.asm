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
_IRQL           .equ $2C                ; Interrupt Request Flag MSB bit 4 - pin 4 (edge sensitive)
_IRQLL          .equ $2D                ; Interrupt Request Flag LSB bit 0 - pin 5 low (level sensitive) 
_IMASK          .equ $2E                ; Interrupt Request Mask MSB
_IMASKL		.equ $2F
;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org $8000
reset:

infloop	bra	infloop

;=========================================================================putch
putch
	ld    	#18h, _SMRC_SIR	; set SMRC cintrol reg to 0001 1000
	clr	_SSD	
pwai	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	pwai		; loop until bit 6 set
	st	a,_SIDR_SODR
pwait	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	pwait		; loop until bit 6 set

	clr	_IRQL
	clr	_IRQLL
	ret

;=========================================================================interrupts
.org $8100
int0	
	di

	ld	a,#$00
	jsr	putch
	reti

.org $8110
int1
	di
	ld	a,#$01
	jsr	putch
	reti


.org $8120
int2
	di
	ld	a,#$02
	jsr	putch
	reti



.org $8130
int3
	di
	ld	a,#$03
	jsr	putch
	reti


.org $8140
int4
	di
	ld	a,#$04
	jsr	putch
	reti



.org $8150
int5	di
	ld	a,#$05
	jsr	putch
	reti




.org $8160
int6	di
	ld	a,#$06
	jsr	putch
	reti



.org $8170
int7	di
	ld	a,#$07
	jsr	putch
	reti



.org $8180
int8	di
	ld	a,#$08
	jsr	putch
	reti



.org $8190
int9	di
	ld	a,#$09
	jsr	putch
	reti



.org $81a0
inta	di
	ld	a,#$0a
	jsr	putch
	reti



.org $81b0
intb	di
	ld	a,#$0b
	jsr	putch
	reti



.org $81c0
intc	di
	ld	a,#$0c
	jsr	putch
	reti



.org $81d0
intd	di
	ld	a,#$0d
	jsr	putch
	reti



.org $81e0
inte	di
	ld	a,#$0e
	jsr	putch
	reti


.org $BFFE
	.dw	1234h
.end