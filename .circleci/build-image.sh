#!/bin/bash

set -e

export IMAGE_ID="${REGISTRY}/${IMAGE}:${VERSION}-${TAG}"

# ============
# <qemu-support>
if [ $TARGET == 'amd64' ]; then
  touch qemu-amd64-static
else
  curl -sL "https://github.com/multiarch/qemu-user-static/releases/download/${QEMU_VERSION}/qemu-${QEMU_ARCH}-static.tar.gz" | tar xz
  docker run --rm --privileged multiarch/qemu-user-static:register
fi
# </qemu-support>
# ============

# Replace the repo's Dockerfile with our own.
docker build -t ${IMAGE_ID} --build-arg target=$TARGET .

# Login to Docker Hub.
echo $DOCKERHUB_PASS | docker login -u $DOCKERHUB_USER --password-stdin

# # Push push push
# TODO: I think I actually handle this upstream?
# docker push ${IMAGE_ID}
# if [ $CIRCLE_BRANCH == 'master' ]; then
#   docker tag "${IMAGE_ID}" "${REGISTRY}/${IMAGE}:latest-${TAG}"
#   docker push "${REGISTRY}/${IMAGE}:latest-${TAG}"
# fi
