SRCS			= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJS			= $(SRCS:%.s=%.o)

FLAGS 			= -Wall -Werror -Wextra -lasm -L.

NAME			= libasm.a

%.o:			%.s
				nasm -f macho64 $<

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)

clean:
				rm -rf $(OBJS)

fclean:			clean
				rm -rf $(NAME) test

re:				fclean $(NAME)

test:			$(NAME)
				gcc $(FLAGS) -o test main.c
				./test

.PHONY:			clean fclean re test
