#!/bin/bash -l
set -Eeuo pipefail

cd /github/workspace

make $*

time=$(date)
echo ::set-output name=time::$time
