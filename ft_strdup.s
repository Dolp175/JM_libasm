section .text
    global _ft_strdup
    extern _malloc
    extern _ft_strcpy

_ft_strdup:
    mov rax, -1d
count:
    inc rax
run:
    cmp byte[rdi + rax], 0
    jnz count
    inc rax
    cmp rax, 1
    je return
    push rdi
    mov rdi, rax
    call _malloc
    cmp rax, 0
    je return
    pop rsi
    mov rdi, rax
    call _ft_strcpy
    ret

return:
    mov rax, 0
    ret



