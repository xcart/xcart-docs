---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-25 16:45 +0400'
identifier: ref_3aUJrW2c
title: Managing the Category Block Representation
order: 1000
published: true
---
Categories representation on the storefront may vary depending on a skin you are using. Usually product categories are displayed as a block in the left-hand side column of the store site. 

Below is how the categories block is displayed in the storefront using the X-Cart CrispWhite skin:

![categories-storefront.png]({{site.baseurl}}/attachments/ref_3aUJrW2c/categories-storefront.png)

In case it's necessary to change the location of the category block on a page or to remove it completely it's recommended to use {% link "Layout Editor" ref_1xoeCJwy %}. 

In case you need to get a horizontal representation of categories, hide the regular categories block using Layout Editor and add categories as menus to the navigation panel. 

![home_1.png]({{site.baseurl}}/attachments/ref_6rpDdput/home_1.png)

To add categories to the top menu:

1. Add your categories as menus on the Menus page (**Content** > **Menus**) in the store admin area as described in {% link "Adding new items to your store's menus" ref_BDykFBbw %}.

   ![menus.png]({{site.baseurl}}/attachments/ref_6rpDdput/menus.png)

   {% note info %}
   If you want to add a link to a page within your store (e.g. a category page), you can specify it as e.g.:
   * ?target=category&category_id=4 (relative path)
   * http://www.your_store_url.com/cart.php?target=category&category_id=4 (absolute path).
   
   Also you can use the '{_category_name_}' shortcut value. It will also lead to the category page.
   {% endnote %}

   Make sure the category menus are enabled and ordered properly. Disable any unnecessary menus to make the menu bar more attractive.

2. Add a submenu (optional).

   ![submenu.png]({{site.baseurl}}/attachments/ref_6rpDdput/submenu.png)

3. Change the home page and default page layout on the _Layout_ page (**Look & feel** > **Layout**) in the store back-end.

   ![layout.png]({{site.baseurl}}/attachments/ref_6rpDdput/layout.png)

4. Check your new site layout.
   
{% note info%}
It is also possible to move the categories list to the horizontal bar using the X-Cart addon [Horizontal Flyout Categories Menu](https://market.x-cart.com/addons/horizontal-flyout-categories-menu.html "Product Categories"). It's easier in setup.
{% endnote %}
