	AREA ARRAY_SUM,CODE,READONLY
ENTRY
	MOV R1,#0X00000004;
		MOV R3,#0X40000000;
		LDRH R4,[R3];
LOOP
		ADD R3,R3,#2;
		LDRH R5,[R3];
		ADD R4,R4,R5;
		SUB R1,R1,#01;
		CMP R1,#00;
		BNE LOOP
		MOV R6,#0X4000001C;
		STR R4,[R6];
B1      B	B1
END
