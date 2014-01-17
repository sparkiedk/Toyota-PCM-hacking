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
	ld    	s, #$01bf		; set stack to top of RAM
	ld    	#18h, _SMRC_SIR	; set SMRC cintrol reg to 0001 1000

	clr	_IRQL
	clr	_IRQLL
	clr	_IMASK	;danger! danger! high voltage!
	clr	_IMASKL
	ei

	nmi

infloop	bra infloop


wait1	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	wait1		; loop until bit 6 set
	ld	a,_IRQL
	st    	a, _SIDR_SODR	; store character from a into SODR


wait2	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	wait2		; loop until bit 6 set
	ld	a,_IRQLL
	st    	a, _SIDR_SODR	; store character from a into SODR


wait3	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	wait3		; loop until bit 6 set
	ld	a,_IMASK
	st    	a, _SIDR_SODR	; store character from a into SODR

wait4	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	wait4		; loop until bit 6 set
	ld	a,_IMASKL
	st    	a, _SIDR_SODR	; store character from a into SODR

wait5	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	wait5		; loop until bit 6 set
	ld	a,#$55
	st    	a, _SIDR_SODR	; store character from a into SODR

	bra	wait1


.org $9000
int0	
	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	int0		; loop until bit 6 set
	ld	a,#$00
	st    	a, _SIDR_SODR	; store character from a into SODR
iwait0	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwait0		; loop until bit 6 set
	reti


int1	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	int1		; loop until bit 6 set
	ld	a,#$01
	st    	a, _SIDR_SODR	; store character from a into SODR
iwait1	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwait1		; loop until bit 6 set
	reti

int2	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	int2		; loop until bit 6 set
	ld	a,#$02
	st    	a, _SIDR_SODR	; store character from a into SODR
iwait2	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwait2		; loop until bit 6 set
	reti

int3	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	int3		; loop until bit 6 set
	ld	a,#$03
	st    	a, _SIDR_SODR	; store character from a into SODR
iwait3	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwait3		; loop until bit 6 set
	reti

int4	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	int4		; loop until bit 6 set
	ld	a,#$04
	st    	a, _SIDR_SODR	; store character from a into SODR
iwait4	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwait4		; loop until bit 6 set
	reti

int5	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	int0		; loop until bit 6 set
	ld	a,#$05
	st    	a, _SIDR_SODR	; store character from a into SODR
iwait5	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwait5		; loop until bit 6 set
	reti


int6	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	int6		; loop until bit 6 set
	ld	a,#$06
	st    	a, _SIDR_SODR	; store character from a into SODR
iwait6	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwait6		; loop until bit 6 set
	reti

int7	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	int7		; loop until bit 6 set
	ld	a,#$07
	st    	a, _SIDR_SODR	; store character from a into SODR
iwait7	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwait7		; loop until bit 6 set
	reti

int8	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	int8		; loop until bit 6 set
	ld	a,#$08
	st    	a, _SIDR_SODR	; store character from a into SODR
iwait8	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwait8		; loop until bit 6 set
	reti

int9	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	int9		; loop until bit 6 set
	ld	a,#$09
	st    	a, _SIDR_SODR	; store character from a into SODR
iwait9	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwait9		; loop until bit 6 set
	reti

inta	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	inta		; loop until bit 6 set
	ld	a,#$0a
	st    	a, _SIDR_SODR	; store character from a into SODR
iwaita	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwaita		; loop until bit 6 set
	reti

intb	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	intb		; loop until bit 6 set
	ld	a,#$0b
	st    	a, _SIDR_SODR	; store character from a into SODR
iwaitb	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwaitb		; loop until bit 6 set
	reti

intc	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	intc		; loop until bit 6 set
	ld	a,#$0c
	st    	a, _SIDR_SODR	; store character from a into SODR
iwaitc	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwaitc		; loop until bit 6 set
	reti

intd	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	intd		; loop until bit 6 set
	ld	a,#$0d
	st    	a, _SIDR_SODR	; store character from a into SODR
iwaitd	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwaitd		; loop until bit 6 set
	reti

inte	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	inte		; loop until bit 6 set
	ld	a,#$0e
	st    	a, _SIDR_SODR	; store character from a into SODR
iwaite	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwaite		; loop until bit 6 set
	reti

__NMI	
	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	__NMI		; loop until bit 6 set
	ld	a,#$0f
	st    	a, _SIDR_SODR	; store character from a into SODR
iwaitf	ld    	b, _SSD		; load serial status data reg into b
	and   	b, #$20		; mask (bit 5)  0010 0000
	beq   	iwaitf		; loop until bit 6 set
	inc	$4f
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
IV7:            .dw int7              ; External interrupt 7
IV8:            .dw int8              ; External interrupt 8
IV9:            .dw int9              ; External interrupt 9
IVa:            .dw inta              ; External interrupt a
IVb:            .dw intb              ; External interrupt b
IVc:            .dw intc              ; External interrupt c
IVd:            .dw intd              ; External interrupt d
IVe:            .dw inte              ; External interrupt e
IVf:            .dw __NMI              ; Non-Maskable Interrupt
RESET:		.dw reset             ; Processor reset
		.end

