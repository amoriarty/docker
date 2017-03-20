FROM node:7.7.1-alpine

RUN npm i -g typescript typings @angular/cli
WORKDIR /usr/src/app
VOLUME /usr/src/app
VOLUME /var/www/html
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
