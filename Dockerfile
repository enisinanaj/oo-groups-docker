FROM node:10.14.1-alpine

RUN mkdir /app

WORKDIR /app

RUN npm -g config set user root
RUN npm install strapi@3.0.0-alpha.13.1 -g

RUN strapi -v

COPY ./groups-api/ /app/

RUN rm -rf node_modules
RUN npm install

EXPOSE 1337

CMD ["strapi", "start"]
#CMD ["sh"]
