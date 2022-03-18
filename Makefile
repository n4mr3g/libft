# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpiccion <gpiccion@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/24 23:31:43 by gpiccion          #+#    #+#              #
#    Updated: 2021/11/24 23:31:43 by gpiccion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

############## VARIABLES ##############

NAME 		= libft.a
CC			= cc 	# cc is the default compiler used in Makefile, and also the one requested for the project. It's not necessary to specify it, but I'm leaving it for the sake of visibility.
CFLAGS		= -Wall -Wextra -Werror

# Libc functions:
LIBFT 		= \
			ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c \
			ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c \
			ft_memchr.c ft_memcmp.c ft_strnstr.c ft_calloc.c ft_strdup.c

# Additional functions:
ADDITIONAL 	= \
			ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
			ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c


SRC			= $(LIBFT) $(ADDITIONAL)
OBJ			= $(SRC:.c=.o)


############## RULES ##############

all: $(NAME)

$(NAME): $(OBJ)
		ar rcs $(NAME) $(OBJ)

%.o: %.c
		$(CC) $(CFLAGS) -c $^ -o $@

clean:
		rm -f $(OBJ) $(NAME:.a=.h.gch)

fclean: clean
		rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re