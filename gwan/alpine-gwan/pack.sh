#!/bin/bash

NAME="alpine-gwan"
ID=$(docker run -d $NAME /bin/bash)
docker export $ID | docker import - f_$NAME
