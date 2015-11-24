
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;choose the serial port to be compiled in serial.asm
#DEFINE		DSERIAL
;#DEFINE	FTSERIAL

#DEFINE		BISSTACK	$029f



;============================================================================================
; RAM segment

;define memory base - 0x0200 for memoryless testing, 0x7F00 for added ram testing

.org	$0200


;bison data registers

i2sreg
	.block	5	;4 bytes for returns from 16b (and 8 bit?) number to text sub
inputstring
	.block	32	;many bytes for user input string
inputptr
	.block	1	;pointer for above string
dispr1
	.block	2
dispr2
	.block	2


;define a data structure for user mode core registers

userD	.block	2
userX	.block	2
userY	.block	2
userCCR	.block 	1
userSP	.block	2
userPC	.block	2



;============================================================================================
; ROM segment
.org $8000
reset:

	ld    	#$02, _OMODE	; change to mode 2
	di    			; disable interrupts
	ld	s, #BISSTACK
	mov	s, x
	st	x, userSP	;init user SP to avoid terrible run-without-sp failures.
	jsr	init_serial
	
	

bison:
	ld	x, #welcome
	jsr	putstr

main:	
	clr	a
	ld	x, #inputstring
clearinp:
	st	a, x+0
	inc	x	;cant get postincrement x to compile.
	cmp	x, #inputstring+32
	bne	clearinp
	ld	x, #inputstring

	ld	a, #13	;CR
	jsr	putch

	ld	a, #10	;LF
	jsr	putch

	ld	a, #'>'
	jsr	putch
prompt:
	jsr	rxch	;get a character from the serial port, return in A
	st	a, x+0		;store inputted byte. should we check for validity here? maybe
	inc 	x

	cmp	x, #inputstring + 33		;check for buffer overflow
	beq	main

	;ld	a, x+0		;test to make sure ram was written correctly.
	jsr	putch		;echo inputted char
	cmp	a, #13	
	bne	prompt		;test for CR, return to prompt for more if not.
	ld	a, #10		;putch a linefeed to improve formatting
	jsr	putch
;currently not handling LF's. dont use them.
;run command against dictionary (include whitespace)
checkcmd:
	ld	x, #dictionary
checknext:
	ld	a, x+0		;ld can set zero flag
	beq	cmderr
	push	x
	ld	y, #inputstring
checkloop:
	ld	a, x+0
	ld	b, y+0
	cmp	a, b
	bne	checkfail

	;if here then cmds match so far
	inc	x
	inc	y
	cmp	a, #' '
	bne	checkloop	;havnt encountered the space yet.
	pull	x
	ld	x, x+8		;now we have the address of the handler
	jmp	x+0		;branch to the handler

checkfail:
	pull	x
	ld	b, #10
	add	x, b		;offset to next dictionary entry. no add x immediate either.
	bra	checknext

cmderr:
	ld	x, #cmderrmsg
	jsr	putstr
	bra	main

;dictionary uses fixed record length of 10 bytes for simplicity
dictionary:
	.TEXT	"RUN XXXX"		;run starting at addr
	.dw	run_handler	

	.TEXT	"LOAD XXX"		;load data from addr (use timeout), insert automatic triple NMI at end
	.dw	load_handler	

	.TEXT	"DISP XXX"		;display data from addr to addr
	.dw	disp_handler	

	.TEXT	"SET XXXX"		;set: preps user core registers. use SET A 55, set X 1234, set CCR 01. no PC 
	.dw	set_handler	

	.TEXT	"TEST XXX"
	.dw	test_code

	.db	0			;null byte in text field signals end of dictionary. yay flexibility.

welcome
	.text	"BISON Bootloader\r\n"
	.db	0
cmderrmsg
	.text	"nope!\r\n"
	.db	0
	


;==========================================================================Handlers
run_handler:
	ld	x, #runmsg	
	jsr	putstr
	ld	x, #inputstring+4
	jsr	str2int
 ;prepare the user environment
	ld	s, userSP	;danger zone!!
	ld	d, i2sreg	;get PC
	push 	d
	ld	d,userD		;get used D whether it's used or not
	push	d
	ld	a, userCCR	;get CCR ...
	push	a
	ld	x, userX
	ld	y, userY
	
	reti			;reti will pull registers from the stack and execute the PC at the bottom

