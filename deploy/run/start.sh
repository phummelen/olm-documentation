#!/bin/bash

if [ "$1" = "" ]
then
    SETENV_FILE=./setenv.sh
else
    SETENV_FILE=$1
fi

. ${SETENV_FILE}
. ./defaults.sh

if [ "$(docker network ls | grep c " ${ENVIRONMENT} ")" -eq "0" ]
then
    docker network create -d bridge ${ENVIRONMENT}
fi

docker-compose ${COMPOSE_FILES} -p olm-${ENVIRONMENT} up -d --remove-orphans
