ARG NODE_TAG=latest
FROM node:${NODE_TAG}

RUN npm install -g npm@latest