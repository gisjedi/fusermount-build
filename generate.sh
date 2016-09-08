#!/bin/sh

VERSION=$1

docker build -t fusermount-$VERSION .
docker run --name fusermount-build -it fusermount-$VERSION $VERSION
docker cp fusermount-build:/tmp/fuse-$VERSION/util/fusermount ./
docker rm fusermount-build

