FROM node

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install --verbose

EXPOSE 3000

CMD ["npm","start"]
