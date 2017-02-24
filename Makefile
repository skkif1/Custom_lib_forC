#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: omotyliu <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/25 19:32:32 by omotyliu          #+#    #+#              #
#    Updated: 2017/01/28 20:19:04 by omotyliu         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

SRCFLS = ft_atoi.c ft_memchr.c ft_strchr.c ft_strcpy.c ft_bzero.c ft_memcmp.c \
ft_putendl.c ft_tolower.c ft_isalnum.c ft_memcpy.c ft_strcmp.c ft_strlcat.c \
ft_toupper.c ft_isalpha.c ft_putnbr.c ft_strncpy.c ft_strlen.c \
ft_strnstr.c ft_isascii.c ft_strrchr.c ft_isdigit.c ft_memmove.c ft_striter.c \
ft_striteri.c ft_putstr.c ft_strdup.c ft_isprint.c ft_memset.c ft_strncat.c \
ft_strstr.c ft_memccpy.c ft_putchar.c ft_memalloc.c ft_strcat.c ft_strncmp.c \
ft_memdel.c ft_strnew.c ft_strdel.c ft_strclr.c ft_strmap.c ft_strmapi.c \
ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c \
ft_itoa.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c \
ft_lstadd_end.c ft_append.c

OBJECTS = $(subst .c,.o,$(SRCFLS))

all: $(NAME)

$(NAME): $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)

$(OBJECTS): $(SRCFLS)
	gcc -Wall -Wextra -Werror -c $(SRCFLS)

clean: 
	/bin/rm -f $(OBJECTS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
