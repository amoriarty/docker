#!/bin/sh
set -m
$cmd = "mongod"

# IF AUTH
if [ "AUTH" == "yes" ]; then
	$cmd = "$cmd --auth"
fi

# LAUNCH COMMAND
$cmd &

# SETTING ROOT USER
if [ ! -f /data/db/.mongodb_password_set ]; then
	mongo admin --eval "db.createUser({user: '$ADMIN_USER', pwd: '$ADMIN_PWD', roles: ['root'] })"
	touch /data/db/.mongodb_password_set
fi

# CAME BACK TO MONGOD
