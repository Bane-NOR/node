FROM ghcr.io/bane-nor/base:latest

ARG NODE_VERSION

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash

RUN "/root/.nvm/nvm.sh"
RUN nvm install $NODE_VERSION
RUN node -v
RUN nvm current
RUN npm -v

