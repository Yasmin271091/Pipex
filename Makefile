# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yasjimen <yasjimen@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/17 18:38:28 by yasjimen          #+#    #+#              #
#    Updated: 2024/12/17 18:38:28 by yasjimen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME        = pipex
CC          = cc
CFLAGS      = -Wall -Wextra -Werror
RM          = rm -f

SRCS		= pipex.c ft_split.c ft_putstr_fd.c
OBJS        = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re