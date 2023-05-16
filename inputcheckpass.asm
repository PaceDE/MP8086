.model small
.stack
.data
string1 db "Ente first string: $"
string2 db ,13,10,"Enter the second string: $"   
match db ,13,10,"Correct$"
nomatch db ,13,10,"Incorrect$"
str1 db ?
len dw 9

.code
main proc
    .startup
    lea dx,string1
    mov ah,09h
    int 21h
    
    mov bx,len  
    
    mov si,offset str1
    mov cx,len
    
    again:
    mov ah,01h
    int 21h
    mov [si],al
    inc si
    loop again
               
    lea dx,string2
    mov ah,09h
    int 21h
    
    mov si,offset str1
    mov cx,bx 
    
    mov bh,0
    
    repeat:
    mov ah,01h
    int 21h
    cmp al,[si]
    jne go
    inc bh
    go:
    inc si
    loop repeat 
    
    
    
    cmp bh,9
    jne invalid:
    lea dx,match
    mov ah,09h
    int 21h 
    jmp exit
    invalid:
    lea dx,nomatch
    mov ah,09h
    int 21h
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    