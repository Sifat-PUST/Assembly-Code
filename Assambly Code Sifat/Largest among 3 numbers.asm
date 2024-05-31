.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    mov bh,al
    int 21h
    mov bl,al
    int 21h
    mov cl,al
    
    cmp bh,bl
    jge l1
    l2:
    cmp bl,cl
    jge l3
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    l3:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    l1:
    cmp bh,cl
    jge l4
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    l4: 
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    