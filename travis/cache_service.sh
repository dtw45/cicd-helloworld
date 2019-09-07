#! /bin/bash

DDOCKER_CACHE=$1

mkdir -p $DOCKER_CACHE

IMAGES=$(docker images -a \
    --filter='dangling=false' \
    --format '{{.Repository}}:{{.Tag}} {{.ID}}')

cat "$IMAGES" | xargs -n 2 -t sh -c 'test -e $HOME/docker/$1.tar.gz || docker save $0 | gzip -2 > $HOME/docker/$1.tar.gz'
