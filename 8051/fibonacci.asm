ORG 0000H
MOV R0,#30H			;Memory space where all the fibonacci numbers are stored
MOV R1,#08H			;Number of fibonacci numbers to be generated
MOV R2,#00H
MOV R3,#01H
MOV @R0,#00H			;Move the first number in the memory space
INC R0
MOV @R0,#01H			;Move the second number in the memory space
INC R0
DEC R1
DEC R1
LOOP:
	MOV A,R2
	ADD A,R3			;Add the previous two numbers
	MOV @R0,A			;Store the fibonacci number in the memory space	
	MOV B,R3
	MOV R2,B
	MOV R3,A
	INC R0
	DJNZ R1,LOOP
END
