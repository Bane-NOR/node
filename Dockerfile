ARG NODE_TAG=latest
FROM node:${NODE_TAG}-alpine

RUN npm install -g npm@latest
