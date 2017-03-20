docker build -t hello/world:v42 .
docker run -d --name hello_world -p 8080:80 --hostname 42born2code hello/world:v42 
docker exec -ti hello_world bash
docker kill hello_world
docker rm hello_world
