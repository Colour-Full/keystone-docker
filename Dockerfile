# This is docker image that can be used in development
# It will contain the full app so you can use nodemon for rapid development 
# and tweak the source code trough a shared folder on the host
FROM node:8.12.0-jessie

RUN mkdir -p /src/app

WORKDIR /src/app

COPY package.json /src/app/package.json

RUN yarn

COPY . .

EXPOSE 6080

CMD [ "yarn", "start:dev" ]