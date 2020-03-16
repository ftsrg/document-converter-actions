#!/bin/sh -l

echo ">>> Hello from inside the container"
echo ">>> Let's build"

cd /github/workspace
ls -al
ls -al ..
make

echo ">>> PDFs built"

time=$(date)
echo ::set-output name=time::$time
