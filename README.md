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
docker run -p 3000:80 -a b5db35f75b3a
```
for logs & list all image

docker logs -f container name ( -force )

```docker
docker logs a354eadc5886
docker logs -f 8faa10b83680 ( watch mood)
docker images
docker rm [container name ]
docker rmi [image name ]
docker run -p 3000:80 -d --rm imageID -> remove automatically when its stop
docker image inspect imageID
docker run -p 3000:80 -d --rm --name nodeApp 3ca33d9ee46f --name will given  custome name
image name
using tage command docker build -t nodeApp:v0.1 . -t name:tag
docker run -p 9000:80 --rm -d --name nodeAppV1 node-app:v0.1
```

