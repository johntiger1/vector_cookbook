#!/bin/bash

NOW=$(date "+%Y-%m-%d")
OUT_DIR=$(pwd)/envs-$NOW
mkdir $OUT_DIR -p
ENVS=$(conda env list | grep '^\w' | cut -d' ' -f1)
for env in $ENVS; do
    source activate $env
    conda env export > $OUT_DIR/$env.yml
    echo "Exporting $env"
done
