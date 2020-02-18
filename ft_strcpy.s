section .text
    global _ft_strcpy

_ft_strcpy:
    mov rax, -1d

run:
    inc rax
    mov cl, byte [rsi + rax]
    mov byte [rdi + rax], cl
    cmp cl, 0
    je return
    jmp run
return:
    mov rax, rdi
    ret
