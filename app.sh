#!/bin/sh
branch="$(git rev-parse --abbrev-ref HEAD)"
echo "$branch"
if [ "$branch" == "release/sit"]; then
  env="sit"
else
  env="qa"
fi

docker build --build-arg ENV="$env" -t env-image  .  

