FROM node:16.15.0 as builder

RUN echo "Hello world"

FROM node:16.15.0-alpine as production-builder

RUN echo "Hello world"

FROM node:16.15.0-alpine as production

RUN echo "Hello world"