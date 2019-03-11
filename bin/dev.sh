#!/bin/sh
set -eo pipefail
BASE_DIR=$(dirname "$0")

cd "${BASE_DIR}/.."
docker build . -t shrivara/shrivara-dev:dev
docker stop shrivara-dev || true
docker rm shrivara-dev || true
docker run -p 80:80 -d --rm --name shrivara-dev -v $(pwd)/html:/usr/share/nginx/html shrivara/shrivara-dev:dev
