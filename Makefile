SERVICE?=web
DATABASE?=db
DC_FILE?=docker-compose.yml

bash:
	docker-compose -f $(DC_FILE) exec $(SERVICE) bash

test_bash:
	docker-compose -f $(DC_FILE) exec -e PYTHON_ENV=test $(SERVICE) bash

build:
	docker-compose -f $(DC_FILE) build --pull

pull:
	docker-compose -f $(DC_FILE) pull

up:
	docker-compose -f $(DC_FILE) up -d

down:
	docker-compose -f $(DC_FILE) down -v
