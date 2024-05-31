.MODEL SMALL
.STACK 100H
.DATA


.CODE
MAIN PROC
    
    MOV CX, 0
    
    PUSHIN:
        
        MOV AH, 1             
        INT 21H
        MOV BL, AL           
        
        CMP BL, 0DH           
        JE NEWLINE            
        PUSH BX               
        INC CX                
        JMP PUSHIN            
    
    NEWLINE:
            MOV AH, 2        
            MOV DL, 0DH
            INT 21H
            MOV DL, 0AH
            INT 21H 
            
    POPOUT:                   
            POP DX            
            INT 21H           
            LOOP POPOUT       
MAIN ENDP
END MAIN