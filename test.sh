#! /usr/bin/env bash

for file in $(find . -name '*.sh'); do
    bash -n $file
done
