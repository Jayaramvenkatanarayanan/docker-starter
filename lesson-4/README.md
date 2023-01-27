##Network- cross container

build the image with the name of movie app.

create own network

```docker
docker network create movie-app-nw

to use and create mongodb network

docker run -d --name mongodb-docker-network --network movie-app-nw --rm mongo:latest

recrete image

docker build -t movie-app-mongodb-network:v.1.0.0 .

docker run -p 3001:9001 -d  --name movie-app-network --network movie-app-nw --rm movie-app-mongodb-network:v.1.0.0

````