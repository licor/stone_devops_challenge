FROM node:alpine

WORKDIR /home/node/app
COPY source .
EXPOSE 3000
