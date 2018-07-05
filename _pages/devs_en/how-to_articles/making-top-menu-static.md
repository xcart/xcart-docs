---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-05 16:49 +0400'
identifier: ref_1TkG8hLf
title: ''
order: 100
published: false
---
Sometimes store admins want to disable the feature of top menu in Crisp White theme to be on top of a page, even if you scroll the page down.

For instance, if you scroll down home page in default X-Cart theme, you will see no menu as follows:
![no-menu-in-default.png]({{site.baseurl}}/attachments/ref_1TkG8hLf/no-menu-in-default.png)

However, Crisp White theme would still display menu at the very top in this case:
![menu-in-crisp-white.png]({{site.baseurl}}/attachments/ref_1TkG8hLf/menu-in-crisp-white.png)

If you define a lot of second-level menu items, these items may not fit the height of the screen, so customers will not be able to see all of them. Generally speaking, defining so many menu items is not that user-friendly and you should avoid it altogether or use some sort of [Mega Menu plugin](https://market.x-cart.com/addons/multilevel-primary-menu.html) to properly set up such large menu.

However, making the menu static is somewhat quick and cheap solution to make this big menu scrollable, so your customers would be able to see all child items.

This article explains how to acheive that.

1. Define the following piece of CSS code for all pages in your store-front:
	```css
	.target-main #header-area .desktop-header {
	  position: static;
	}    
    ```
    
   	You can do that by creating a module and {% link "adding CSS file via it" ref_p0CRZmMS %}. Alternatively, you can use [ThemeTweaker module](https://kb.x-cart.com/look_and_feel/theme_tweaker/custom_css.html) to define custom CSS code.

2. Define the following piece of JS code for all pages in your store-front:
	```js
	$(window).off('.affix');
$(".desktop-header")
    .removeClass("affix affix-top")
    .removeData("bs.affix");
    ```

Again, you can do that by creating a module and adding JS file to it or via ThemeTweaker module: go to 'Look & feel' > 'Custom CSS & JS' > 'Custom Javascript' section in your admin area.