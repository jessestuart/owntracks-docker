#!/bin/bash
echo 'export DIR=`pwd`' >> $BASH_ENV
echo 'export GITHUB_REPO=owntracks/recorderd' >> $BASH_ENV
echo 'export IMAGE=owntracks' >> $BASH_ENV
echo 'export REGISTRY=jessestuart' >> $BASH_ENV
echo 'export QEMU_VERSION=v2.12.0' >> $BASH_ENV

# No official releases from the owntracks/recorderd repo; we'll just generate
# a tag based on date. ¯\_(ツ)_/¯
echo 'export VERSION=$(date -u +'build-%Y%m%d')' >> $BASH_ENV
echo 'export IMAGE_ID="${REGISTRY}/${IMAGE}:${VERSION}-${TAG}"' >> $BASH_ENV

source $BASH_ENV
