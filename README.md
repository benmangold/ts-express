# ts-express

choo-choo, welcome to the ts-express

a template nodejs repo meant to get things moving

a `helloworld` express server with all the bells and whistles

typescript, eslint, prettier, husky 

prepared to run in production with docker or pm2

## releases

docker images built and published via github actions

`bmngld/ts-express:0.0.1` - available on public docker hub

## npm scripts

`npm run dev` - watch typescript and run nodemon for local dev

`npm run build` - compile typescript to `dist/`

`npm run start` - start `dist/index.js` with nodejs - used in docker container

`npm run pm2` - start `dist/index.js` with pm2 - *requires pm2 cli installation*

### docker

*requires docker cli installation*

```bash
# pull and run image
docker pull bmngld/ts-express
docker run -d -p 4000:4000 bmngld/ts-express
# build and run image
docker build -t ts-express .
docker run -d -p 4000:4000 ts-express

```

### pm2 cli installation

```bash
# install pm2 cli
npm i -g pm2
# if that fails on permissions:
sudo npm i -g pm2

```