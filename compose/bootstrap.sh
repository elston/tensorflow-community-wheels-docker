#!/bin/bash

set -Eeo pipefail

BASE_DIR=/usr/local/lib/$PROJECT\_$CONTAINER

mkdir -p $BASE_DIR/.env
cd $BASE_DIR/.env

virtualenv $CONTAINER
source $CONTAINER/bin/activate

cd $BASE_DIR
eval $(echo $COMMAND | sed -r 's/@/$/g')
