NAME = build

SRC = srcs/

all: $(NAME)

$(NAME): $(SRC)
	@ docker compose --project-directory $(SRC) up --build --detach

stop:
	@ docker compose --project-directory $(SRC) stop

down:
	@ docker compose --project-directory $(SRC) down
