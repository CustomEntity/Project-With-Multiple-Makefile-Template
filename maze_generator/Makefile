##
## EPITECH PROJECT, 2021
## MyDefender - 2D Tower Defense Game
## File description:
## Makefile
##

MAKEFLAGS += --silent

SRC_DIRS = ./src

BIN = generator

SRCS := $(shell find $(SRC_DIRS) -name "*.c")
OBJS = $(SRCS:.c=.o)

CFLAGS = -W -Wall -Wextra -Werror
CPPFLAGS = -I./include -I../common/include/

LDFLAGS	=	-L../common/
LDLIBS = -lcommons

all : $(BIN)
	@ mv $(BIN) ../

$(BIN) : $(OBJS)
	@ $(CC) $(OBJS) -o $(BIN) $(LDFLAGS) $(LDLIBS)

%.o :	%.c
	@ echo "\e[92;1m[\e[36;1m⏳ \e[92;1m] \
\e[1;32mCompiling\e[1;35m $< \e[1;32m...\e[1;0m"
	@ $(CC) -o $@ -c $< $(CFLAGS) $(CPPFLAGS)
	@ echo "    \e[32;1m✔ \e[34m\"\e[1;35m$(@)\e[34m\" \
\e[1;32mSuccessfully compiled !"
re : fclean all

fclean : clean
	@ $(RM) -rf $(BIN)

clean :
	@ $(RM) -rf $(OBJS)
	@ $(RM) -rf *.gcda
	@ $(RM) -rf *.gcno