.model tiny
.stack 100h

data segment
    num1 db 97h
    num2 db 79h
    
ends
code segment
    assume ds:data cs:code
    begin:
    mov ax,@data
    mov ds,ax
    
    mov al,num1
    mov bl,num2
    
    xchg al,num2
    xchg bl,num1
    
    mov ah,4ch
    int 21h
    end begin
