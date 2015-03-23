
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org $8000
reset:
	ld    	#$02, _OMODE	; change to mode 6
	di    			; disable interrupts
	ld    	s, #$01bf	; set stack near top of RAM
	ld    	#00h, _SMRC_SIR	; set SMRC cintrol reg to 0001 0000
	ld	#0Ch,_SSD

	clr	_IRQL
	clr	_IRQLL
	clr	_IMASKL	;danger! danger! high voltage!

	ld	#00h,_IMASK
	ld	#0Ch,_IMASKL

	ld      #0FFh, _TAIT
	ld      #04Fh, _TIMER3

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

	
	ei
;infloop bra	infloop

start	ld	d,_TIMER
delay	cmp	d,_TIMER
	ble	delay



	ld	a,_SSD
	jsr	putch
	ld	a,_SMRC_SIR
	jsr	putch
	ld	a,_SIDR_SODR
	jsr	putch

	ld	a,#$55
	jsr	putch

s	ei

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

