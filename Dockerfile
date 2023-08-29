FROM node:20.5.1 as builder

RUN echo "Hello world"

FROM node:20.5.1-alpine as production-builder

RUN echo "Hello world"

FROM node:20.5.1-alpine as production

RUN echo "Hello world"