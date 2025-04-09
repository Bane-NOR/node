ARG NODE_VERSION
FROM ghcr.io/bane-nor/base:latest

RUN apk add nodejs=~$NODE_VERSION npm 
