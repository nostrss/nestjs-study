FROM node:18.14.2 AS builder
RUN mkdir -p /app
WORKDIR /app
ADD . .

RUN npm install
RUN npm run build

CMD npm run start:prod