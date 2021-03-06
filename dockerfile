FROM node:16-alpine

WORKDIR /usr/node/app

COPY package.json ./

RUN npm install
# RUN npm install -g nodemon

COPY . .

EXPOSE 8080

CMD ["node", "main"]
