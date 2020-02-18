section .text
    global _ft_list_size

_ft_list_size:
    mov rax, 0
    cmp rdi, 0
    je return

run:
    inc rax
    mov rdi, [rdi + 8]
    cmp rdi, 0
    je return
    jmp run
    ret

return:
    ret