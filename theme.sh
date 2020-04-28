#!/bin/bash
mode=$1
theme=$2

if [ $mode == "build" ]; then
  echo "run build"
  cd themes/$theme/assets && npm install && npm run prod
fi