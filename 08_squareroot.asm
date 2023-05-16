;program to print square root of a perfect square number

.model small
.stack
.data
num dw 64
.code
main proc
    .startup
    mov bl,0
    again: inc bl
    mov ax,num
    div bl
    cmp al,bl
    jne again
    
    ;convert result in al into ascii to print
    
    aam      ;      ah=al/10   al=remainder
    add ax,3030h
    mov bl,al
    
    ;print 1st digit
    
    mov dl,ah
    mov ah,02h
    int 21h
    
    ;print 2nd digit
    
    mov dl,bl
    mov ah,02h
    int 21h
    .exit
    main endp
end main