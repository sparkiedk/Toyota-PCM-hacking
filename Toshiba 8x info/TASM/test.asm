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

_DDRA           .equ 00h                ; Port A i/o config
_DDRB           .equ 01h                ; Port B i/o config
_WDC            .equ 02h                ; watch dog timer
_TIMER3         .equ 03h                ; Timer LSB (bit0~bit2)
_TIMER          .equ 04h                ; Timer MSB (bit11~bit18)
_TIMERL         .equ 05h                ; Timer LSB (bit3~bit10)
_SIDR_SODR      .equ 06h                ; Serial Input/Output Data Register
_SMRC_SIR       .equ 07h                ; Serial Master Register Control
_CPR0           .equ 08h                ; Timer comparison #0 MSB
_CPR0L          .equ 09h                ; Timer comparison #0 LSB
_CPR1           .equ 0Ah                ; Timer comparison #1 MSB
_CPR1L          .equ 0Bh                ; Timer comparison #1 LSB
_CPR2           .equ 0Ch                ; Timer comparison #2 MSB
_CPR2L          .equ 0Dh                ; Timer comparison #2 LSB
_CPR3           .equ 0Eh                ; Timer comparison #3 MSB
_CPR3L          .equ 0Fh                ; Timer comparison #3 LSB
_ASR0P          .equ 10h                ; ASR0 pos edge counter value MSB
_ASR0PL         .equ 11h                ; ASR0 pos edge counter value LSB
_ASR0N          .equ 12h                ; ASR0 neg edge counter value MSB
_ASR0NL         .equ 13h                ; ASR0 neg edge counter value LSB
_ASR1P          .equ 14h                ; ASR1 pos edge counter value MSB
_ASR1PL         .equ 15h                ; ASR1 pos edge counter value LSB
_ASR1N          .equ 16h                ; ASR1 neg edge counter value MSB
_ASR1NL         .equ 17h                ; ASR1 neg edge counter value LSB
_ASR2           .equ 18h                ; ASR2 edge counter value MSB
_ASR2L          .equ 19h                ; ASR2 edge counter value LSB
_ASR3           .equ 1Ah                ; ASR3 edge counter value MSB
_ASR3L          .equ 1Bh                ; ASR3 edge counter value LSB
_OMODE          .equ 1Fh                ; Mode control Register
_PORTA          .equ 20h                ; Port A Data Register
_PORTAL         .equ 21h                ; Port A Latch
_PORTB          .equ 22h                ; Port B Data Register
_PBCS           .equ 23h                ; Port B Control Register
_TAIT           .equ 24h                ; Timer ASR Control
_LDOUT          .equ 25h                ; Latch DOUT
_DOUT           .equ 26h                ; DOUT Data Register
_DOM            .equ 27h                ; DOUT Control Register
_PORTC          .equ 28h                ; Port C Data Register
_PORTD_ASRIN    .equ 29h                ; Port D Data Register / ASR Input Data
_RAMST          .equ 2Ah                ; Built-in RAM status
_SSD            .equ 2Bh                ; Serial Status Data Register
_IRQL           .equ 2Ch                ; Interrupt Request Flag MSB
_IRQLL          .equ 2Dh                ; Interrupt Request Flag LSB
_IMASK          .equ 2Eh                ; Interrupt Request Mask MSB

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org 8000h
reset:
	ld    #06h, $_OMODE	; change to mode 6
	di    			; disable interrupts
	ld    s, #01bfh		; set stack to top of RAM
	ld    #18h, $_SMRC_SIR	; set SMRC cintrol reg to 0001 1000

	ld x, #0C000h	;beginning of toyota ROM
	

wait	ld    b, $_SSD		; load serial status data reg into b
	and   b, #20h		; mask (bit 5)  0010 0000
	beq   wait		; loop until bit 6 set
	ld a,x+0
	st    a, $_SIDR_SODR	; store character from a into SODR
	inc x
	bne wait

infloop	bra infloop

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

