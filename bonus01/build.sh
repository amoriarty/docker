#!/bin/sh

# CONFIGURE MONGO FOR SECURITY
docker build -t mongo-secure mongo \
	&& echo "docker running secure ;)" \
	&& docker run -ti --rm -v `pwd`/scripts:/scripts --name mongo mongo-secure

# BUILD ALL AND UP
#docker-compose up --build
