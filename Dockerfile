FROM node:18-alpine

WORKDIR /nodeApplication

COPY package.json .

RUN npm i

COPY . .

ARG  DEFAULT_PORT=90

ENV PORT ${DEFAULT_PORT}

EXPOSE ${PORT}

VOLUME [ "/nodeApplication/node_modules" ]

CMD [ "npm", "start" ]