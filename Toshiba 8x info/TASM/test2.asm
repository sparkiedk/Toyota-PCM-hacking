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
data16		.equ 0041h		; data byte address
datam		.equ 41h		; MSB byte
datal		.equ 42h		; LSB byte
edata16		.equ 0101h		; data byte address
edatam		.equ 0101h		; MSB byte
edatal		.equ 0102h		; LSB byte
buf		.equ 0050h		; text string for hex2asc
buf1		.equ 50h		; byte 1 of text string for hex2asc
buf2		.equ 51h		; byte 2
buf3		.equ 52h		; byte 3

;============================================================================================
; ROM segment
.org 8000h
__RESET:	ld    #06h, $_OMODE	; change to mode 6
		di    			; disable interrupts
		ld    s, #01bfh		; set stack to top of RAM
		ld    #18h, $_SMRC_SIR	; set SMRC cintrol reg to 0001 1000
		ld    y, #hello		; pointer to "hello" string
		bsr   printf		; call printf at 8059 to dump to terminal

; start of test code
		clr   datam		; set data=0
		clr   datal
		ld    a, #'A'		; stream out A char
		bsr   PUTC
		ld    y, #data16	; load the data address 
		jsr   printdw		; print out confirmation

		ld x, #122fh		; load x with test value
		st x, datam		; 3A opcode
		ld    a, #'B'		; stream out B char
		bsr   PUTC
		ld    y, #data16	; load the data address 
		jsr   printdw		; print out confirmation
; repeat using 16 bit direct
		clr   a			; set data=0
		clr   b			; set data=0
		st    d, edata16
		ld    a, #'C'		; stream out C char
		bsr   PUTC
		ld    y, #edata16	; load the data address 
		jsr   printdw		; print out confirmation

		ld x, #1234h		; load x with test value
		st x, edata16		; 0A opcode
		ld    a, #'D'		; stream out D char
		bsr   PUTC
		ld    y, #edata16	; load the data address 
		jsr   printdw		; print out confirmation

		ld    y, #done		; stream out done
		bsr   printf 		;:printf
halt:		bra   halt		; halt


;============================================================================================
GETC: 				; get character functon (not used)
		ld    b, $_SSD		; load serial status data reg into b 
		and   b, #80h		; mask (bit 7)  1000 0000
		beq   GETC		; loop until bit 8 set
		ld    a, $_SIDR_SODR	; load character from SIDR into a
		ret

;============================================================================================
PUTC:
		ld    b, $_SSD		; load serial status data reg into b
		and   b, #20h		; mask (bit 5)  0010 0000
		beq   PUTC		; loop until bit 6 set
		st    a, $_SIDR_SODR	; store character from a into SODR
		ret   			

;============================================================================================
printf:
		ld    a, [y]		; load first char of string pointed to by y 
		cmpz  a			; is it the null terminator
		beq   j3		; yes return
		jsr   PUTC 		; (:PUTC)	; no, write to output stream and repeat
		bra   printf		; done
j3:		ret
 
;============================================================================================
; hex2asc Function: Diplays a byte passed in 'a' in hex format FF on console
; CAUTION: wipes out data in 'y'
hex2asc:
		push  a			; push a on stack
		ld    y, #hexcode	; base of ascii string
		and   a, #0fh		; isolate low nibble
		add   y, a		; compute pointer into string
		ld    a, [y]		; load ascii char
		st    a, buf2		; store ascii char for low nibble in RAM variable buf
		pull  a			; repeat for high nibble
		ld    y, #hexcode
		shr   a
		shr   a
		shr   a
		shr   a
		add   y, a
		ld    a, [y]
		st    a, buf1 		; store ascii char for high nibble in RAM variable buf
		clr   buf3		; add end of string terminator in buf
		ld    y, #buf		; point y to ascii string
		jsr   printf 		; stream out string		
		ret

;============================================================================================
; printdw Function: Prints to console the word (i.e. 16 bit number) stored at the address passed 
; in 'y'. Format is [yyyy]=FFFFh
; 'y' is preserved on return
printdw:
		ld    a, #5Bh		; stream out [ char
		bsr   PUTC
		mov   y, d		; recopy memory position to d and also save on stack
		push  y			; stream out memory position (d=a|b)
		push  b			; save LSB
		bsr   hex2asc		; stream out address MSB
		pull  a			; get address LSB
		bsr   hex2asc		; stream out address LSB
		pull  y			; recall mempory position to y
		ld    a, #5Dh		; stream out ] char
		bsr   PUTC
		ld    a, #3Dh		; stream out = char
		bsr   PUTC
		push  y			; save address 
		ld    d, [y]		; load in data, y++
		push  b			; save LSB (d=a|b)
		bsr   hex2asc		; stream out data MSB
		pull  a			; get address LSB
		bsr   hex2asc		; stream out data LSB
		pull  y			; recall mempory position to y
		ld    a, #0dh		; stream out <cr><lf>
		bsr   PUTC
		ld    a, #0ah
		bsr   PUTC
		ret

;============================================================================================
;DATA   

hello:		.text	"\r\nDenso 8X Test Code v2.0\r\n\000"
okay1:		.text	"1 okay\r\n\000"
bad1:		.text	"1 bad\r\n\000"
okay2:		.text	"2 okay\r\n\000"
bad2:		.text	"2 bad\r\n\000"
done:		.text	"\r\ndone.\r\n\000"
hexcode		.text	"0123456789ABCDEF"

.org 0ffdeh
IV0:            .dw 0FFFFh              ; External interrupt 0
IV1:            .dw 0FFFFh              ; External interrupt 1
IV2:            .dw 0FFFFh              ; External interrupt 2
IV3:            .dw 0FFFFh              ; External interrupt 3
IV4:            .dw 0FFFFh              ; External interrupt 4
IV5:            .dw 0FFFFh              ; External interrupt 5
IV6:            .dw 0FFFFh              ; External interrupt 6
IV7:            .dw 0FFFFh              ; External interrupt 7
IV8:            .dw 0FFFFh              ; External interrupt 8
IV9:            .dw 0FFFFh              ; External interrupt 9
IVa:            .dw 0FFFFh              ; External interrupt a
IVb:            .dw 0FFFFh              ; External interrupt b
IVc:            .dw 0FFFFh              ; External interrupt c
IVd:            .dw 0FFFFh              ; External interrupt d
IVe:            .dw 0FFFFh              ; External interrupt e
IVf:            .dw 0FFFFh              ; External interrupt f
RESET:		.dw __RESET             ; Processor reset
		.end

