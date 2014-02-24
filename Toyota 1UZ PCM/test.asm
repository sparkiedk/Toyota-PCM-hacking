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
	ld    	#$02, _OMODE	; change to mode 6
	di    			; disable interrupts
	ld    	s, #$01bf	; set stack near top of RAM
	ld    	#18h, _SMRC_SIR	; set SMRC cintrol reg to 0001 1000

	ld	#08,$1d
crap	ld	#$55,$1e
	
	ld	d,_TIMER
	add	d, #1000
delay	cmp	d,_TIMER
	bgt	delay		;delay while D>Timer (D-Timer !=0), must hit it precisly.
	bra 	crap


start	ld	#$0FF,_DOUT
	ld	d,_TIMER
	add	d, #1000
delay1	cmp	d,_TIMER
	bgt	delay1		;delay while D>Timer (D-Timer !=0), must hit it precisly.
	clr	_DOUT
;	ld	a,#$55
;	jsr	putch
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




int4			;ASR3
	di
	ld	a,#$04
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




int5	di		;ASR0
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




int7	di
	ld	a,#$07
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




int8	di
	ld	a,#$08
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




int9	di
	ld	a,#$09
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




inta	di
	ld	a,#$0a
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




intb	di
	ld	a,#$0b
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




intd	di		;ASR1
	ld	a,#$0d
	jsr	putch
	clr	_IRQL
	clr	_IRQLL
	reti




inte	di		;ASR2
	ld	d,_TIMER
	push	b
	jsr	putch
	pull	a
	jsr	putch
	ld	d,_ASR2
	push	b
	jsr	putch
	pull	a
	jsr	putch
	ld	a,#$55
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
IV4:            .dw int4              ; 4- ASR3
IV5:            .dw int5              ; 5- ASR0
IV6:            .dw int6              ; External interrupt 6
IV7:            .dw int7              ; External interrupt 7
IV8:            .dw int8              ; External interrupt 8
IV9:            .dw int9              ; External interrupt 9
IVa:            .dw inta              ; External interrupt a
IVb:            .dw intb              ; External interrupt b
IVc:            .dw intc              ; External interrupt c
IVd:            .dw intd              ; D- ASR1
IVe:            .dw inte              ; E- ASR2
IVf:            .dw __NMI              ; Non-Maskable Interrupt
RESET:		.dw reset             ; Processor reset
		.end

