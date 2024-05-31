.model small
.stack 100h

.data
    space db ' '        ; Define a space character

.code
main:
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Set up the first character to print ('a')
    mov cx, 26          ; We want to print 26 characters
    mov dl, 'a'         ; Start with the character 'a'

print_loop:
    ; Write the character
    mov ah, 02h         ; Function to display a character
    int 21h             ; Call DOS interrupt

    ; Write the space character
    mov dl, space
    mov ah, 02h         ; Function to display a character
    int 21h             ; Call DOS interrupt

    ; Move to the next character
    inc dl              ; Increment the character
    cmp dl, 'a' + 26    ; Compare with 'z' + 1
    jl print_loop       ; Jump if less (still within 'a' to 'z')

    ; Exit the program
    mov ah, 4Ch         ; Function to exit program
    int 21h             ; Call DOS interrupt

end main
