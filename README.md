# itpg-docker-compose

Docker compose files for a working setup of [itpg](https://github.com/vanillaiice/itpg).

# Installation

```
$ git clone https://github.com/vanillaiice/itpg-docker-compose --recursive
```

# Usage

The build script will spin up the itpg-server and itpg-frontend containers.

The server can either be run with a postgres or sqlite database, and will use a redis cache.

```sh
# use postgres backend
$ ./build.sh postgres

# use sqlite backend
$ ./build.sh sqlite
```

# Setup

## Mail server

Please read the `README.md` in the `docker-smtp` directory.

Also, replace `DOMAIN` with your own domain.

## env file

Please fill out the `.env` file in the root directory with the following values:

- `ORIGIN`, which is the URL where [itpg-frontend](https://github.com/vanillaiice/itpg-frontend) is running.

- `API_URL`, which is the URL where [itpg-server](https://github.com/vanillaiice/itpg-server) is running.

## Config

In the `data/config-*.toml` files, please replace `DOMAIN` with the URL where [itpg-frontend](https://github.com/vanillaiice/itpg-frontend) is running.

Also feel free to play around with the other settings in the `data/config-*.toml` files.
