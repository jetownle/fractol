# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jetownle <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/25 04:41:02 by jetownle          #+#    #+#              #
#    Updated: 2019/09/25 04:42:52 by jetownle         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fractol
FLAGS = -Wall -Wextra -Werror
OBJ = *.o
SRCF = *.c
HDRS = fractol.h

.PHONY: all clean fclean re debug

all: $(NAME)

$(NAME):
	make -C libft
	make -C minilibx_macos
	gcc $(FLAGS) -o $(NAME) $(SRCF) -I $(HDRS) -L. libft/libft.a -L. ~/fdf/minilibx_macos/libmlx.a -framework OpenGL -framework Appkit

clean:
	rm -rf *.o
	make -C libft/ clean

fclean: clean
	rm -f $(NAME)
	make -C libft/ fclean

re: fclean all

debug: fclean
	make -C libft/
	make -C minilibx_macos
	gcc -g $(FLAGS) -o $(NAME) $(SRCF) -I $(HDRS) -L. libft/libft.a -L. ~/fdf/minilibx_macos/libmlx.a -framework OpenGL -framework Appkit

