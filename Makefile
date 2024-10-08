# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: krazikho <krazikho@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/15 19:59:51 by krazikho          #+#    #+#              #
#    Updated: 2023/12/03 16:10:16 by krazikho         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS			=	ft_isalnum.c ft_isprint.c ft_memcmp.c  ft_putchar_fd.c ft_split.c \
					ft_strlcat.c ft_strncmp.c ft_substr.c ft_atoi.c ft_isalpha.c \
					ft_itoa.c ft_memcpy.c  ft_putendl_fd.c ft_strlcpy.c ft_strrchr.c\
					ft_tolower.c ft_bzero.c   ft_isascii.c ft_strchr.c ft_strnstr.c\
					ft_memmove.c ft_putnbr_fd.c  ft_strdup.c  ft_strlen.c \
					ft_toupper.c ft_calloc.c  ft_isdigit.c ft_memchr.c  ft_memset.c  \
					ft_putstr_fd.c  ft_strjoin.c ft_strmapi.c ft_strtrim.c ft_striteri.c
SRCSB 			= 	ft_lstnew.c ft_lstadd_front.c \
					ft_lstsize.c ft_lstlast.c \
					ft_lstadd_back.c ft_lstdelone.c \
					ft_lstclear.c ft_lstiter.c \
					ft_lstmap.c
OBJS			= $(SRCS:.c=.o)
OBJSB 			= ${SRCSB:.c=.o}
CC				= gcc
RM				= rm -f
CFLAGS			= -Wall -Wextra -Werror
NAME			= libft.a

all:			$(NAME)
$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)
bonus:			${NAME} ${OBJSB}
				ar rcs ${NAME} ${OBJSB}
clean:			
	$(RM) $(OBJS) $(OBJSB)
fclean:			clean
				$(RM) $(NAME) $(bonus)
re:				fclean $(NAME)
.PHONY:			all clean fclean re bonus