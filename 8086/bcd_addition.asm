ASSUME CS:CODE,DS:DATA
DATA SEGMENT
  a db 0AH
  b db 05h
DATA ENDS
CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AL,a
        MOV BL,b
        ADD AL,BL
        CMP AL,09H
        JG F

    Bo:  MOV AH,4CH
        INT 21H

    F:  ADD AL,06H
        JMP Bo
CODE ENDS
END START
