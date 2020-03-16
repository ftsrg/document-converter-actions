#!/bin/sh -l

echo ">>> Hello from inside the container"
echo ">>> Let's build"

pwd

cd /github
find . -type f

#echo ">>> PDFs built"

time=$(date)
echo ::set-output name=time::$time
