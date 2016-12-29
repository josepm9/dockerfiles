# docker build -t josepm9/debopenjdk8:v1 .
# docker tag josepm9/debopenjdk8:v1 josepm9/debopenjdk8:latest
# docker run -t -i --rm josepm9/debopenjdk8 /bin/bash

from debian:8.6

# Instalar OpenJDK 1.8 de repositorio

RUN echo deb http://http.debian.net/debian jessie-backports main >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y --no-install-recommends install openjdk-8-jre-headless
RUN apt-get -y --no-install-recommends install openjdk-8-jdk

# Hasta aquí, 381 Mb
