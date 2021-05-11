	AREA P2,CODE,READONLY
	ENTRY
	MOV R1,#0X00000001                ; J=1
	MOV R2,#0X0000000B	    ; r2=11 
	MOV R3,#0X00000000                ; Result = Sum
LOOP
	ADD R3,R3,R1			    ;Sum= sum + j 
	ADD R1,R1,#01		    ;j=j+1 
	CMP R1,R2			    ;condition j<=11 			     
	BNE LOOP			    ;Branch Not Equal 
	MOV R4,R3			    ; Storing the result in R4			
B1         B         B1
             END