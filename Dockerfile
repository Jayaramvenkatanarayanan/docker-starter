FROM node:18-alpine

WORKDIR /nodeApplication

COPY package.json .

RUN npm i

COPY . .

EXPOSE 90

VOLUME [ "/nodeApplication/node_modules" ]

CMD [ "npm", "start" ]