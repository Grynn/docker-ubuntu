FROM ubuntu:trusty
RUN sed -i 's/\/archive.ubuntu/\/in.archive.ubuntu/' /etc/apt/sources.list
RUN DEBIAN_FRONTEND=noninteractive apt-get update -qy 
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -qy
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy software-properties-common 
RUN locale-gen en_US en_US.UTF-8
RUN DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
RUN for repo in \
ppa:chris-lea/node.js \
ppa:ondrej/php5-5.6 \
ppa:webupd8team/java \ 
ppa:git-core/ppa \
; do apt-add-repository -y $repo; done
