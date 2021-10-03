# syntax=docker/dockerfile:1

FROM node:10.23.2

ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 27017

CMD [ "node", "server.js" ]

