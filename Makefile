up:
	docker compose up -d --remove-orphans

up-build:
	docker compose up -d --build --remove-orphans

down:
	docker compose down --remove-orphans

down-with-volumes:
	docker compose down --remove-orphans --volumes

run-tests:
	docker compose run tests

.PHONY: tests
tests:
	COMPOSE_FILE=compose.yaml:compose.tests.yaml docker compose run tests

tests-build:
	COMPOSE_FILE=compose.yaml:compose.tests.yaml docker compose run --build tests

use-dev:
	echo "COMPOSE_FILE=compose.yaml:compose.dev.yaml" >> .env

use-prod:
	echo "COMPOSE_FILE=compose.yaml:compose.prod.yaml" >> .env