runmsg
	.text	"Oh no, here we go!\r\n"
	.db	0

load_handler:
	ld	x, #loadmsg	;placeholder for real work
	jsr	putstr
	jmp	main
loadmsg
	.text	"load!\r\n"
	.db	0


disp_handler:
	ld	x, #inputstring+5	;first number
	jsr 	str2int
	ld	d, i2sreg
	st	d, dispr1	;start pointer
	ld	x, #inputstring+10	;second number
	jsr 	str2int
	ld	d, i2sreg
	add	d, #1
	st	d, dispr2


	ld	y, dispr1	;maybe store it here always, instead of reg?
readout:
	ld	a, y+0
	jsr	char2str
	ld	a, i2sreg
	jsr	putch
	ld	a, i2sreg+1
	jsr	putch
	ld	a, #' '
	jsr	putch
	inc	y
	mov	y, d
	and 	b, #$0F
	bne 	displimit
	ld	a, #13
	jsr	putch
	ld	a, #10
	jsr	putch
displimit:
	cmp	y, dispr2
	bne	readout
	jmp	main


;set commands: set d abcd / set x abcd / set y abcd / set s abcd / set c ab
set_handler:
	ld	x, #inputstring
	ld	a, x+4	;location of character after space
	cmp	a, #'D'
	beq	setd
	cmp	a, #'X'
	beq	setx
	cmp	a, #'Y'
	beq	sety
	cmp	a, #'S'
	beq	setsp
	cmp	a, #'C'
	beq	setccr
	bra	seterr
setd:
	ld	x, #inputstring+6	;address of the number data
	jsr	str2int
	ld	d, i2sreg
	st	d, userD
	jmp	main

setx:
	ld	x, #inputstring+6	;address of the number data
	jsr	str2int
	ld	d, i2sreg
	st	d, userX
	jmp	main
sety:
	ld	x, #inputstring+6	;address of the number data
	jsr	str2int
	ld	d, i2sreg
	st	d, userY
	jmp	main
setsp:
	ld	x, #inputstring+6	;address of the number data
	jsr	str2int
	ld	d, i2sreg
	st	d, userSP
	jmp	main
setccr:
	ld	x, #inputstring+6	;address of the number data
	jsr	str2char
	ld	a, i2sreg
	st	a, userCCR
	jmp	main

seterr:
	ld	x, #setmsg	
	jsr	putstr


	jmp	main
setmsg
	.text	"\r\ninvalid command\r\n"
	.db	0


test_code:

	ld	d, #$0ABCD
	ld	x, #$1234
	ld	Y, #$5678
	ld	s, #BISSTACK
	nmi	

	jmp 	main


;======================================================================subs


;=================
;==int to string==
;=================
;returns 16b input integer in D as 4 byte ascii in i2sreg
;char2str returns unsigned char in A as 2 bye ascii in i2sreg

int2str:
	push 	b
	and	b, #$0F
	ld	x, #i2sdata
	add	x, b
	ld	b, x+0
	st	b, i2sreg+3	;write LSB-LSN

	pull	b
	shr	b
	shr	b
	shr	b
	shr	b
	and	b, #$0F
	ld	x, #i2sdata
	add	x, b
	ld	b, x+0
	st	b, i2sreg+2	;write LSB-MSN
	
char2str:
	mov	a, b		;work with MSB
	push 	b
	and	b, #$0F
	ld	x, #i2sdata
	add	x, b
	ld	b, x+0
	st	b, i2sreg+1	;write LSB-LSN
	
	pull	b
	shr	b
	shr	b
	shr	b
	shr	b
	and	b, #$0F
	ld	x, #i2sdata
	add	x, b
	ld	b, x+0
	st	b, i2sreg	;write LSB-MSN

	
	ret			;end of function


i2sdata			;start of function data
	.db	'0'
	.db	'1'
	.db	'2'
	.db	'3'
	.db	'4'
	.db	'5'
	.db	'6'
	.db	'7'
	.db	'8'
	.db	'9'
	.db	'A'
	.db	'B'
	.db	'C'
	.db	'D'
	.db	'E'
	.db	'F'	;end of function data

