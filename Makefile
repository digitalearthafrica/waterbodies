SHELL := /bin/bash

.DEFAULT_GOAL := help

.PHONY: help setup up down clean test

PRODUCT_CATALOG = "https://raw.githubusercontent.com/digitalearthafrica/config/master/prod/products_prod.csv"

help: ## Print this help
	@grep -E '^##.*$$' $(MAKEFILE_LIST) | cut -c'4-'
	@echo
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

build: ## 0. Build the base image
	docker compose pull
	docker compose build

up: ## 1. Bring up your Docker environment.
	docker compose up -d 

init: ## 2. Prepare the database, initialise the database schema.
	docker compose exec -T index datacube -v system init

products: ## 3. Add the wofs_ls product definition for testing.
	docker compose exec -T index datacube -v product add https://raw.githubusercontent.com/digitalearthafrica/config/master/products/wofs_ls.odc-product.yaml

index: ## 4. Index the test data.
	cat index_tiles.sh | docker compose exec -T index bash

install-waterbodies: ## 5. Install waterbodies
	docker compose exec -T waterbodies bash -c "pip install -e ."

sleep:
	sleep 1m

test-env: build up sleep init products index install-waterbodies

run-tests:
	docker compose exec -T waterbodies bash -c "coverage run -m pytest ."
	docker compose exec -T waterbodies bash -c "coverage report -m"
	docker compose exec -T waterbodies bash -c "coverage xml"
	docker compose exec -T waterbodies bash -c "coverage html"

down: ## Bring down the system
	docker compose down

shell: ## Start an interactive shell
	docker compose exec waterbodies bash

clean: ## Delete everything
	docker compose down --rmi all --volumes

logs: ## Show the logs from the stack
	docker compose logs --follow

pip_compile:
	pip-compile --extra=lint --extra=tests --extra=viz --output-file=requirements.txt pyproject.toml requirements.in --verbose --upgrade  