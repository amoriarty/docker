FROM debian

RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y nginx
RUN echo "Hello World" > /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
