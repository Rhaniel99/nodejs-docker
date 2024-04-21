FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install && npm install -g nodemon && npm install express

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
