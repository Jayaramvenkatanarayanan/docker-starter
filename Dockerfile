FROM node

WORKDIR /nodeApp

COPY package.json /nodeApp

RUN npm install

COPY . /nodeApp

EXPOSE 80

CMD [ "node", "server.js" ]