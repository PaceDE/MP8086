;PUSHPOP

     .model small
.stack
.data
string1 db "Messi the goat",13,10,"$" 
.code
main proc
    lea ax,@data
    mov ds,ax
    
    mov dx,offset string1  
    mov ah,09h
    int 21h
    
    mov si,offset string1
    
    mov cx,14
    
  
    
    repeat:
    
    mov ax,[si]
    push ax
    inc si
    loop repeat 
    
    mov cx,14 
    
    again:
    
   pop dx
   mov ah,02h
   int 21h
   loop again
     
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    
