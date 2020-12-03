FROM wmfs/node:lts-alpine AS base-test
LABEL maintainer="West Midlands Fire Service <tymly@wmfs.net>"
COPY package.json ./
COPY ./config/. ./config/.
COPY ./certificate/. ./certificate/.
RUN apk add --no-cache tzdata && \
    npm install --production
ENV TZ=Europe/London
USER node
CMD ["node", "./node_modules/@wmfs/tymly-runner/lib/index.js"]

FROM wmfs/node:lts-alpine as base-release
LABEL maintainer="West Midlands Fire Service <tymly@wmfs.net>"
COPY package.json ./
COPY ./config/. ./config/.
RUN apk add --no-cache tzdata && \
    npm install --production
ENV TZ=Europe/London
USER node
CMD ["node", "./node_modules/@wmfs/tymly-runner/lib/index.js"]
