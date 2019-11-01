---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-06 13:30 +0400'
identifier: ref_2L6W3YMS
title: Theme Tweaker and Webmaster Mode
order: 400
published: true
description: Learn how to use Webmaster mode to apply changes to the default store layout
version: X-Cart 5.4.x
---

Sometimes it may be necessary to change the default page layout in your X-Cart store to make your store unique or to adapt the default layout to meet your business requirements. You can do this easily using a built-in addon [Theme Tweaker](https://market.x-cart.com/addons/theme-tweaker.html "Using Theme Tweaker for Layout Changes"). This addon allows adding your own CSS styles and JavaScript codes to the existing X-Cart ones, adding custom images or even editing text labels and rearranging the info blocks on the page. 

{% note info %}
X-Cart v5.3.x and earlier used the Custom Skin addon instead of Template Editor. 

To switch from Custom Skin to Theme Editor without losing your files, you should copy them from XC5_DIR/skins/custom_skin to XC5_DIR/skins/theme_tweaker (XC5_DIR is the directory where your X-Cart 5 instance is installed).

NB: If there are custom changes in the PHP files, they will have to be manually transferred to a separate custom addon and updated to be compatible with X-Cart 5.4.0.x.
{% endnote %}

**Theme Tweaker** will create a new addon with a copy of the store's default template modified by your changes. In addition to the unbeatable convenience of making changes on the fly, every tweak you implement with this tool will be saved correctly in accordance with the OOP paradigm. 

Please make sure the addon is {% link "installed and enabled" ref_0fGEpvrh %} before you proceed.
![theme_tweaker_addon.png]({{site.baseurl}}/attachments/ref_2L6W3YMS/theme_tweaker_addon.png)

While the addon is enabled, you can {% link "change skins" ref_GLqVdpgd %} with one click in the **Look and feel** > **Layout** section of your store Admin area and apply changes to the existing store layout directly on the storefront using [Webmaster mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html "Using Theme Tweaker for Layout Changes"). 

For this purpose log in as an admin and open the storefront using the "View storefront" button on any page of your store Admin area. 
![view-storefront.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/view-storefront.png)

The storefront will be opened in a new tab. Find the 'Gear' icon in the bottom left corner and click on it to start editing pages using **Webmaster mode**.

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![gear-icon.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/gear-icon.png)</div>
  <div class="column" markdown="span">![modes.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/modes.png)</div>
</div>

**Webmaster mode** provides five convenient tools that you can use to apply changes to the different parts of your site. More info on these tools is available in the sections below:
1. {% link "Template Editor" ref_1gdpZJ44 %}
2. {% link "Custom CSS" ref_10vugyja %}
3. {% link "Layout Editor" ref_1xoeCJwy %}
4. [Labels Editor](https://kb.x-cart.com/look_and_feel/text_labels/labels_in_webmaster_mode.html "Using Theme Tweaker for Layout Changes")
5. {% link "Description Editor" ref_0KCLczz4 %}



_Related pages:_
* {% link "Basic Design Changes in X Cart 5.3" ref_KpqQsVGf %}
* [Using Webmaster Mode in X-Cart 5](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html)
