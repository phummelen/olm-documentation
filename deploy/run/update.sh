#!/bin/bash
SETENV_FILE=${SETENV_FILE:-./setenv.sh}
. ${SETENV_FILE}
. ./defaults.sh

set +e
olm-docs-imageid=$(docker inspect --format='{{.Image}}' olm-${ENVIRONMENT})
set -e

# pull the latest container
docker-compose ${COMPOSE_FILES} -p olm-${ENVIRONMENT} pull

# stop the container
./stop.sh

# remove the current container instance (removes copy-on-write-layer too)
(docker rm -v olm-${ENVIRONMENT} || true)

# remove the old image (if it is not used anymore)
if [ "$(docker inspect --format='{{.Image}}' olm-${ENVIRONMENT})" != "${olm-docs-imageid}" ]
then
	(docker rmi ${olm-docs-imageid} || true)
fi

# start the container
./start.sh