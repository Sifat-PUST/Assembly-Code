.model small
.stack 100h
.code

main proc
    mov cx,26
    
    mov ah,2
    mov dl,'A'
    
    l1:
    int 21h 
    inc dl 
    mov bl,dl
    mov dl,32
    int 21h
    mov dl,bl
    loop l1 
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main