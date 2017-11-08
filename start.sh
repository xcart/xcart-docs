#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: $0 SITE_NAME (devs_en|devs_ru|kb_en|kb_ru)"
    exit 1
fi
export JEKYLL_ENV=development
DEST="$JEKYLL_DESTINATION/$1"
mkdir -p $DEST
bundle exec jekyll serve --trace --destination $DEST --config "_config.yml,_config.$1.yml,_config.dev.yml"