section .text
    global _ft_strcmp

_ft_strcmp:
    mov rax, -1

run:
    inc rax
    mov cl, byte [rdi + rax]
    cmp cl, 0
    je return
    cmp byte [rsi + rax], 0
    je return
    cmp cl, byte [rsi + rax]
    jnz return
    jmp run

return:
    sub cl, byte [rsi + rax]
    movsx rax, cl
    ret

    