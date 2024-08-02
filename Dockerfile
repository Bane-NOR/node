ARG NODE_TAG=latest
FROM node:${NODE_TAG}
FROM ghcr.io/bn-apps/base:latest

RUN npm install -g npm@latest
