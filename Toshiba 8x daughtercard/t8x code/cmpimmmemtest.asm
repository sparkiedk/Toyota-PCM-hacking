
		.msfirst		; Big Endian processor

.include 	sfrdefs.h

;============================================================================================
; RAM segment


;============================================================================================
; ROM segment
.org 0FF00h
reset
	ld	x, #message
	bsr	putstr	
	
	ld	a, #10
	st	a, 0F0h

	cmp	#5, 0F0h	;result was MEM-#immediate
	bpz	pos

	ld	x, #nmess
	bsr	putstr	

infloop	bra	infloop

pos	ld	x, #pmess
	bsr	putstr
	bra	infloop

;=========================================================================putstr
; PUTSTR: put charchters from a string variable until a null (\000) is encountered
; uses putch

putstr 	ld	a, x+0
	beq	endstr
	bsr	putch
	inc	x
	bra 	putstr
endstr	ret

;=========================================================================putch
; PUTCH: wait until not full, drop a char onto the serial port and wait until not full

putch	ld    	b, _FTSTAT	; load serial status data reg into b
	and   	b, #02h		; mask (bit 1)  0000 0010
	bne   	putch		; loop until bit 2 clear, bit is high when tx buffer is full
	st	a, _FTDATA
pwait	ld    	b, _FTSTAT	; load serial status data reg into b
	and   	b, #02h		; mask (bit 1)  0000 0010
	bne   	pwait		; loop until bit 2 clear
	ret


;=========================================================================CONSTANTS

message
	.TEXT	"Go time"
	.db	0
pmess
	.TEXT	"mem-#imm"
	.db	0
nmess
	.TEXT	"#imm-mem"
	.db	0

.org 0FFFEh
	.dw	reset	;entry vector
.END