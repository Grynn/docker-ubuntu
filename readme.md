## A general purpose Ubuntu (trusty) base image

Ubuntu Trusty + locale's fixed up and a few useful PPAs
like chis-lea/nodejs ondrej/php5-5.6 webupd8team/java (oracle java installer), git-core
nginx apache2 php5 php-fpm git vim mysql downloaded/cached but not installed
 
### Build
    git clone https://github.com/grynn/docker-ubuntu
    cd docker-ubuntu
    docker build -t grynn/ubuntu .

### Pull & Run
    docker pull grynn/ubuntu
    docker run -it grynn/ubuntu bash
