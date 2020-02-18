     section .text
        global _ft_strlen

_ft_strlen:
                mov rax, -1d
count:
                inc rax
run:
                cmp byte[rdi + rax], 0
                jnz count
                ret