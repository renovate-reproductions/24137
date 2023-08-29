FROM node:16.20.2 as builder

RUN echo "Hello world"

FROM node:16.20.2-alpine as production-builder

RUN echo "Hello world"

FROM node:16.20.2-alpine as production

RUN echo "Hello world"