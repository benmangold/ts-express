FROM node:12

RUN apt update; apt install jq -y

RUN mkdir -p /home/node/app

RUN chown -R node:node /home/node/app
RUN chmod 755 /home/node/app

RUN chown -R node:node /usr/local/lib/node_modules
RUN chmod 755 /usr/local/lib/node_modules

RUN mkdir /usr/local/bin/node_modules
RUN chown -R node:node /usr/local/bin/node_modules
RUN chmod 755 /usr/local/bin/node_modules

WORKDIR /home/node/app

COPY * /home/node/app/

USER root

RUN npm i -g typescript

USER node

RUN npm install --production

RUN npm run build

EXPOSE 4000

CMD ["npm", "run", "start"]
