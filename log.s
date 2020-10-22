     AREA     test_1, CODE, READONLY
     EXPORT __main
     ENTRY
__main function
	VLDR.F32 s1, = 0.2   ; X value is stored in here 
	VMOV.F32 s0,s1		 ; final sum value
	VLDR.F32 s2, = 1.0	 ; n-values
	VMOV.F32 s3,s1		 ; term
	VLDR.F32 s5, = 1.0 	;
	VLDR.F32 s6, = -1.0	;
	VLDR.F32 s4, = 1.0	 ;final_term-irrelevant

loop VMOV.F32 s7,s0			; Storing sum to s7
	VADD.F32 s2,s2,s5	;	n=n+1
	VMUL.F32 s3,s3,s1	;	term = term * x
	VMUL.F32 s3,s3,s6	;	term = term * (-1)
	VDIV.F32 s4,s3,s2		; finalterm = term/n
	VADD.F32 s0,s0,s4		;	sum = sum + final term
	 VMRS APSR_nzcv, FPSCR	;
	 BNE loop			; stop eaxecution only if sum value doesnt change in an iteration
	 
						;final answer is stored in s0
stop B stop 			; stop
	 ENDFUNC
     END