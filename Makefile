# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: almejia- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/13 22:08:57 by almejia-          #+#    #+#              #
#    Updated: 2024/05/05 08:58:06 by almejia-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
LIB = ar rcs
RM = rm -f

CC = gcc
CCFLAGS = -Wall -Wextra -Werror

SRC =  Src/ft_atoi.c Src/ft_bzero.c Src/ft_calloc.c Src/ft_isalnum.c \
       Src/ft_isalpha.c Src/ft_isascii.c Src/ft_isdigit.c Src/ft_isprint.c \
       Src/ft_itoa.c Src/ft_memchr.c Src/ft_memcmp.c Src/ft_memcpy.c \
       Src/ft_memmove.c Src/ft_memset.c Src/ft_putchar_fd.c Src/ft_putendl_fd.c \
       Src/ft_putnbr_fd.c Src/ft_putstr_fd.c Src/ft_split.c Src/ft_strcat.c \
       Src/ft_strchr.c Src/ft_strdup.c Src/ft_striteri.c Src/ft_strjoin.c \
       Src/ft_strlcat.c Src/ft_strlcpy.c Src/ft_strlen.c Src/ft_strmapi.c \
       Src/ft_strncmp.c Src/ft_strnstr.c Src/ft_strrchr.c Src/ft_strtrim.c \
       Src/ft_substr.c Src/ft_tolower.c Src/ft_toupper.c

BONUSSRC = Src/ft_lstadd_back_bonus.c Src/ft_lstadd_front_bonus.c \
           Src/ft_lstclear_bonus.c Src/ft_lstdelone_bonus.c \
           Src/ft_lstiter_bonus.c Src/ft_lstlast_bonus.c \
           Src/ft_lstmap_bonus.c Src/ft_lstnew_bonus.c Src/ft_lstsize_bonus.c

OBJ = $(SRC:.c=.o)
BONUSOBJ = $(BONUSSRC:.c=.o)

INCLUDE = Includes/Libft.h

all: $(NAME)

$(NAME): $(OBJ) $(INCLUDE)
	$(LIB) $(NAME) $(OBJ)

bonus: $(OBJ) $(BONUSOBJ) $(INCLUDE)
	$(LIB) $(NAME) $(BONUSOBJ) $(OBJ)

%.o: %.c
	$(CC) $(CCFLAGS) -c -o $@ $<

clean:
	$(RM) $(OBJ) $(BONUSOBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

rebonus: fclean bonus
