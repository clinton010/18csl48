	AREA P1,CODE,READONLY
	ENTRY
	MOV R1,#0x0010
	MOV R2,#0x0002
	MUL R3,R1,R2
	NOP
	END