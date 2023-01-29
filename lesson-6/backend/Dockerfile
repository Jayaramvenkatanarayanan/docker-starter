FROM node:18-alpine

WORKDIR /api

COPY package.json .

RUN npm i

COPY . .

EXPOSE 90

# Add presist the nodemodules



CMD ["npm","start"]