;===========================================================
;str2int accepts 4 byte string in X which is a hex representation of an integer
;str2char accepts a 2 byte string in X which is a hex representation of a char.

str2int:

	ld	a, x+3
	sub	a, #$30
	cmp	a, #9
	ble	getgoodLL
	sub	a, #7
getgoodLL:
	st	a, i2sreg+1	;write out LSB-LSN

	ld	a, x+2	
	sub	a, #$30
	cmp	a, #9
	ble	getgoodLH
	sub	a, #7
getgoodLH:
	shl	a
	shl	a
	shl	a
	shl	a
	add	a, i2sreg+1	;add LSN
	st	a, i2sreg+1	;write out complete LSB

str2char:
	ld	a, x+1
	sub	a, #$30
	cmp	a, #9
	ble	getgoodHL
	sub	a, #7
getgoodHL:
	st	a, i2sreg	;write out MSB-LSN

	ld	a, x+0	
	sub	a, #$30
	cmp	a, #9
	ble	getgoodHH
	sub	a, #7
getgoodHH:
	shl	a
	shl	a
	shl	a
	shl	a
	add	a, i2sreg	;add LSN
	st	a, i2sreg	;write out complete MSB
	
	ret	;most glorious, never omit


;====================================================interrupts
;NMI ISR code to capture data
__NMI:
	st	x, userX
	xch	x,y		;there's no [st y,extended] on this chip
	st	x, userY

	pull	a		;recover users CCR from stack
	st	a, userCCR
	pull	d		;recover users D from stack
	st	d, userD
	pull	d		;recover users PC from stack
	st	d, userPC

	mov	s, x		;stack should now point to where it pointed before NMI was called
	st	x, userSP	;store sp. note that this points to last byte ON stack, not next free byte.

	ld	s, #BISSTACK	
	clr	b
	st	b, i2sreg+4	;null terminator for 4 byte strings

	;warn NMI called, print out data structure and return control to the main bison loop
	ld	x, #nmwarn
	jsr	putstr
	ld	x, #nmuserd
	jsr	putstr
	ld	d, userD
	jsr	int2str
	ld	x, #i2sreg
	jsr	putstr

	ld	x, #nmuserx
	jsr	putstr
	ld	d, userX
	jsr	int2str
	ld	x, #i2sreg
	jsr	putstr

	ld	x, #nmusery
	jsr	putstr
	ld	d, userY
	jsr	int2str
	ld	x, #i2sreg
	jsr	putstr

	ld	x, #nmusersp
	jsr	putstr
	ld	d, userSP
	jsr	int2str
	ld	x, #i2sreg
	jsr	putstr

	ld	x, #nmuserpc
	jsr	putstr
	ld	d, userPC
	jsr	int2str
	ld	x, #i2sreg
	jsr	putstr

	ld	x, #nmuserccr
	jsr	putstr
	ld	d, userCCR
	jsr	char2str
	clr	b
	st	b, i2sreg+2	;null terminate
	ld	x, #i2sreg
	jsr	putstr

	ld	a, #13	;CR
	jsr	putch
	ld	a, #10	;LF
	jsr	putch
	ld	a, #13	;CR
	jsr	putch

	ld	a, #10	;LF
	jsr	putch



	;service NMI interrupt bit, disable interrupts?

	jmp	bison		;return control to main loop

nmwarn
	.text	"\r\n BISON NMI\r\n"
	.db	0
nmuserd
	.text	"\r\n  D:"
	.db	0
nmuserx
	.text	"\r\n  X:"
	.db	0

nmusery
	.text	"\r\n  Y:"
	.db	0

nmuserccr
	.text	"\r\nCCR:"
	.db	0

nmuserpc
	.text	"\r\n PC:"
	.db	0

nmusersp
	.text	"\r\n SP:"
	.db	0

.include 	bison_int.asm
.include	serial.asm

.org 0D000h

	ld	x, #testprog
	jsr	putstr
	
	nmi
	setc
	nmi
	setv
	nmi
	ld	a, #128
	nmi
	clr	a
	nmi

testprog
	.text 	"\r\ntestland!\r\n"
	.db	0

;=============================================================
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

;==========================
;==========================
;=======Most Glorious======
	    .END
;========Never Omit========
;==========================
;==========================