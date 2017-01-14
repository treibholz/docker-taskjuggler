#!/bin/sh

docker run \
    --rm=true --interactive --tty \
    --net="none" \
    -v `pwd`:/tj3 \
    -u `id -u` \
    treibholz/tj3:latest "$@"

# vim:fdm=marker:ts=4:sw=4:sts=4:ai:sta:et
