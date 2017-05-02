FROM node:6.6

RUN mkdir /src
WORKDIR /src

COPY package.json /src
RUN npm install

COPY . /src

CMD ["node", "src/index.js"]
