ASSUME CS:CODE,DS:DATA
DATA SEGMENT
    a db 01h,02h,03h,04h,05h
DATA ENDS
CODE SEGMENT
START: MOV AX,DATA
       MOV DS,AX
       
       MOV SI,00H
       MOV CX,05H
   L:  MOV AL,a[SI]
       CMP AL,03H
       JE RESULT
       
       INC SI
       DEC CX
       JNZ L
       
   F:  MOV AH,4CH
       INT 21H       
RESULT:
       MOV BL,01H
       JMP F
CODE ENDS
END START
