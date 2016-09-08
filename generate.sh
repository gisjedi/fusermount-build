#!/bin/sh

VERSION=$1
ID=`docker build .`
docker run --name fusermount-build -it $ID $VERSION
docker cp fusermount-build:/tmp/fuse-$VERSION/util/fusermount ./
