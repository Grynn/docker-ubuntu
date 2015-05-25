FROM ubuntu:trusty
ADD prep.sh /tmp/
RUN /tmp/prep.sh
