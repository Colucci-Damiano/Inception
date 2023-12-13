NAME = build

SRC = srcs/

all: $(NAME)

$(NAME): $(SRC)
	@ bash ./srcs/requirements/tools/volumes.sh
	@ docker compose --project-directory $(SRC) up -d --build

stop:
	@ docker compose --project-directory $(SRC) stop

clean:
	@ docker compose --project-directory $(SRC) down

fclean: clean
	@ docker compose --project-directory $(SRC) down -v --rmi all
	@ sudo rm -rf /home/dcolucci/data

re: fclean all
