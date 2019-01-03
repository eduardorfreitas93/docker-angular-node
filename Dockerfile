FROM node:alpine

WORKDIR /usr/app

COPY package*.json ./
RUN npm i -g pm2 && npm i

COPY . .

EXPOSE 4202

CMD ["pm2", "start", "server.js"]