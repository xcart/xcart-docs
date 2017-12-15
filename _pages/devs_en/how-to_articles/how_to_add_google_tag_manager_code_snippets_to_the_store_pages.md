---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-28 11:27 +0400'
title: How to add Google Tag Manager code snippets to the store pages
identifier: ref_eHPw9R4e
order: 100
version: X-Cart 5.3.x
published: true
---

[Google Tag Manager](https://www.google.com/analytics/tag-manager/ "Google Tag Manager") is a tag management system that allows you to quickly and easily update tags and code snippets on a website, such as those intended for traffic analysis and marketing optimization. 

To use the Google Tag Manager solution with X-Cart, you need to set up a tag container in your Google Tag Manager account and add the container code snippets to every page of your X-Cart based store. In X-Cart versions 5.3.3.x and later, it can be done using the free addon [Google Tag Manager](https://market.x-cart.com/addons/google-tag-manager.html "How to add Google Tag Manager code snippets to the store pages"). For earlier X-Cart versions, Google Tag Manager container snippets can be added by following the instructions below:

1.  Make sure the module Theme Tweaker is enabled in your X-Cart store. By inserting the Google Tag Manager code snippets into your store's pages, you are going to modify templates. Theme Tweaker is needed so these template modifications are handled as a separate module, which, in the long run, ensures hassle-free X-Cart upgrades.

2.  Activate Webmaster mode.

3.  Copy the `<script>` portion of the JavaScript snippet provided in your Google Tag Manager account and paste it into the file <xcart_dir>/skins/theme_tweaker/customer/header/body.twig using Webmaster mode.

4.  Similarly, copy the `<noscript>` portion of the Google Tag Manager snippet and paste it using Webmaster mode into the file <xcart_dir>/skins/theme_tweaker/customer/body.twig.

5.  Apply the changes you have made in Webmaster mode.

6.  Disable Webmaster mode. After that, Theme Tweaker will create a new module containing copies of the above named X-Cart templates modified by adding the Google Tag Manager code snippets.
