FROM ghcr.io/bane-nor/base:latest

ARG NODE_VERSION

RUN rm -rf /etc/apk/repositories
RUN apk update
RUN apk add --no-cache --update-cache --repository https://dl-cdn.alpinelinux.org/v3.$NODE_VERSION/main nodejs=~$NODE_VERSION npm

