FROM node:18-alpine

WORKDIR /nodeApplication

COPY package.json .

RUN npm i

COPY . .

EXPOSE 90

CMD [ "node", "server.js" ]