FROM node:9-alpine
LABEL maintainer="West Midlands Fire Service <tymly@wmfs.net>"
COPY package.json package.json
RUN npm install --production
CMD ["node", "./node_modules/@wmfs/tymly-runner/lib/index.js"]