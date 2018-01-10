---
identifier: ref_07Jp9Wjo
---
# X-Cart 5 Knowledge Base and Developer Documentation 

[![CircleCI](https://circleci.com/gh/xcart/xcart-docs.svg?style=svg)](https://circleci.com/gh/xcart/xcart-docs)

This is the combined repo of all X-Cart 5 documentation sites.
Available sites are:

- Knowledge Base (English): **kb_en**
- Knowledge Base (Russian): **kb_ru**
- Developer Docs (English): **devs_en**
- Developer Docs (Russian): **devs_ru**

## Requirements

- Ruby 2.3+
- Jekyll 3.6+
- Boom

## Usage 

Run `bundle install` first to get the all required gems. After that you have two options:

1. To build the site in production mode, run `./build.sh <SITE_NAME>` (the site name key is specified in bold in "Available sites" list).

2. To run the site via `jekyll serve` in development mode, run `./start.sh <SITE_NAME>`.

## Contribution

You can send pull requests to update the articles content (which is placed in `_pages` folder). Also, there is an editor, available for the approved contributors from the X-Cart - [https://xcart.github.io/prose](https://xcart.github.io/prose).
