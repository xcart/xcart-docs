---
lang: en
layout: article_with_sidebar
updated_at: '2020-03-23 13:28 +0400'
identifier: ref_3Tt77VTV
title: ''
order: 100
published: false
---
## Introduction

Imagine the situation that you have installed X-Cart store and want tweak it to your liking: change the header, the way cart is displayed, change price section and lots of other small things.

{% link "In X-Cart 5.3" ref_E88KCMDD %} you would either have had to use Template Editor or use `runBuildCacheHandler()` method and override the template for each of those changes.

X-Cart 5.4 introduces a simpler way of applying such small changes to existing theme and this approach can be used to change default Crisp White theme as well as other commercial themes.

{% toc Table of Contents %}

## Create theme module

First of all, you should {% link "create the module" ref_G2mlgckf %} that will depend on the theme you are going to tweak.

If the base theme is default Crisp White theme, you need to put the following directive in `install.yaml` file of the module:
```
dependsOn:
  - XC-CrispWhiteSkin
```

If you use commercial theme, you should look up its developer and module IDs and put the following directive into `install.yaml` file:
```
dependsOn:
  - <DeveloperID>-<ModuleID>
```
