#!/usr/bin/env bash

# for more info read:
# https://github.com/envygeeks/jekyll-docker/blob/master/README.md

export JEKYLL_VERSION=latest

rm -rf _site/

docker run --rm \
  --volume "$PWD:/srv/jekyll" \
  --volume "$PWD/_bundle:/usr/local/bundle" \
  --env "JEKYLL_ENV=production" \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  jekyll build
