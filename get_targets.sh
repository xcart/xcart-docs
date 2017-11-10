#!/bin/bash
#
if [ -z "$1" ]
  then
    echo "Usage: $0 <TARGET_FOLDER> <FROM_REVISION>"
    exit 1
fi

REVISION="$2"
if [ -z "$2" ]
  then
    REVISION="HEAD^"
fi

shopt -s extglob
DEVS_EN_DIFF="$(git diff $REVISION HEAD --name-only _pages/devs_en)"
DEVS_RU_DIFF="$(git diff $REVISION HEAD --name-only _pages/devs_ru)"
KB_EN_DIFF="$(git diff $REVISION HEAD --name-only _pages/kb_en)"
KB_RU_DIFF="$(git diff $REVISION HEAD --name-only _pages/kb_ru)"
MAIN_DIFF="$(git diff $REVISION HEAD --name-only !(_pages|attachments))"

if [ ! -z "$MAIN_DIFF" ]
  then
    touch "$1/devs_en"
    touch "$1/devs_ru"
    touch "$1/kb_en"
    touch "$1/kb_ru"
    exit
fi
if [ ! -z "$DEVS_EN_DIFF" ]
  then
    touch "$1/devs_en"
fi
if [ ! -z "$DEVS_RU_DIFF" ]
  then
    touch "$1/devs_ru"
fi
if [ ! -z "$KB_EN_DIFF" ]
  then
    touch "$1/kb_en"
fi
if [ ! -z "$KB_RU_DIFF" ]
  then
    touch "$1/kb_ru"
fi
exit