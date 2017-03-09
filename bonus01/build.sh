mkdir -p database
docker run -d -v $(pwd)/database:/data/db --name mongo-unsecure mongo
sleep 10
docker exec mongo-unsecure mongo admin --eval "db.createUser({'user': 'root', 'pwd': 'root', 'roles': ['root']});"
docker exec mongo-unsecure mongo app --eval "db.createUser({'user': 'app', 'pwd': 'app', 'roles': ['readWrite']});"
docker exec mongo-unsecure mongo admin --eval "db.shutdownServer();"
docker kill mongo-unsecure
docker rm mongo-unsecure
docker-compose up --build
