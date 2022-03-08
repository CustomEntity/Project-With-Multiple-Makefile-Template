##
## EPITECH PROJECT, 2021
## cdragonengine - Game engine in C
## File description:
## Makefile
##

MAKEFLAGS += --silent

SRC_DIRS = ./src

SRCS := $(shell find $(SRC_DIRS) -name "*.c")
OBJS = $(SRCS:.c=.o)

CFLAGS = -W -Wall -Wextra -Werror
CPPFLAGS = -I./include

LIB = libcommons.a

all : $(LIB)

$(LIB) : $(OBJS)
	@ $(AR) src $(LIB) $+

%.o :	%.c
	@ $(CC) -o $@ -c $< $(CFLAGS) $(CPPFLAGS)

re : fclean all

fclean : clean
	@ $(RM) -rf $(LIB)

clean :
	@ $(RM) -rf $(OBJS)
	@ $(RM) -rf *.gcda
	@ $(RM) -rf *.gcno