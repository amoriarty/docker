docker build -t hello/world:v42 .
docker run --rm --name hello_world -p 8080:80 hello/world:v42 &
