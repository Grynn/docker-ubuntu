[![Docker Build Status](https://img.shields.io/docker/build/grynn/ubuntu.svg?style=flat-square)](https://hub.docker.com/r/grynn/ubuntu/builds/)

## A general purpose Ubuntu (trusty) base image

Ubuntu Trusty + locale's fixed up and a few useful PPAs
like ondrej/php webupd8team/java (oracle java installer), git-core, nodesource

nginx apache2 php7 php-fpm git vim mysql nodejs downloaded/cached but not installed
 
### Build

    git clone https://github.com/grynn/docker-ubuntu
    cd docker-ubuntu
    docker build -t grynn/ubuntu .

### Pull & Run

Via [Docker Hub](https://registry.hub.docker.com/u/grynn/ubuntu/)

    docker pull grynn/ubuntu
    docker run -it grynn/ubuntu bash
