NAME= libftprintf.a
CC= gcc
CFLAGS= -Wall -Werror -Wextra
SRC= ft_putcharft.c ft_putstrft.c ft_putnbrft.c \
ft_putnbrx.c ft_putnbrcx.c ft_putpointerft.c \
ft_printf.c ft_putnbruft.c
OBJS= $(SRC:.c=.o)
all: $(NAME)
$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)
%.o : %.c
	@$(CC) -c $(CFLAGS) $< -o $@
clean:
	@rm -f $(OBJS)
fclean: clean 
	@rm -f $(NAME) 
re: fclean all
.PHONY: all re fclean clean