#!/bin/bash -ex
docker build -t ${NAME}:${VERSION} --rm compile
CONTAINER_ID=$(docker create ${NAME}:${VERSION})
docker cp ${CONTAINER_ID}:/ipify-api image/service/ipify-api/assets/ipify-api
docker rm -v ${CONTAINER_ID}

chmod +x image/service/ipify-api/assets/ipify-api
