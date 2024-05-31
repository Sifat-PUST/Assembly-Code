.model small
.stack 100h   
.data
msg db "Result: $"
.code  
main proc 
    
    mov ah,1
    int 21h
    mov bl,al 
    
    mov ah,1
    int 21h 
    add bl,al
    aaa
    
    mov ah,1
    int 21h
    mov bx,ax
    aaa
              
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,2 
    add dl,46
    mov dl,bh
    int 21h
     
    mov ah,2
    add dl,48
    mov dl,bl
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    