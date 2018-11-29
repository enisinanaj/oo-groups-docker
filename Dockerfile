FROM node:10.13.0-alpine

RUN mkdir /app

WORKDIR /app

RUN npm -g config set user root
RUN npm install strapi@alpha -g

RUN strapi -v

COPY ./groups-api/ /app/

RUN npm install

EXPOSE 1337

CMD ["strapi", "start"]
