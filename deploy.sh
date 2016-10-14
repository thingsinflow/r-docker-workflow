#!/usr/bin/env bash

docker-machine create --driver digitalocean \
                      --digitalocean-access-token \
                        $DEPLOY_TOKEN_R_MEETUP \
                      --digitalocean-region ams2 \
                        shiny-server
docker-machine env shiny-server
eval $(docker-machine env shiny-server)

docker-compose up -d
