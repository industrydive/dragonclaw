FROM node:6.7.0-slim

RUN mkdir -p /src && mkdir -p /dist && mkdir -p /dragonclaw
WORKDIR /dragonclaw

VOLUME ["/src", "/dist"]

COPY src/package.json /dragonclaw
RUN npm install
COPY src /dragonclaw

CMD ["npm"]
