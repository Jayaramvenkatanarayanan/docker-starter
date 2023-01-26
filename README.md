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

EXPOSE 90 -- port no

CMD [ "node", "server.js" ] -- command

```

## Lesson - 2.1

docker start id / container name

for destach mood

docker run -p 9000:90 -d image

```docker
docker run -p 3000:90 -d b5db35f75b3a
```


for attach mood

docker attach container name

```docker
docker run -p 3000:90 -a b5db35f75b3a
```
for logs & list all image

docker logs -f container name ( -force )

```docker
docker logs a354eadc5886
docker logs -f 8faa10b83690 ( watch mood)
docker images
docker rm [container name ]
docker rmi [image name ]

docker run -p 3000:90 -d --rm imageID -> remove automatically when its stop

docker image inspect imageID
docker run -p 3000:90 -d --rm --name nodeApp 3ca33d9ee46f --name will given  custome name

rename the dokcer image name
docker build -t nodeApp:v0.1 . -t name:tag

docker run -p 9000:90 --rm -d --name nodeAppV1 node-app:v0.1

```

## Lesson - 3 ( Volume )

Managing Data & Working with volumns

create new feedback application

```docker

create image  & build with tag name

FROM node:18-alpine

WORKDIR /nodeApplication

COPY package.json .

RUN npm i

COPY . .

EXPOSE 90

CMD [ "node", "server.js" ]

terminal -->

docker build -t feedback-node-image:v.0.1 .

run docker container

docker run -p 9001:90 -d --name feedback-app --rm feedback-node-image:v.0.1

use container with out rm command & restart the app file will be available in same folder

docker run -p 9001:90 -d --name feedback-app feedback-node-image:v.0.1

check file and restart

docker restart feedback-app


Data presiste ( store data don't loss in container use Named volumn)

docker volume ls

Add named volumn

docker run -p 9001:90 -d --name feedback-app-volume -v feedback:/nodeApplication/feedback --rm feedback-node-image:v.0.1

feedback -> name

/nodeApplication/feedback --> path to presiste the data

(try stop the container & run again and check the path http://localhost:9001/feedback/jayaram.txt)


```
Anonymous volumes have no specific source, therefore, when the container is deleted, you can instruct the Docker Engine daemon to remove them

## Lesson - 3.1 Data Storage Building Mounts

Local file changer refeclted in docker file

Add mount point & some Anonymous volumes & optional for data presiste layer

so we create 3 volumes

```docker
docker run -p 9001:90 -d --name feedback-app-mounts --rm -v feedback:/nodeApplication/feedback -v "/Users/jayaramvenkatanarayanan/Projects/Docker/docker-stater:/nodeApplication" -v /nodeApplication/node_modules feedback-node-image:v.0.1
```
above :
-v feedback:/nodeApplication/feedback - > local named volume

-v "/Users/jayaramvenkatanarayanan/Projects/Docker/docker-stater:/nodeApplication" - mount - local files changes refected to docker

-v /nodeApplication/node_modules - Anonymous presiste node and reuse for above the mount

Alternative add Anonymous presist in docker file.

```docker

FROM node:18-alpine

WORKDIR /nodeApplication

COPY package.json .

RUN npm i

COPY . .

EXPOSE 90

VOLUME [ "/nodeApplication/node_modules" ]

CMD [ "npm", "start" ]  -- > added nodemon


```


