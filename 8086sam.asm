.model small
.stack 100h
.data
msg1 db 10,13,"enter first number:::$"   
msg2 db 10,13,"enter second number:::$" 
msg3 db 10,13,"equal:$"       
msg4 db 10,13," not equal:$" 
ends
code segment
    assume ds:data cs:code
    begin:
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    
    mov cl,al  
    lea dx,msg2
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov dl,al 
    
    cmp dl,cl
    je l1
   
     lea dx,msg4
    mov ah,9
    int 21h   
    jmp exit
    
    l1:   lea dx,msg3
    mov ah,9
    int 21h 
    
    exit:mov ah,4ch
    int 21h
    end begin