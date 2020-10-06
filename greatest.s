AREA     appcode, CODE, READONLY
	EXPORT __main
	ENTRY 

__main FUNCTION
	MOV r0, #3	;first number is moved to r0
	MOV r1, #5	;first number is moved to r1
	MOV r2, #4	;first number is moved to r2
	CMP r2, r1
	MOVGE r1, r2     ;if r2 is greater than or equal to r1, move r2 to r1 
	CMP r1, r0
	MOVGE r0, r1     ; if r1 is greater than or equal to r1, move r1 to r0

	;greatest number is stored in r0
	stop B stop 
     	ENDFUNC
     	END
