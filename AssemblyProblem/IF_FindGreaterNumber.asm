.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN:
MOV AH,01H
INT 21H
MOV BL,AL

MOV AH,01H
INT 21H
MOV BH,AL

CMP BL,BH

JG L1

JMP L2

L1:
MOV AH,02H
MOV DL,BL
INT 21H

L2: 
 

MOV AH,4CH
INT 21H

END MAIN