#!/bin/bash

set -Eeo pipefail

BASE_DIR=/usr/local/lib/$PROJECT\_$CONTAINER

cd $BASE_DIR
source ${BASE_DIR}/.env/${CONTAINER}/bin/activate

eval $(echo $COMMAND | sed -r 's/@/$/g')
