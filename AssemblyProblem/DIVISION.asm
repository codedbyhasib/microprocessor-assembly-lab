.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN:
MOV AL,6  ;1st input
MOV BL,3  ;2nd input

DIV BL    ;AL=AL/BL

MOV CL,AL  ;RESULT
MOV CH,AH  ;REMINDER

MOV AH,02H ;PRINT RESULT
MOV DL,CL
ADD DL,48
INT 21H
      
      MOV DL,46  ;PTINT .
      MOV AH,02H
      INT 21H

MOV AH,02H  ;PRINT REMINDER
MOV DL,CH
ADD DL,48
INT 21H 

MOV AH,4CH ;MAIN FUNCTION EXIT
INT 21H
END MAIN