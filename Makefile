
SRCS = ft_strlen.s ft_strcpy.s ft_write.s ft_read.s ft_strcmp.s ft_strdup.s

SRCS_BONUS = ft_list_push_front.s ft_list_size.s

NAME = libasm.a

COMMAND = ar rc ${NAME} ${OBJS}

COMMAND_BONUS = ar rc ${NAME} ${OBJS_BONUS}

GCC = gcc -Wall -Werror -Wextra

OBJS = ${SRCS:.s=.o}

OBJS_BONUS = ${SRCS_BONUS:.s=.o}

RM = rm -f

#FLAGS = -g

.s.o:
			nasm -f macho64 $< -o ${<:.s=.o}

$(NAME):	${OBJS}
			${COMMAND}

bonus:		${OBJS_BONUS}
			${COMMAND_BONUS}

test:
			gcc -Wall -Werror -Wextra -L. -lasm test.c
			clear && ./a.out
testbonus:
			gcc -Wall -Werror -Wextra -L. -lasm testbonus.c
			clear && ./a.out

all:		$(NAME) bonus

re:			fclean all

clean:
			${RM} ${OBJS}
fclean:
			${RM} ${NAME}