FROM node:18-alpine

WORKDIR /nodeApp

COPY package.json .

RUN npm i

COPY . .

EXPOSE 9001

CMD ["npm", "start"]