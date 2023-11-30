NAME = build

SRC = srcs/

all: $(NAME)

$(NAME): $(SRC)
	@ docker compose --project-directory $(SRC) up --build -d

stop:
	@ docker compose --project-directory $(SRC) stop

clean:
	@ docker compose --project-directory $(SRC) down

fclean: clean
	@ docker compose --project-directory $(SRC) down -v --rmi all

