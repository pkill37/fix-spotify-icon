#! /usr/bin/env bash

set -e

for file in $(find . -name '*.sh'); do
    bash -n $file
done
