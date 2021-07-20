ORG 0000H
MOV R1,#05H
MOV R2,#02H
MOV A,R1
MOV B,R2
CJNE A,B,MIN		;To set smaller value to B register
LJMP ANS
MIN:
	JNC NEXT
	MOV A,R2
	MOV B,R1

NEXT:
	MOV R3,B
	DIV AB
	MOV A,R3
	MOV R4,B
	CJNE R4,#00H,NEXT		; the loop repeats till the remainder is zero
ANS: MOV R4,A
	 MOV A,R1
	 MOV B,R4
     DIV AB
	 MOV B,R2
     MUL AB
     MOV R4,A
END
