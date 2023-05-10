#!/bin/bash
SETENV_FILE=${SETENV_FILE:-./setenv.sh}
. ${SETENV_FILE}
. ./defaults.sh

export APP=${1:-olm-docs}

docker exec -it ${ENVIRONMENT}-${APP} /bin/sh
