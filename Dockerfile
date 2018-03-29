FROM node:9.10.0-slim

WORKDIR /dragonclaw

VOLUME ["/src", "/dist"]

COPY src/package.json /dragonclaw
RUN npm install
COPY src /dragonclaw

CMD ["npm"]
