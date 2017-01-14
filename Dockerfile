FROM alpine:latest
MAINTAINER Klaus Umbach <klaus+docker@uxix.de>

RUN apk add --no-cache ruby && \
    adduser -u 54123 -g 54123 -D -g tj3 -h /tj3 tj3 

RUN gem install taskjuggler --no-document --clear-sources

VOLUME /tj3
WORKDIR /tj3
USER tj3
