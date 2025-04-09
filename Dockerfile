ARG NODE_VERSION
FROM ghcr.io/bane-nor/base:latest

RUN if [[ $NODE_VERSION = "latest" ]] ; then apk add nodejs npm ; else apk add nodejs=$NODE_VERSION npm ; fi
