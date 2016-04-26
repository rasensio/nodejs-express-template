# Set the base image to Ubuntu
FROM node:latest

# File Author / Maintainer
MAINTAINER Rodrigo Asensio

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# Expose port
EXPOSE  3000

CMD [ "npm", "start" ]
