FROM node:6.4.0-slim

RUN mkdir -p /usr/src/dragonclaw
WORKDIR /usr/src/dragonclaw

COPY src/package.json /usr/src/dragonclaw/
RUN npm install
COPY src /usr/src/dragonclaw

RUN mkdir -p /code
VOLUME /code

CMD [ "npm", "run", "build" ]
