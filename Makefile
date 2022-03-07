##
## EPITECH PROJECT, 2021
## MyDefender - 2D Tower Defense Game
## File description:
## Makefile
##

MAKEFLAGS += --silent

all : maze_solver maze_generator

maze_solver : common_lib
	@ echo "\n\e[32;1m✔ \e[1;35mMaze solver created successfully !"
	@ $(MAKE) -C ./maze_solver/ --no-print-directory

maze_generator : common_lib
	@ echo "\n\e[32;1m✔ \e[1;35mMaze generator created successfully !"
	@ $(MAKE) -C ./maze_generator/ --no-print-directory

common_lib :
	@ echo "\n\e[32;1m✔ \e[1;35mCommon library created successfully !"
	@ $(MAKE) -C ./common/ --no-print-directory

re : fclean all

fclean : clean
	@ make -C ./maze_solver/ fclean --no-print-directory
	@ make -C ./maze_generator/ fclean --no-print-directory
	@ make -C ./common/ fclean --no-print-directory
	@ rm -rf ./generator
	@ rm -rf ./solver

clean :
	@ make -C ./maze_solver/ clean --no-print-directory
	@ make -C ./maze_generator/ clean --no-print-directory
	@ make -C ./common/ clean --no-print-directory

