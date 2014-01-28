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
_CPR4		.equ $38
_CPR5		.equ $3A
_CPR6		.equ $3C
_CPR7		.equ $3E
;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org $8000
reset:
	ld    	#$02, _OMODE	; change to mode 2
	di    			; disable interrupts
	ld    	s, #$01bf	; set stack near top of RAM
	ld    	#18h, _SMRC_SIR	; set SMRC cintrol reg to 0001 1000
	clr	_DOUT
	clr	_DOM
	clr	_IMASK
	ld	#$02,_IMASKL
	ld	#$08,$1D
	clr	_IRQL
	clr	_IRQLL
	ei			;could not invoke an interrupt yet

start	ld	d,_TIMER
delay	cmp	d,_TIMER
	ble	delay


	ld	a,_DOM
	jsr	putch
	ld	a,_LDOUT
	jsr	putch
	ld	a,_DOUT
	jsr	putch
	ld	a,#$55
	jsr	putch

	ld	d,_TIMER	;generate a short pulse using output compare
	add	d,#$007F
	st	d,_CPR4

	ld	#$10,_DOUT
	ld	#$EF,_DOM

	ld	#$10,_DOM
	ld	#$EF,_DOUT

	bra	start

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

;=========================================================================interrupts
.org $9000
int0	
	di
	ld	a,#$00
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti


int1
	di
	ld	a,#$01
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti



int2
	di
	ld	a,#$02
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




int3
	di
	ld	a,#$03
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




int4
	di
	ld	a,#$04
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




int5	di
	ld	a,#$05
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti





int6	di
	ld	a,#$06
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




int7			;timer periodic
	ld	x,_TIMER
	push	x
	ld	a,#$07
	jsr	putch
	pull	a
	jsr	putch
	pull	a
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




int8			;timer periodic
	ld	x,_TIMER
	push	x
	ld	a,#$08
	jsr	putch
	pull	a
	jsr	putch
	pull	a
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




int9			;timer periodic
	ld	x,_TIMER
	push	x
	ld	a,#$09
	jsr	putch
	pull	a
	jsr	putch
	pull	a
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




inta			;timer periodic
	ld	x,_TIMER
	push	x
	ld	a,#$0a
	jsr	putch
	pull	a
	jsr	putch
	pull	a
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




intb	
	ld	x,_TIMER
	push	x
	ld	a,#$0b
	jsr	putch
	pull	a
	jsr	putch
	pull	a
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




intc	di
	ld	a,#$0c
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




intd	di
	ld	a,#$0d
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




inte	di
	ld	a,#$0e
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




__NMI	
	di
	ld	a,#$0f
	jsr	putch
	clrb	bit7,_IMASK
	reti



.org 0ffdeh
IV0:            .dw int0              ; External interrupt 0
IV1:            .dw int1              ; External interrupt 1
IV2:            .dw int2              ; External interrupt 2
IV3:            .dw int3              ; External interrupt 3
IV4:            .dw int4              ; External interrupt 4
IV5:            .dw int5              ; External interrupt 5
IV6:            .dw int6              ; External interrupt 6
IV7:            .dw int7              ;Compare 1
IV8:            .dw int8              ;Compare 2
IV9:            .dw int9              ;Compare 0
IVa:            .dw inta              ;Compare 3
IVb:            .dw intb              ;Timer overflow
IVc:            .dw intc              ; External interrupt c
IVd:            .dw intd              ; External interrupt d
IVe:            .dw inte              ; External interrupt e
IVf:            .dw __NMI             ; Non-Maskable Interrupt
RESET:		.dw reset             ; Processor reset
		.end

