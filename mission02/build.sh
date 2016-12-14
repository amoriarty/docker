cp /Users/alegent/.ssh/id_rsa.pub .
docker build -t ssh/keys:v42 .
docker run -d --name ssh_keys -p 4222:42 --hostname 42born2code ssh/keys:v42
