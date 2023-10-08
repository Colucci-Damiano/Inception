NAME = build

SRC = srcs/

all: $(NAME)

$(NAME): $(SRC)
	@ docker compose --project-directory $(SRC) up --detach

stop:
	@ docker compose --project-directory $(SRC) stop
