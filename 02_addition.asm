;TITLE : TO ADD TWO 8 BIT DECIMAL NUMBER

.MODEL SMALL
.DATA
STR1 DB "ENTER THE FIRST NUMBER : $"   
STR2 DB 13,10,  "ENTER THE SECOND NUMBER : $" 
STR3 DB 13,10,  "THE SUM IS : $"   
.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX  
                                                
    ;DISPLAY STRING 1
    LEA DX,STR1
    MOV AH,9
    INT 21H
    
    ;ASCII INPUT
    MOV AH,1
    INT 21H
    
    ;INPUT DATA1 (ASCII) TO BL
    MOV BL,AL 
    
    ;DISPLAY STRING 2
    LEA DX,STR2
    MOV AH,9
    INT 21H
    
    ;ASCII INPUT 
    MOV AH,1
    INT 21H
    
    
    ;INPUT DATA2 (ASCII) TO BH
    MOV BH,AL
    
    ;ASCII TO DECIMAL
   
    ;DISPLAY STRING 3
    LEA DX,STR3
    MOV AH,9
    INT 21H
    
    ;ADDITION
    ADD BH,BL
    
    ;DECIMAL TO ASCII
    SUB BH,48
    
    
    MOV DL,BH
    MOV AH,2
    INT 21H
    MOV AH,4CH
    INT 21H
MAIN ENDP
END