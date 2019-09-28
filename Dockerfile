# 
# 
# docker build
#   --build-arg NEW_VALUE=`date --iso-8601=seconds` \
#   --no-cache \
#   --rm \ 
#   --force-rm \ 
#   .
# 

ARG CODE_VERSION=10.16.3-alpine

FROM node:${CODE_VERSION} AS base
ARG NEW_VALUE
ARG VERSION
RUN echo value-${NEW_VALUE}-$VERSION

FROM node:${CODE_VERSION} AS development
ARG NEW_VALUE
RUN echo value-$NEW_VALUE

FROM node:${CODE_VERSION} AS production
ARG NEW_VALUE
RUN echo $NEW_VALUE > a.txt && \ 
ls && \
echo "******" && \
cat a.txt && \
echo "******"
