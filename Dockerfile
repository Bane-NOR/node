FROM ghcr.io/bane-nor/base:latest

ARG NODE_VERSION

RUN cd && touch .profile

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash

RUN echo "export NVM_NODEJS_ORG_MIRROR=https://unofficial-builds.nodejs.org/download/release" >> .profile
RUN echo "nvm_get_arch() { nvm_echo \"x64-musl\"; }" >> .profile
RUN source .profile

RUN \. "/root/.nvm/nvm.sh"
RUN nvm install $NODE_VERSION
RUN node -v
RUN nvm current
RUN npm -v

