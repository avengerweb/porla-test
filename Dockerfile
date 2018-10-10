FROM node:10

RUN apt-get update
RUN apt-get install -y curl build-essential sudo

COPY package.json package.json
RUN npm install

COPY . .

RUN npm run prebuildify
RUN cp prebuilds/linux-x64/node-napi.node /prebuilds-out/