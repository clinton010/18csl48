	AREA SORT,CODE,READONLY
			ENTRY

			MOV R5,#3                ;N-1 Passes
NXTPASS		LDR R0,A
			MOV R4,R5                ;N Comparison
NXTCOMP		LDR R2,[R0]              ;Read Frist number
			MOV R1,R2                ;Save it in R1
			ADD R0,#4				 ;Update the Pointer
			LDR R2,[R0]              ;Read Second number
			CMP R1,R2                ;Compare 1st no. with 2nd number 
			BLS NOEXG                ;BLS-ascending order.If 1st<2nd no. then exchange is not required. BHI-descending order
			STR R1,[R0],#-4          ;Exchange the number
			STR R2, [R0],#4
NOEXG		SUBS R4,R4,#1            ;Decrement no. of comparisions
			BNE NXTCOMP
			SUBS R5,R5,#1            ;Decrement no. of passes
			BNE NXTPASS
B1     B    B1
A			DCD  0x40000000
			END