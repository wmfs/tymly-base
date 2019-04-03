FROM node:lts-alpine
LABEL maintainer="West Midlands Fire Service <tymly@wmfs.net>"
COPY package.json ./
COPY ./config/. ./config/.
RUN apk add --no-cache tzdata && \
    npm install --production
ENV TZ=Europe/London
CMD ["node", "./node_modules/@wmfs/tymly-runner/lib/index.js"]
