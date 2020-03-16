#!/bin/sh -l

echo ">>> Hello from inside the container"
echo ">>> Let's build"

pwd

cd /github/home
ls -al
ls -al ..
make

echo ">>> PDFs built"

time=$(date)
echo ::set-output name=time::$time
