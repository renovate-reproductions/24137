FROM node:18.17.1 as builder

RUN echo "Hello world"

FROM node:18.17.1 as production-builder

RUN echo "Hello world"

FROM node:18.17.1 as production

RUN echo "Hello world"