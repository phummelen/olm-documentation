# Running locally

If you want to run the environment locally, that's possible!
You have to download the main repo(s) where a `docker-compose` file is in.
Also you have to have *Docker* (or podman) installed on you machine.

With those two pre-requisites you can start the containers locally.
Be aware, for some features you need `keys`, which are not *free to use* from the community. If needed, reach out to the core team for help.

After first startup, we have to do some manual actions. In the future we gonna try to get these steps within setup-containers.

## Start
So, these are the (commandline) steps to start and initialize the environment

1. To start: `docker-compose up -d` (or `docker-compose start` if just stopped)
2. To enter the container (initialize): `docker exec -it olm-web /bin/bash`
3. To load dummy data (initialize): `php artisan migrate:fresh --seed`
4. Log out or the container using (after initialisation) `ctrl-d` or `exit`
5. Go to the local site: [direct](http://localhost:8000/) or via [proxy](http://localhost:8080)

NB: If you have initialized the database, you can skip the *initialize* steps. Step one is mandatory. 

You should see the basic site now. Several function will work, several will not work.
To log in, there are two accounts:

|User|Password|
|----|--------|
|admin@example.com|password|
|user@example.com|password|

## Stop
To stop the environment there are three options:

- stop only: `docker-compose stop`
- bring down: `docker-compose down`
- bring down and remove: `docker-compose down -v`

I'm mostly using the middle one. For me that's the best, because I do a lot of docker stuff on my machine.
Also, using this command will always use the latest version of the (newly pulled) images.

## Update images

To refresh the local images with the ones from the Docker registry, the main command is `docker pull [docker_image]`.
We currently have three own created images, so we have three commands to be given:

`docker pull phummelen/olm-mta`
`docker pull phummelen/olm-docs`
`docker pull phummelen/olm-web`
