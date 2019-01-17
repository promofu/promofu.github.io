#!/usr/bin/env bash

# for more info read:
# https://github.com/envygeeks/jekyll-docker/blob/master/README.md

export JEKYLL_VERSION=latest

docker run --rm \
  --volume "$PWD:/srv/jekyll" \
  --volume "$PWD/_bundle:/usr/local/bundle" \
  --publish "4000:4000" \
  --publish "35729:35729" \
  --env "JEKYLL_ENV=devel" \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  jekyll serve -w -l -V --config _config.yml,_config.dev.yml --future
