	AREA SQUARE, CODE, READONLY
	ENTRY
	LDR R0,=LOOKUP		;0x00000018
	MOV R1,#0xA			;sq of 10 -> A 
	MOV R1,R1,LSL#0x02		;R1=R1*4
	ADD R0,R0,R1
	LDR R3,[R0]
B1 B B1

LOOKUP
	DCD 0x00000000       ;0
	DCD 0x00000001       ;1
	DCD 0x00000004		 ;4
	DCD 0x00000009		 ;9
	DCD 0x00000010		 ;16
	DCD 0x00000019		 ;25
	DCD 0x00000024		 ;36
	DCD 0x00000031		 ;49
	DCD 0x00000040		 ;64
	DCD 0x00000051		 ;81
	DCD 0x00000064		 ;100
	END