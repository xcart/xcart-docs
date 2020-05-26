---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-06 13:30 +0400'
identifier: ref_2L6W3YMS
title: Theme Tweaker
order: 400
published: true
description: Learn how to use Webmaster mode to apply changes to the default store layout
---

Sometimes it may be necessary to change the default page layout in your X-Cart store to make your store unique or to adapt the default layout to meet your business requirements. You can do this easily using a built-in addon [Theme Tweaker](https://market.x-cart.com/addons/theme-tweaker.html "Using Theme Tweaker for Layout Changes"). This addon allows adding your own CSS styles and JavaScript codes to the existing X-Cart ones, adding custom images or even editing text labels and rearranging the info blocks on the page. 

{% note info %}
For earlier X-Cart versions that used the Custom Skin addon instead of Theme Tweaker. 

To switch from Custom Skin to Theme Tweaker without losing your files, you should copy them from XC5_DIR/skins/custom_skin to XC5_DIR/skins/theme_tweaker (XC5_DIR is the directory where your X-Cart 5 instance is installed).

NB: If there are custom changes in the PHP files, they will have to be manually transferred to a separate custom addon and updated to be compatible with X-Cart 5.4.0.x.
{% endnote %}

Theme Tweaker will create a new addon with a copy of the store's default template modified by your changes. In addition to the unbeatable convenience of making changes on the fly, every tweak you implement with this tool will be saved correctly in accordance with the OOP paradigm. 

Please make sure the addon is {% link "installed and enabled" ref_0fGEpvrh %} before you proceed.
![theme_tweaker_addon.png]({{site.baseurl}}/attachments/ref_2L6W3YMS/theme_tweaker_addon.png)

When enabled the Theme Tweaker panel is always visible at the bottom of the customer storefront when opened by a logged in administrator.
![541-theme-tweaker-panel-storefront.png]({{site.baseurl}}/attachments/ref_2L6W3YMS/541-theme-tweaker-panel-storefront.png)


_In this section:_

*  {% link "Layout Editor" ref_1xoeCJwy %}
*  [Labels Editor](https://kb.x-cart.com/look_and_feel/text_labels/labels_in_webmaster_mode.html "Using Theme Tweaker for Layout Changes")
*  {% link "Description Editor" ref_0KCLczz4 %}
*  {% link "Custom CSS" ref_10vugyja %}
*  {% link "Template Editor" ref_1gdpZJ44 %}


_Related pages:_
* {% link "Basic Design Changes in X Cart 5.3" ref_KpqQsVGf %}
* [Using Webmaster Mode in X-Cart 5](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html)
