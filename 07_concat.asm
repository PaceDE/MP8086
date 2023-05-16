/;TITLE : TO CONCATENATE TWO STRING

.MODEL SMALL
.DATA
STR1 DB "Microprocessor $"   
STR2 DB "Assembly language$" 
STR3 DB                     

.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX      
       
    ;OFFSET             
    MOV DI, OFFSET STR3
    MOV SI, OFFSET STR1
    MOV CX, 15
    AGAIN1:
    MOV BX, [SI]
    MOV [DI], BX
    INC SI
    INC DI
    LOOP AGAIN1
    
    MOV SI,OFFSET STR2
    MOV CX,17
    AGAIN2:
    MOV BX, [SI]
    MOV [DI], BX
    INC SI
    INC DI
    LOOP AGAIN2
    
    MOV [DI], '$'
    MOV DX, OFFSET STR3
    
    MOV AH, 09H
    INT 21H
    
   .exit
    
    
  
MAIN ENDP
END
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    
  ;  ;ASCII INPUT
  ;  MOV AH,1
  ;  INT 21H
  ;  
  ;  ;INPUT DATA1 (ASCII) TO BL
  ;  MOV BL,AL 
  ;  
  ;  ;DISPLAY STRING 2
  ;  LEA DX,STR2
  ;  MOV AH,9
  ;  INT 21H
    
  ;  ;ASCII INPUT 
  ;  MOV AH,1
  ;  INT 21H
    
    
  ;  ;INPUT DATA2 (ASCII) TO BH
  ;  MOV BH,AL
    
  ;  ;ASCII TO DECIMAL
  ;  SUB BH,48
  ;  SUB BL,48
    
  ;  ;DISPLAY STRING 3
  ;  LEA DX,STR3
  ;  MOV AH,9
  ;  INT 21H
  ;  
  ;  ;ADDITION
  ;  ADD BH,BL
  ;  
  ;  ;DECIMAL TO ASCII
  ;  ADD BH,48
    
    
  ;  MOV DL,BH
  ;  MOV AH,2
  ;  INT 21H
  ;  MOV AH,4CH
  ;  INT 21H
