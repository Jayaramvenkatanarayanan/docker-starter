FROM node:18-alpine

WORKDIR /frontend

COPY package.json .

RUN npm i

COPY . .

EXPOSE 3000

# Add presist the nodemodules

# VOLUME [ "/frontend/node_modules" ]

CMD ["npm","run","start"]