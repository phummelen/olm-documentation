# Docker
We are running the application within containers. Using Docker (or podman).
Information about using Docker is widly spread on the internet. We only have some basic information mentioned here.
Mainly to help the creating of images on the local machine. Mostly for testing purposes.

## Used commands

### WEB
cd <main-folder>/olm-web
docker build --rm -t phummelen/olm-web:latest -f deployment/web-dev.dockerfile .

docker run --rm -it -p 9000:9000 phummelen/olm-web:latest

### DOCS
cd <main-folder>/olm-documentation
docker build --rm -t phummelen/olm-docs:latest -f deploy/build/dockerfile .

### MTA
cd <main-folder>/olm-deploy
docker build --rm -t phummelen/olm-mta:latest -f mta/Dockerfile .
