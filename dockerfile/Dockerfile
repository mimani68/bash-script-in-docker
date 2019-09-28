# 
# docker build
#   --build-arg NEW_VALUE=`date --iso-8601=seconds` \
#   --no-cache \
#   --rm \ 
#   --force-rm \ 
#   .
# 

ARG IMAGE_NAME='node'
ARG IMAGE_TAGE='10.16.3-alpine'
# ARG VERSION=v0.0.1
# ARG NEW_VALUE=salam

FROM $IMAGE_NAME:$IMAGE_TAGE AS base
ARG NEW_VALUE
ARG VERSION
RUN echo value-${NEW_VALUE}-$VERSION

FROM $IMAGE_NAME:$IMAGE_TAGE AS development
ARG NEW_VALUE
RUN echo value-$NEW_VALUE

FROM $IMAGE_NAME:$IMAGE_TAGE AS production
ARG NEW_VALUE
RUN echo $NEW_VALUE > a.txt && \ 
ls && \
echo "******" && \
cat a.txt && \
echo "******"
