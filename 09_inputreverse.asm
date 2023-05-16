;Program to input a string from keyboard and print it in reverse order

.model small
.stack
.data

string db ?
len dw 9 ;length of string to be input  

string1 db "Enter the string: $"   
string2 db 13,10,"Reverse: $" 
.code
main proc
    .startup   
    
mov bx,len
     
    
    mov dx,offset string1
    MOV AH,9
    INT 21H   
    
    mov cx,len
    mov si,offset string
    again:
    mov ah,01h
    int 21h
    mov [si],al
    inc si 
    loop again 
       
    mov dx,offset string2
    MOV AH,9
    INT 21H
    
    mov cx,bx
    dec si
    repeat:
    mov dl,[si]
    mov ah,02h
    int 21h
    dec si 
    loop repeat
    .exit
    main endp
end main