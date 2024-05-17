FROM node:lts

WORKDIR /app

COPY ./src/package*.json ./

RUN npm install

COPY ./src .

EXPOSE 3000

RUN npm run build
CMD [ "npm", "run", "start" ]
