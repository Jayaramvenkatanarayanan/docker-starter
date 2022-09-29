# Docker Starter File
Learn Docker

## Lesson
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
