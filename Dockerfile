FROM node:alpine
RUN npm -g install surge@0.20.1 && npm cache clean --force
