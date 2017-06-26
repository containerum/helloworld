FROM node:slim
RUN npm install -g serve
COPY . /
CMD serve -s .
