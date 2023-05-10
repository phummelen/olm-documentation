#!/bin/bash

if [ "$1" = "" ]
then
    SETENV_FILE=./setenv.sh
else
    SETENV_FILE=$1
fi

. ${SETENV_FILE}
. ./defaults.sh

docker-compose ${COMPOSE_FILES} -p olm-${ENVIRONMENT} stop
