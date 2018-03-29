FROM node:9.10.0-slim

WORKDIR /dragonclaw

VOLUME ["/dragonclaw/scss", "/dragonclaw/css"]

COPY src/package.json /dragonclaw
RUN npm install
COPY src /dragonclaw

CMD ["npm"]
