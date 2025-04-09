FROM ghcr.io/bane-nor/base:latest

ARG NODE_VERSION

RUN apk add nodejs=~$NODE_VERSION npm=~$NODE_VERSION
