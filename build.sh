#! /bin/sh

helpMsg="OPTIONS: -s seed db with fake data, -d take down services, -h show help"

seed=false
down=false

while getopts :sdh opt
do
	case "${opt}" in
		s) seed=true;;
		d) down=true;;
		h) echo "$helpMsg"; exit 0;;
	esac
done

if [ "$down" = true ]; then
	docker compose -f ./docker-compose.yml down; exit 0;	
fi

if [ "$seed" = true ]; then
	docker compose -f ./docker-compose-seeder.yml up && docker compose -f ./docker-compose-seeder.yml down
fi

docker compose -f ./docker-compose.yml up
