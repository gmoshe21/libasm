NAME =      libasm.a

SRCS =      ft_strlen.s\
			ft_strcpy.s\
			ft_strcmp.s\
			ft_write.s\
			ft_read.s\
			ft_strdup.s\

OBG =       $(SRCS:.s=.o)

%.o         : %.s
			nasm -f macho64 $< -o $@

all:        $(NAME)

$(NAME):    $(OBG)
			ar rcs $(NAME) $(OBG)

clean:
			rm -f $(OBG)
			rm -f text.txt
			rm -f ft_text.txt

test:		all
			gcc -Wall -Wextra -Werror libasm.a main.c -o test_libasm
			./test_libasm

fclean:		clean
			rm -f $(NAME)
			rm -f test_libasm

re:			fclean all