#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: $0 SITE_NAME (devs_en|devs_ru|kb_en|kb_ru)"
    exit 1
fi
export JEKYLL_ENV=production
bundle exec jekyll build --trace --config "_config.yml,_config.$1.yml"