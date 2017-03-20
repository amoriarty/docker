mkdir -p database
docker run --rm -d -v $(pwd)/database:/data/db --name mongo-unsecure mongo --auth
sleep 10
docker exec mongo-unsecure mongo admin --eval "db.createUser({'user': 'root', 'pwd': 'root', 'roles': ['root']});"
docker exec mongo-unsecure mongo app -u root -p root --authenticationDatabase admin --eval "db.createUser({'user': 'app', 'pwd': 'app', 'roles': ['readWrite']});"
docker exec mongo-unsecure mongod --shutdown
docker-compose up --build
