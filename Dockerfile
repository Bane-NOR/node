FROM ghcr.io/bane-nor/base:latest

ARG NODE_VERSION


RUN apk add --no-cache --update-cache --repository https://dl-cdn.alpinelinux.org/v3.$NODE_VERSION/main nodejs=~$NODE_VERSION
RUN apk upgrade
RUN apk add npm

