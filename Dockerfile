FROM node:18-alpine

WORKDIR /nodeApplication

COPY package.json .

RUN npm i

COPY . .

ENV PORT 90

EXPOSE ${PORT}

VOLUME [ "/nodeApplication/node_modules" ]

CMD [ "npm", "start" ]