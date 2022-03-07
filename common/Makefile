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

CFLAGS = -I./include

LIB = libcommons.a

all : $(LIB)

$(LIB) : $(OBJS)
	@ ar src $(LIB) $+

%.o :	%.c
	@ $(CC) -o $@ -c $< $(CFLAGS)

re : fclean all

fclean : clean
	@ rm -rf $(LIB)

clean :
	@ rm -rf $(OBJS)
	@ rm -rf *.gcda
	@ rm -rf *.gcno