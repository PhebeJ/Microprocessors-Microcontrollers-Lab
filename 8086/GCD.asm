ASSUME CS:CODE,DS:DATA
DATA SEGMENT
	a db 05h
	b db 04h
DATA ENDS
CODE SEGMENT
START:
		MOV AX,DATA
		MOV DS,AX
		MOV AX,0000H
		MOV AH,a
		MOV AL,b
		CMP AH,AL
		JNZ pos
		JMP negg
	ba:MOV AX,0000H
		MOV AL,a
		DIV BL
		CMP AH,0
		JZ nex

noo:  DEC BL
		JNZ ba

exx:  MOV AH,4CH
		INT 21H

pos:  MOV BL,b
		JMP ba
negg:  MOV BL,a
		JMP ba

nex:  MOV AL,b
		DIV BL
		CMP AH,00h
		JZ ans
		JMP noo

ans:  MOV CL,BL
		JMP exx
		
CODE ENDS
END START
