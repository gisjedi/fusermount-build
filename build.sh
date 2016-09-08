#!/bin/bash

VERSION=$1

cd /tmp
curl -L https://github.com/libfuse/libfuse/releases/download/fuse-$VERSION/fuse-$VERSION.tar.gz | tar xz
cd fuse-$VERSION
./configure
make
