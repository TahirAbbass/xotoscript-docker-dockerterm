#!/bin/sh

docker-compose --file ./docker-compose.yml up --build sut
docker-compose --file ./docker-compose.yml down --volumes --remove-orphans --rmi all
