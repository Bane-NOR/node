FROM ghcr.io/bane-nor/base:latest

ARG NODE_VERSION
RUN rm -rf /etc/apk/*
RUN apk add --no-cache nodejs=$NODE_VERSION npm
RUN rm -rf /etc/apk/*
