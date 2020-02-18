section .text
    global _ft_list_push_front
    extern _malloc

_ft_list_push_front:
    push rdi
    push rsi
    mov rdi, 16
    call _malloc
    cmp rax, 0
    je return
    pop rsi
    pop rdi
    mov [rax], rsi
    mov r8, [rdi]
    mov [rax + 8], r8
    mov [rdi], rax
    ret
    
return:
    ret