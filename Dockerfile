FROM node:16-alpine3.17

RUN apk add alpine-sdk bash libstdc++ libc6-compat python3 py3-pip

RUN node --version
RUN npm --version

RUN npm config set python python3
RUN npm config get python

RUN npm install --global code-server --unsafe-perm

CMD code-server --bind-addr 0.0.0.0:8080
