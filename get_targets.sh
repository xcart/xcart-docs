#!/bin/bash
shopt -s extglob
REVISION="HEAD~3"
DEVS_EN_DIFF="$(git diff $REVISION HEAD --name-only _pages/devs_en)"
DEVS_RU_DIFF="$(git diff $REVISION HEAD --name-only _pages/devs_ru)"
KB_EN_DIFF="$(git diff $REVISION HEAD --name-only _pages/kb_en)"
KB_RU_DIFF="$(git diff $REVISION HEAD --name-only _pages/kb_ru)"
MAIN_DIFF="$(git diff $REVISION HEAD --name-only !(_pages))"

echo "(ls -la)"
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