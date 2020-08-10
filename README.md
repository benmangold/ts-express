# ts-express

choo-choo, welcome to the ts-express

a template nodejs repo meant to get things moving

a `helloworld` express server with all the bells and whistles

typescript, eslint, prettier, husky

prepared to run in production with pm2 or docker

## npm scripts

`npm run dev` - watch typescript and run nodemon for local dev

`npm run build` - compile typescript to `dist/`

`npm run start` - start `dist/index.js`

`npm run pm2` start `dist/index.js` in pm2 - *required pm2 cli installation*

### pm2 cli installation

```bash
# install pm2 cli
npm i -g pm2
# if that fails on permissions:
sudo npm i -g pm2
```

### pull and run docker image

```bash
docker pull bmngld/ts-express
docker run -p 4000:4000 bmngld/ts-express
```


### build and run docker image

*requires available `docker` installation*

```bash
docker build -t ts-express .
docker run -p 4000:4000 ts-express
```
