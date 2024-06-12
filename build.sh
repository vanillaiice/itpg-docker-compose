#! /bin/sh

[ $# -eq 0 ] && { echo "Usage: $0 postgres|sqlite"; exit 1; }

if [ "$1" = "postgres" ]; then
	docker compose -f ./docker-compose-postgres.yml -f ./docker-smtp/docker-compose.yml up
elif [ "$1" = "sqlite" ]; then
	docker compose -f ./docker-compose-sqlite.yml -f ./docker-smtp/docker-compose.yml up
else 
	echo "database type $1 not supported"
	exit 1
fi
