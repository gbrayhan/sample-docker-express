FROM ubuntu:bionic

MAINTAINER Ilse Flores (ilsepff@gmail.com)

WORKDIR /app
COPY . .

RUN apt-get update && \
    apt-get install build-essential libssl-dev -y && \
    apt-get install curl -y && \
    apt-get install nodejs -y && \
    apt-get install npm -y && \
    npm install -g express

RUN npm install

EXPOSE 8000
CMD ["node", "index.js"]
