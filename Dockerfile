FROM ghcr.io/bane-nor/base:latest

ARG NODE_VERSION
RUN apk del nodejs
RUN apk add --no-cache nodejs=$NODE_VERSION npm

