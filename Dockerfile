FROM node:9-alpine
LABEL maintainer="West Midlands Fire Service <tymly@wmfs.net>"
COPY . .
RUN npm install --production && \
  makedir /uploaded-files
CMD ["node", "./node_modules/@wmfs/tymly-runner/lib/index.js"]
