#!/bin/sh -l

cd /github/workspace
make "$@"

time=$(date)
echo ::set-output name=time::$time
