FROM node

WORKDIR /usr/src/app

COPY . .
RUN npm config set registry http://registry.npmjs.org/
RUN npm install --verbose

EXPOSE 3000

CMD ["npm","start"]
