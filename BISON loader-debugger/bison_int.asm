;interrupt handlers:
;branch to designated ram to handle interrupt
;ram should be initialized with NMI so enabled+unhandled interrupt returns to BISON

int0              ; External interrupt 0
	jmp	tempint

int1              ; External interrupt 1
	jmp	tempint
int2              ; External interrupt 2
	jmp	tempint
int3              ; External interrupt 3
	jmp	tempint
int4              ; External interrupt 4
	jmp	tempint
int5              ; External interrupt 5
	jmp	tempint
int6              ; External interrupt 6
	jmp	tempint
int7              ; Compare 1
	jmp	tempint
int8              ; Compare 2
	jmp	tempint
int9              ; Compare 0
	jmp	tempint
inta              ; Compare 3
	jmp	tempint
intb              ; Timer overflow
	jmp	tempint
intc              ; External interrupt c
	jmp	tempint
intd              ; External interrupt d
	jmp	tempint
inte              ; External interrupt e
	jmp	tempint

tempint
	clr	_IRQL	;tidy flags
	clr	_IRQLL	;tidy flags
	nmi
