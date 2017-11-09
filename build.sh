#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: $0 <SITE_NAME> (devs_en|devs_ru|kb_en|kb_ru)"
    exit 1
fi
export JEKYLL_ENV=production
DEST="$JEKYLL_DESTINATION/$1"
if [ -z "$JEKYLL_DESTINATION" ]
  then
    DEST="_site/$1"
    exit 1
fi
mkdir -p $DEST
chmod -R 777 $DEST
bundle exec jekyll build --trace --destination $DEST --config "_config.yml,_config.$1.yml"