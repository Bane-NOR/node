FROM ghcr.io/bane-nor/base:latest

ARG NODE_VERSION

RUN rm -rf /etc/apk/repositories
RUN apk update
RUN apk add --no-cache nodejs=$NODE_VERSION npm

