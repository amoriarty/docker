FROM node:7.7.1-alpine

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm i

EXPOSE 80
CMD ["npm", "start"]