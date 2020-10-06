	AREA     appcode, CODE, READONLY
	EXPORT __main
	ENTRY 

__main FUNCTION
	MOV r0, #15 ;Nth Fibonacci element to find
	MOV r1, #0	;First fibonacci number is 0;
	MOV r2, #1	;second fibonacci number is 1;
loop CMP r0, #0	;perform N iterations in loop
	BLE stop        ; Jump if less than or equal to
	ADD r2, r2, r1	;storing the next fibonacci number in r2, which is sum of r1 and r2
	SUB r1, r2, r1	;storing the next fibonacci number in r
	SUB r0, #1	;Decrementing the iterations count
	B loop          ; Jump to loop
stop B stop 		; end program
     ENDFUNC
END