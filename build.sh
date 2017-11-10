#!/bin/bash

set -e

VERSION=master

# cd to the current directory so the script can be run from anywhere.
cd `dirname $0`

echo "Fetching and building distribution $VERSION..."

# Create a temporary directory.
TEMP=`mktemp -d /$TMPDIR/distribution.XXXXXX`

git clone -b $VERSION https://github.com/docker/distribution.git $TEMP
docker build -t veritone/vt-registry $TEMP

echo "Done."
