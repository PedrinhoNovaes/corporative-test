FROM node:alpine

WORKDIR /workspace

COPY package.json /workspace/

RUN npm i -g @nestjs/cli

RUN npm i --silent

COPY . .

EXPOSE 4000

CMD ["npm", "start"]
