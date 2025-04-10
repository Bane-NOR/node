FROM ghcr.io/bane-nor/base:latest

ARG NODE_VERSION


RUN curl -o- https://fnm.vercel.app/install | bash

RUN fnm install 20

RUN node -v

RUN npm -v

