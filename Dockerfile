FROM ghcr.io/bane-nor/base:latest

ARG NODE_VERSION
RUN tail -f /etc/apk/repositories
RUN apk del nodejs
RUN tail -f /etc/apk/repositories
RUN apk add --no-cache nodejs=$NODE_VERSION npm

