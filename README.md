# Tymly-base

![Tymly](https://tymly.io/wp-content/uploads/2017/11/logo-tymly-main-colour-300x79.png)

### What?

This repo builds a runnable Docker image of Tymly from [Tymly core](https://github.com/wmfs/tymly-core#tymly) and associated [plugins](https://github.com/search?q=topic%3Aplugin+org%3Awmfs+fork%3Atrue).

It contains the following packages:

* [@wmfs/tymly-auth-auth0-plugin](https://github.com/wmfs/tymly-auth-auth0-plugin#tymly-auth-auth0-plugin)
* [@wmfs/tymly-diaries-plugin](https://github.com/wmfs/tymly-diaries-plugin#tymly-diaries-plugin)
* [@wmfs/tymly-etl-plugin](https://github.com/wmfs/tymly-etl-plugin#tymly-etl-plugin)
* [@wmfs/tymly-express-plugin](https://github.com/wmfs/tymly-express-plugin#tymly-express-plugin)
* [@wmfs/tymly-gov-uk-notify-plugin](https://github.com/wmfs/tymly-solr-plugin#tymly-solr-plugin)
* [@wmfs/tymly-pg-plugin](https://github.com/wmfs/tymly-pg-plugin#tymly-pg-plugin)
* [@wmfs/tymly-rankings-plugin](https://github.com/wmfs/tymly-rankings-plugin#tymly-rankings-plugin)
* [@wmfs/tymly-runner](https://github.com/wmfs/tymly-runner#tymly-runner)
* [@wmfs/tymly-solr-plugin](https://github.com/wmfs/tymly-solr-plugin#tymly-solr-plugin)
* [@wmfs/tymly-users-plugin](https://github.com/wmfs/tymly-users-plugin#tymly-users-plugin)

---
### Build

The image is built with the [Dockerfile](https://github.com/wmfs/tymly-base/blob/master/Dockerfile)

```dockerfile
FROM node:9-alpine
LABEL maintainer="West Midlands Fire Service <tymly@wmfs.net>"
COPY . .
RUN npm install --production
CMD ["node", "./node_modules/@wmfs/tymly-runner/lib/index.js"]
```

Please see [.dockerignore](https://github.com/wmfs/tymly-base/blob/master/.dockerignore) to see what contents is exlucded from the Docker image.

All that is copied from the repo into the image is:

* config/
* tools/
* package.json

The run command

```bash
npm install --production
```

ensures that only production dependencies are installed in the image.

---
### Pull

This Docker image is free and available to pull from the [Docker Hub](https://hub.docker.com/r/wmfs/tymly-base).

```bash
docker pull wmfs/tymly-base
```

---
### Config

Tymly requires [configuration](https://github.com/wmfs/tymly-base/tree/master/config) variables in order to boot.

---
### Garnish

In order to add useful functionality to this base image you need to garnish this image with [blueprints](https://github.com/search?q=topic%3Ablueprint+org%3Awmfs+fork%3Atrue).


Please follow [Dockerfile best practises](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/) when creating an image based on Tymly-base.

---
### Docs

More information on Tymly can be found on the [website](https://tymly.io).

---
### License

Tymly and it's components are licensed under the [MIT License](https://github.com/wmfs/tymly-base/blob/master/LICENSE).