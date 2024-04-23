FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

# Mude temporariamente para o usuário root
USER root

# Execute o npm install com permissões de root
RUN npm install && npm install -g nodemon

# Volte para o usuário não privilegiado
USER node

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
