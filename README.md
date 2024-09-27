# itpg-docker-compose

Docker compose files for a very simple working setup of [itpg](https://github.com/vanillaiice/itpg).
This setup does not include features such as mail services and Caddy server.

# Installation

```
$ git clone https://github.com/vanillaiice/itpg-docker-compose
```

# Usage

The build script will spin up the itpg-server and itpg-frontend containers. Optionally, it can also set up an itpg-seeder container to seed the database with fake data.

```sh
# set up itpg-server and itpg-frontend containers
$ ./build.sh

# set up itpg-server and itpg-frontend containers and seed the database with fake data
$ ./build.sh -s

# take down all services
$ ./build.sh -d
```

## Config

In the `data/config-*.toml` files, please replace `DOMAIN` with the URL where [itpg-frontend](https://github.com/vanillaiice/itpg-frontend) is running.

Also feel free to play around with the other settings in the `data/config.toml` file.
