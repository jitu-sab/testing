FROM node:10-alpine

RUN mkdir -p /home/ubuntu/node_project/node_modules && chown -R node:node /home/ubuntu/node_project

WORKDIR /home/ubuntu/node_project

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]
