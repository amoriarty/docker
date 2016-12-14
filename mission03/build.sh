docker build -t volume .
mkdir -p `pwd`/share
docker run --rm -ti --name volume -v `pwd`/share:/home/docker/share --hostname 42born2code volume
