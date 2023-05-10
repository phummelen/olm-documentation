export ENVIRONMENT=${ENVIRONMENT:-'test'}
export WEB_PORT=${WEB_PORT:-80}
export EXTERNAL_PORTS=${EXTERNAL_PORTS:-n}

if [ -e ./docker-compose.override.yml ]
then
    export COMPOSE_FILES="-f ./docker-compose.yml -f ./docker-compose.override.yml"
else
    export COMPOSE_FILES="-f ./docker-compose.yml"
fi

if [ ${EXTERNAL_PORTS} == "y" ]
then
    COMPOSE_FILES="$COMPOSE_FILES -f ./docker-compose.external-ports.yml"
fi

if [ -f /etc/timezone ]
then
	# for Debian based systems (like Ubuntu)
    export TIMEZONE=$(cat /etc/timezone)
else
    # for RHEL based systems (like Suse)
    export TIMEZONE=$(egrep '^TIMEZONE=' /etc/sysconfig/clock | sed 's/TIMEZONE="//' | sed 's/"//')
fi
