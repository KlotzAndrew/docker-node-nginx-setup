FROM node:6.6

RUN mkdir /src
WORKDIR /src

RUN npm install

ADD . /src

CMD ["node", "src/index.js"]

