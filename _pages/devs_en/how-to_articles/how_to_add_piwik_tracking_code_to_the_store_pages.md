---
title: How to add Piwik tracking code to the store pages
lang: en
layout: article_with_sidebar
updated_at: 2017-09-28 11:20 +0400
identifier: ref_M3gFDNfd
order: 100
---

[Piwik](https://piwik.org/ "How to add Piwik tracking code to the store pages") is a powerful web analytics tool. If you wish to use Piwik to track your X-Cart store, you will need to add Piwik tracking code to your store pages.

The following example demonstrates adding Piwik tracking code to the file `/skins/customer/body.twig` with Template editor (available via the module Theme Tweaker):

   ![xc5_piwik_screenshot.png]({{site.baseurl}}/attachments/ref_M3gFDNfd/xc5_piwik_screenshot.png)

Note how the code is added before the </head> tag.

For more info on Piwik tracking code, see https://developer.piwik.org/guides/tracking-javascript-guide

**Important:** Like any integration requiring you to add a tracking code snippet to your X-Cart store pages, Piwik can be added to your store site using Google Tag Manager. For information on using Google Tag Manager with X-Cart, see the section {% link "How to add Google Tag Manager code snippets to the store pages" ref_eHPw9R4e %} of this manual.

_Related pages:_

* {% link "How to add Google Tag Manager code snippets to the store pages" ref_eHPw9R4e %}
