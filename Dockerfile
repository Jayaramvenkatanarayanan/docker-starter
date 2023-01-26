FROM node:18-alpine

WORKDIR /nodeApp

COPY package.json /nodeApp

RUN npm install

COPY . /nodeApp

EXPOSE 90

CMD [ "node", "server.js" ]