### Real mulitiple app

```docker
create network & api with DB one network because these are all same

docker network create goals-app

create mongoDB
---------------

docker run -d --name mongodb --network goals-app  --rm mongo:latest

create API
----------
docker run -p 9000:90 --name goal-app-api --network goals-app -d --rm backend:v.2.0

create UI
---------
docker run -p 3000:3000 --rm -d --name goals-ui-app  frontend:v.2.0

```

####Presiste the mongodb and logs folder

```docker
for DB check docker hub docs

docker run -p 27017:27017 -d --name mongodb --network goals-app -v data:/data/db --rm mongo:latest

Add layer volume : -v data:/data/db

Add presist the nodemodules ( do same in frontend )

VOLUME [ "/backend/node_modules","/backend/logs" ]

docker run -p 9000:90 --name goal-app-api  -v "/Users/jayaramvenkatanarayanan/Projects/Docker/docker-stater/lesson-5/backend:/backend" --network goals-app -d   --rm backend:v.3.0

frontend
--------
docker run -p 3000:3000 --rm -d --name goals-ui-mount -v "/Users/jayaramvenkatanarayanan/Projects/Docker/docker-stater/lesson-5/frontend/src:/frontend/src"  frontend:v.6.0

VOLUME [ "/frontend/node_modules" ]
```