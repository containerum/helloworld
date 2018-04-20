FROM node:slim

COPY . /
RUN npm install

EXPOSE 80

CMD npm run serve
