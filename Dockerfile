ARG ALPINE_VERSION
FROM ghcr.io/bane-nor/base:$ALPINE_VERSION

RUN apk add nodejs npm