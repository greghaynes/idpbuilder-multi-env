#!/bin/bash

set -eux
set -o pipefail

HACK_DIR=$(dirname $0)

source ${HACK_DIR}/library.sh

install_go_tools

${IDPBUILDER} create \
    -p ${HACK_DIR}/config/cnoe-packages/vcluster \
    -p ${HACK_DIR}/config/cnoe-packages/deploy-apps
