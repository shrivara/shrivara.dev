#!/bin/sh
set -eo pipefail
BASE_DIR=$(dirname "$0")
source ${BASE_DIR}/../.envs

BUILD_ID="$1"
ENVIRONMENT="$2"
if [[ -z "$BUILD_ID" ]]; then echo "Missing argument <BUILD_ID>"; exit 1; fi
if [[ -z "$ENVIRONMENT" ]]; then echo "Missing argument <ENVIRONMENT>"; exit 1; fi

drone build promote shrivara/shrivara.dev $BUILD_ID $ENVIRONMENT
