---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-30 17:06 +0400'
identifier: ref_1mFs8c7N
title: Horizontal Flyout Categories Menu
order: 145
published: true
---
The addon [Horizontal Flyout Categories Menu](https://market.x-cart.com/addons/horizontal-flyout-categories-menu.html "Horizontal Flyout Categories Menu") moves the categories list to the horizontal bar with a drop-down menu. 

To install the addon, follow the instructions from {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.

When installed and enabled proceed to the addon settings page to configure it.

![hfcm-installed.png]({{site.baseurl}}/attachments/ref_1mFs8c7N/hfcm-installed.png)

The addon settings page is devided into three sections:

* **"Single-column" layout settings section**
  
  ![hfcm-single.png]({{site.baseurl}}/attachments/ref_1mFs8c7N/hfcm-single.png)
  
  * **Depth of the menu levels** : The setting defines how many category levels are displayed in the top menu. If the setting value is set to e.g. 1 the menu will display the root categories only.
  
* **"Multicolumn" layout settings**
  
  ![hfcm-multiple.png]({{site.baseurl}}/attachments/ref_1mFs8c7N/hfcm-multiple.png)
  
  * **Use multicolumn layout for subcategories** : If enabled only the 1st level subcategories is displayed in the multiple column view. Number of columns should be set on the category settings page :
    ![category-page.png]({{site.baseurl}}/attachments/ref_1mFs8c7N/category-page.png)
    
    {% note info %}
    If the value of the **Number of columns in multicolumn layout** option on the category settings page is set to 0 the system will use the default field's value from the addon settings page.
    {% endnote%}

  * **Use 2 levels of subcategories in multicolumn layout** : If enabled 2 levels of subcategories are displayed in the multiple column view.
  * **Number of columns in multicolumn layout** : The value stands for the number of columns in a submenu. 
    
    {% note info %}
    The value defined here works only if the option of the same name on the category settings page is set to 0. Otherwise the system uses the value defined on the category settings page.
    {% endnote %}
  
  * **Width of the column in multicolumn layout** : Set the preferred width of a subnemu in pxl. Minimum required value is 180.
  
* **General settings**
  
  ![hfcm-general-settings.png]({{site.baseurl}}/attachments/ref_1mFs8c7N/hfcm-general-settings.png)
  
  * **Show number of products in category** : If enabled the number of products in a category is displayed next to the category's name.
  * **Wrap long category names** : If enabled the long category names are wrapped.
  * **Show category triangles** : If enabled a tiny triangle is displeayed to next the names of categories that include subcategories. Categories that do not contain subcategories will not be furnished with a triangle. 
  * **Show icons for categories** : If enabled (sub)category icons are displayed before the (sub)category name starting from submenu level 1. An icon should be assigned to a (sub)category on the (sub)category management page. If there is no icon assigned to a particular (sub)category, the defult image is displayed.
  * **Display _Home_ link at first position on top menu** : If enabled the _Home_ link (following to the homepage) is added at the first position on top menu. 
     
    {% note info %}
    Using this setting will not result in an automatic _Home_ link relocation. If you have a _Home_ link in the top head menu by the moment, this option will just add another _Home_ link at the first position and will not replace or remove the current one. 
    
    See more info on the menus management in {% link "Adding new items to your store's menus" ref_BDykFBbw %}
    {% endnote %}

Don't forget to **Save** the changes when you are done.  To see your changes in the storefront clear the browser widget cache.
