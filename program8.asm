	AREA ONEZERO,CODE,READONLY
		ENTRY
		MOV R2,#0          ;Counter for 1's
		MOV R3,#0          ;Counter for 0's
		MOV R7,#2          ;Counter to get 2 words
		LDR R6,=VALUE      ;Loads the address of value

LOOP    MOV R1,#32         
        LDR R0,[R6],#4     
LOOP0   
        MOVS R0,R0,ROR #1  
        BHI ONES           

ZEROS   
        ADD R3,R3,#1       
        B LOOP1            
	
ONES    
        ADD R2,R2,#1       

LOOP1   
        SUBS R1,R1,#1       
        BNE LOOP0           
	    SUBS R7,R7,#1       
	    CMP R7,#0           
	    BNE LOOP
		NOP
		NOP
		NOP
JMP     B     JMP           
	
VALUE DCD 0x12345670,0x88888888 
	END