## A general purpose Ubuntu (trusty) base image

Ubuntu Trusty + locale's fixed up and a few useful PPAs
like ondrej/php5-5.6 webupd8team/java (oracle java installer), git-core, nodesource

nginx apache2 php5 php-fpm git vim mysql nodejs downloaded/cached but not installed
 
### Build

    git clone https://github.com/grynn/docker-ubuntu
    cd docker-ubuntu
    docker build -t grynn/ubuntu .

### Pull & Run

[https://registry.hub.docker.com/u/grynn/ubuntu/](Docker Hub)

    docker pull grynn/ubuntu
    docker run -it grynn/ubuntu bash
