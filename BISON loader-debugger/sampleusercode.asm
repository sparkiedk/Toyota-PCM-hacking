;User program, to be executed from ram
;bison memory area starts at 0200

;default stack is also handled by bison, for more control set your own.
;default stack is $029f, wich is stared with bison and throughly trashed when returned to CLI
;if you application requires some stack inspection it's best to set your own user stack in code
;or before run with "SET S XXXX"

;nmi's are auto inserted at the END of the user code block by load,
;but not necessarily the end of your main loop/path. 

;BISON functions are available for user programs as well, look up the addresses in
;bison.lst after assembling



;================================================================================

		.msfirst		; Big Endian processor


.org	$0100

entry:	ld	a, #$55		;demonstrate indexed store with postincrement feature
	ld	y, #$00FF
	st	a, [y]		;Y will equal 0100 after this instruction
	
	
.end