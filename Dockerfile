FROM ubuntu:bionic
RUN sed -i 's/\/archive.ubuntu/\/in.archive.ubuntu/' /etc/apt/sources.list
RUN DEBIAN_FRONTEND=noninteractive apt-get update -qy 
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -qy
COPY locale /etc/default/locale

