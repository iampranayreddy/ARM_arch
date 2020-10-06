AREA     appcode, CODE, READONLY
EXPORT __main
ENTRY 

__main FUNCTION
	MOV r0, #75; moving the first number into r0
	MOV r1, #25; moving the first number into r1
loop CMP r0, r1	;compare both numbers for equality
	SUBGT r0, r0, r1; if r0>r1, mov (r0-r1) into r0
	SUBLT r1, r1, r0; else, mov (r1-r0) into r1
	BNE loop ;loop back
	B stop
	
	stop B stop  ;end program
     	ENDFUNC
     	END