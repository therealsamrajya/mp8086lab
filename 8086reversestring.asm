.model small
.stack 100h

data segment
 str1 db "asd fet ogf$"
    
ends
code segment
    assume ds:data cs:code
    begin:
    mov ax,@data
    mov ds,ax
    
    mov si,offset str1 ;points 1st indx of strig
    mov cx,10
    loop1:mov bx,[si] ;acces elemnts of string as array
    push bx
    inc si
     loop loop1 
     mov cx,10
     loop2:
     pop dx   
     mov ah,2 
     int 21h
     loop loop2     
     
     mov ah,4ch
     int 21h
     end begin
     
    
