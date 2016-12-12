FROM debian

RUN apt-get update && apt-get install -y nginx
RUN echo "Hello World" > /var/www/html/index.html

CMD ["nginx", "-g", "daemon off;"]
