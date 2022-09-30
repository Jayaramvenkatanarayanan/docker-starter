# Docker Starter File
Learn Docker

list
---
docker ps

remove all images
-----------------
docker system prune -a

## Lesson -2

optimize the docker file  - check the package.json if its not major change its will take the cache from layer

```
FROM node -- docker image

WORKDIR /nodeApp --  workdir

COPY package.json /nodeApp -- copy the package.json

RUN npm install  -- run command

COPY . /nodeApp -- copy all

EXPOSE 80 -- port no

CMD [ "node", "server.js" ] -- command

```

## Lesson -3

docker start id / container name

for destach mood

docker run -p 9000:80 -d image

```docker
docker run -p 3000:80 -d b5db35f75b3a
```


for attach mood

docker attach container name

```docker
docker run -p 3000:80 -d b5db35f75b3a
```