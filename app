#!/bin/bash

echo "
# ARG CODE_VERSION=\"10.16.3-alpine\"
ARG FOLDER=test

FROM node:10.16.3-alpine AS base
RUN mkdir ${FOLDER}; touch a.txt; ls

FROM node:10.16.3-alpine AS development
COPY --from=base ./test .
RUN ls
" | docker build --build-arg FOLDER=test --no-cache --rm --force-rm -

