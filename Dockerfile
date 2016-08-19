FROM node:6.3.0

RUN mkdir -p /usr/src/dragonclaw
WORKDIR /usr/src/dragonclaw

COPY src/package.json /usr/src/dragonclaw/
RUN npm install
COPY src /usr/src/dragonclaw

RUN mkdir -p /code
VOLUME /code

CMD [ "npm", "run", "build" ]
