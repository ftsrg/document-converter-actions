#!/bin/sh -l

echo ">>> Hello from inside the container"
echo ">>> Let's build"

cd /github/workspace
make

echo ">>> PDFs built"

time=$(date)
echo ::set-output name=time::$time
