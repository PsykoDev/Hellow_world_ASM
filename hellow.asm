; hellow.asm
;
; Author: PsykoDev

global _start

section .text:
    ; lib arch linux asm x86 unistd 32 
    ; usr/include/asm/unistd_32.h
_start:
    mov eax, 0x4            ; use the write syscall
    mov ebx, 1              ; use stdout as the ( fd ) file descriptor
    mov ecx, message        ; use the message as the buffer
    mov edx, message_length ; and supply the length
    int 0x80                

    ; now exit

    mov eax, 0x1            ; use for exit
    mov ebx, 0              ; set fd as 0
    int 0x80


section .data:
    message: db "Meow Hellow", 0xA ; 0xA = \n char
    message_length equ $-message