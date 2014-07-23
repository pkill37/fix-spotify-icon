#! /usr/bin/env bash

set -e
set -x

for file in $(find . -name '*.sh'); do
    bash -n $file
done
