FROM debian:jessie

ENV AUTH="yes"
ENV ADMIN_USER="root"
ENV ADMIN_PWD="root"
VOLUME /scripts

RUN apt-get update \
	&& apt-get install -y mongodb \
	&& mongod --fork --logpath /var/log/mongod.log
	&& mongo admin /scripts/add_root.js

CMD ["/run.sh"]
