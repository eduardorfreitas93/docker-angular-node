FROM node:alpine

WORKDIR /usr/app

COPY package*.json ./
RUN npm i

COPY . .
RUN npm run build

EXPOSE 4202

CMD ["npm", "run", "start"]