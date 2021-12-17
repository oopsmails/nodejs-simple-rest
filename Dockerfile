FROM node:alpine

# Optional, if bash is not mandatory, then can use sh or ash shipped with alpine
# RUN apk add --no-cache bash

WORKDIR /nodejsapp

EXPOSE 3000 9229

CMD ["npm", "start"]

COPY package*.json ./
RUN npm install

COPY . .

