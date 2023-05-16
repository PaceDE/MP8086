.model small


.data
password db "leo messi$"
msg1 db "Enter the password:$"
msg2 db 13,10, "Welcome$"
msg3 db 13,10, "Invalid user$"
val db ?

.code
main proc
.startup
mov dx,offset msg1
mov ah,09h
int 21h  

mov bh,0
mov cx,9
mov si,offset password

AGAIN:
mov ah,01h
int 21h
mov val,al
mov bl,[si]
cmp val,bl
jne SKIP
inc bh

SKIP:
inc si
loop AGAIN
cmp bh,9
jne INVALID
mov dx,offset msg2
mov ah,09h
int 21h
JMP EXIT

INVALID:
mov dx,offset msg3
mov ah,09h
int 21h 

EXIT: 
mov ax,4ch 
int 21h
main endp
end main



























































































































































































































