---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-25 16:45 +0400'
identifier: ref_3aUJrW2c
title: ''
order: 100
published: false
---
By default your product categories are displayed as a block in the left-hand side column of the store site. 

![home.png]({{site.baseurl}}/attachments/ref_6rpDdput/home.png)

It is possible to change the location of the category block using [Webmaster mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html "Product Categories"). Also it is possible to remove the category block altogether and add categories to the top menu. This way you will get a horizontal representation of the categories. 

To add categories to the top menu:

1. Add your categories as menus on the Menus page (**Content** > **Menus**) in the store back end as described in {% link "Adding new items to your store's menus" ref_BDykFBbw %}.

   ![menus.png]({{site.baseurl}}/attachments/ref_6rpDdput/menus.png)

   {% note info %}
   If you want to add a link to a page within your store (e.g. a category page), you can specify it as ?target=category&category_id=4 (relative path) or as http://www.your_store_url.com/cart.php?target=category&category_id=4 (absolute path).
   Also the '{_category_name_}' shortcut value will lead to the category page.
   {% endnote %}

   Make sure the category menus are enabled and go in a proper order. Disble any unnecessary menus to make the menu bar more attractive.

2. Add a submenu if necessary

   ![submenu.png]({{site.baseurl}}/attachments/ref_6rpDdput/submenu.png)

3. Change the home page and default page layout on the _Layout_ page (**Look & feel** > **Layout**) in the store back-end.

   ![layout.png]({{site.baseurl}}/attachments/ref_6rpDdput/layout.png)

4. Check your new site layout.

   ![home_1.png]({{site.baseurl}}/attachments/ref_6rpDdput/home_1.png)
   
{% note info%}
It is also possble to move the categories list to the horizontal bar using the X-Cart addon [Horizontal Flyout Categories Menu](https://market.x-cart.com/addons/horizontal-flyout-categories-menu.html "Product Categories"). Its easier in setup.
{% endnote %}

