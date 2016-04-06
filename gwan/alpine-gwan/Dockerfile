# An Alpine image with (gnu) glibc and alpine-sdk, required
# by gwan to compile C code and start
# build with (example):
# docker build -t alpine-gwan .

from jeanblanchard/alpine-glibc

RUN apk update && apk add alpine-sdk curl bzip2

RUN mkdir /opt

RUN curl http://gwan.com/archives/gwan_linux64-bit.tar.bz2 | tar xj -C /opt

RUN apk del curl bzip2

CMD /opt/gwan_linux64-bit/gwan

EXPOSE 8080
EXPOSE 8081