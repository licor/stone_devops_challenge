FROM node:alpine

WORKDIR /home/node/app

COPY source .

USER root
# EXPOSE 3000
# # RUN npm install

# CMD [ 'npm', 'start' ]