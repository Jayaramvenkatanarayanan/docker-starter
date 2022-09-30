# Docker Starter File
Learn Docker

## Lesson -1
FROM node:latest -- docker image

WORKDIR /app   --  workdir

COPY package.json . -- copy the package.json

RUN npm install  -- run command

COPY . .  -- copy all

EXPOSE 3000  -- port no

CMD ["node","app.js"]  -- cmd to run

docker build .  - > build

docker run id ;  -- id

docker stop "docker name" -- stop

list
---
docker ps

remove all images
-----------------
docker system prune -a

## Lesson -2

optimize the docker file  - check the package.json if its not major change its will take the cache from layer

FROM node

WORKDIR /nodeApp

COPY package.json /nodeApp

RUN npm install

COPY . /nodeApp

EXPOSE 80

CMD [ "node", "server.js" ]
