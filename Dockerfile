FROM node

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm config set registry http://registry.npmjs.org/
RUN npm install --verbose

COPY . .

EXPOSE 3000

CMD ["npm","start"]
