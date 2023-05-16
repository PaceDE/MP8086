;VOWEL
.model small

.data
string db "microprocessor",13,10,"$"  

.code
main proc
    .startup 
    lea dx,string
    mov ah,9
    int 21h
    
  
    
    mov bl,0
    mov cx,14
    mov si,offset string
    AGAIN:     
    
    mov al,[si]
    cmp al,'a'
    je COUNT
    cmp al,'e'
    je COUNT
    cmp al,'i'
    je COUNT
    cmp al,'o'
    je COUNT
    cmp al,'u'
    jne SKIP
    COUNT: 
    
    inc bl
    SKIP:
    inc si 
    
    loop AGAIN 
    
    add bl,30h
    mov dl,bl
    mov ah,02h
    int 21h
    .exit
main endp
end main
     