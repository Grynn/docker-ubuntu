FROM ubuntu:trusty
RUN sed -i 's/\/archive.ubuntu/\/in.archive.ubuntu/' /etc/apt/sources.list
RUN DEBIAN_FRONTEND=noninteractive apt-get update -qy && apt-get upgrade -qy 
