
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>

typedef struct	s_list
{
    void			*data;
    struct s_list	*next;
}				t_list;

int				ft_list_size(t_list *begin_list);
void			ft_list_push_front(t_list **begin_list, void *data);

int			main()
{
	printf("\033[1;31mTesting FUNCTION LIST_SIZE\n\n\033[0m");
	t_list	tmp;
	t_list	tmp2;
	t_list	tmp3;
	tmp.next = NULL;
	printf("\033[1;32mSize: %d\033[0m -- \033[1;31m%d\n\033[0m", ft_list_size(&tmp), 1);
	tmp.next = &tmp2;
	tmp2.next = NULL;
	printf("\033[1;32mSize: %d\033[0m -- \033[1;31m%d\n\033[0m", ft_list_size(&tmp), 2);
	tmp.next->next = &tmp3;
	tmp3.next = NULL;
	printf("\033[1;32mSize: %d\033[0m -- \033[1;31m%d\n\033[0m", ft_list_size(&tmp), 3);

	printf("\033[1;31mTesting FUNCTION LIST_PUSH_FRONT\n\n\033[0m");
	t_list	*temp;
	temp = malloc(sizeof(t_list));
	temp->data = "Hellos";
	temp->next = NULL;
	printf("\033[1;31mFirst element\033[0m --> \033[1;32m%s\n\033[0m", temp->data);
	ft_list_push_front(&temp, "New Element 1");
	printf("\033[1;31mFirst element\033[0m --> \033[1;32m%s\n\033[0m", temp->data);
	ft_list_push_front(&temp, "New Element 2");
	printf("\033[1;31mFirst element\033[0m --> \033[1;32m%s\n\033[0m", temp->data);
	ft_list_push_front(&temp, "New Element 3");
	printf("\033[1;31mFirst element\033[0m --> \033[1;32m%s\n\033[0m", temp->data);
	printf("\033[1;32mSize of the list: %d\n\033[0m", ft_list_size(temp));
	return (0);
}