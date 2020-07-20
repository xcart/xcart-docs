---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-25 16:45 +0400'
identifier: ref_3aUJrW2c
title: Categories Representation on Storefront
order: 1000
published: true
---
Categories representation on the storefront may vary depending on a skin you are using. 

In X-Cart CrispWhite skin, the store homepage displays categories as follows:
![541-storefront-home-categories.png]({{site.baseurl}}/attachments/ref_3aUJrW2c/541-storefront-home-categories.png)

The rest of the pages display categories as a block to the left:
<div class="ui stackable two column grid">
  <div class="column" markdown="span">![541-storefront-category-details-page.png]({{site.baseurl}}/attachments/ref_3aUJrW2c/541-storefront-category-details-page.png)</div>
  <div class="column" markdown="span">![541-storefront-sale-page.png]({{site.baseurl}}/attachments/ref_3aUJrW2c/541-storefront-sale-page.png)</div>
</div>
  
{% toc %}

## Categories Block Relocation

In case it's necessary to change the location of the **Categories** block on a storefront page or to remove it completely it's recommended to use {% link "Layout Editor" ref_1xoeCJwy %}. 

## Adding Categories to Navigation Panel

In case you need categories to display horizontally as a part of a header menu, hide the regular categories block using {% link "Layout Editor" ref_1xoeCJwy %} and add categories as menus to the navigation panel. 
![541-cus-categories-in-header.png]({{site.baseurl}}/attachments/ref_3aUJrW2c/541-cus-categories-in-header.png)

To add categories to the top menu:

1. Add your categories as menus on the menu listing page (**Content** > **Menus**) in the store Admin area as described [here](https://kb.x-cart.com/look_and_feel/navigation/adding_new_items_to_your_stores_menus.html#primary-and-footer-menu-maintenance "Categories Representation on Storefront").
   ![541-menus-categories-added.png]({{site.baseurl}}/attachments/ref_3aUJrW2c/541-menus-categories-added.png)

   {% note info %}
   If you want to add a link to a page within your store (e.g. a category page), you can specify it using one of the following ways:
   * **Relative path** : ?target=category&category_id=4 ()
   * **Absolute path** : http://www.your_store_url.com/cart.php?target=category&category_id=4 or https://www.your_store_url.com/category_name/(if {% link "SEO-friendly URLs" ref_nJxrzFEZ %} are enabled).
   * **Shortcut** : '{_category_name_}'
   {% endnote %}

   Make sure the category menus are enabled and ordered properly. Disable any unnecessary menus to make the menu bar more attractive.

2. Add submenus (optional).
   ![541-submenus-cus.png]({{site.baseurl}}/attachments/ref_3aUJrW2c/541-submenus-cus.png)
   
   For this purpose:
   1. Open the menus listing page in your store Admin area (**Content** -> **Menus**):
      ![541-menus-page.png]({{site.baseurl}}/attachments/ref_3aUJrW2c/541-menus-page.png)

   2. Locate the menu you need to edit and click the **Add** button in the "Submenu" column:
      ![541-add-submenu.png]({{site.baseurl}}/attachments/ref_3aUJrW2c/541-add-submenu.png)

   3. On the page that opens, click **New item** (you can add as many submenus as required):
      ![541-submenus-blank-line.png]({{site.baseurl}}/attachments/ref_3aUJrW2c/541-submenus-blank-line.png)

   4. Fill in the fields to name a submenu, add a link to it and set the accessibility level and click **Save changes**:
      ![541-submenu-save-changes.png]({{site.baseurl}}/attachments/ref_3aUJrW2c/541-submenu-save-changes.png)
      
    You can add as many submenu levels as you need.

3. Hide the "Categories" block and change the storefront page layout as described [here](https://kb.x-cart.com/look_and_feel/theme_tweaker/layout_editor.html "Categories Representation on Storefront").

4. Check your new site layout.
   
{% note info%}
It is also possible to move the categories list to the horizontal bar using the X-Cart addon [Horizontal Flyout Categories Menu](https://market.x-cart.com/addons/horizontal-flyout-categories-menu.html "Product Categories"). It's easier in setup.
{% endnote %}
