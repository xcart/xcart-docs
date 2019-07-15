---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-05 13:14 +0400'
identifier: ref_2LetICls
title: Shop by Brand
order: 245
published: true
description: shop by brand
---
The addon [Shop by Brand](https://market.x-cart.com/addons/shop-by-brand.html "Shop by Brand") is aimed at promoting branded goods.

With this addon finding products of specific brands/manufacturers becomes much easier for customers, especially first-time visitors who may not know what exactly they are looking for.

To install the addon, follow the steps described in {% link "Installing and Activating addons" ref_0fGEpvrh %}.

Once the addon has been installed, find it on the list of your store's installed addons (**My addons** section) in the Admin area, open the addon settings page and configure the addon settings according to your business needs.

![addon.png]({{site.baseurl}}/attachments/ref_2LetICls/addon.png)

The addon settings are as follows:

![settings.png]({{site.baseurl}}/attachments/ref_2LetICls/settings.png)

* **Which global attribute field is the product brand?** Here you can choose brands from the global attributes available. If you have no global attributes, {% link "configure" ref_HzMkgc0q %} them first. 

* **Order brands on the Brands page by**: The available options are "Brand names", "Admin-defined order" and "Number of products". 

* **Enable pagination on the Brands page**: Should be enabled only if you have a lot of brands in the store. 

* **Default number of brands per page**: The number of brands to be displayed on the Brands page on the store front-end. 

* **Show the Brands block on the home page**: If enabled, the Brands block is displayed on the store's home page. 

* **Order brands in the Brands block by**: Choose between "Brand names", "Admin-defined order" and "Number of products". 
* **Number of items in the Brands block**: Set the number of brands to be displayed in the Brands block on the store front end. 

Do not forget to **Submit** the changes when done.

When the addon is enabled and configured, existing brands are collected through the store automatically based on the global attribute you specified and are displayed in the Brands section (**Catalog** > **Brands**) of the Admin area. 

![brands.png]({{site.baseurl}}/attachments/ref_2LetICls/brands.png)

Here the store administrator can change the order of appearance of the brands the way they require. By default, the brands are sorted alphabetically. Also, it is possible to edit the existing brands and add new ones if required. 

To create a new brand:

   1. Click **New brand**. 

   2. Specify the brand info:
      
      * **Brand name**: This is the only field that is required. Use it to specify the name of the brand.
      * **Brand logo** : Use this field to upload a brand logo. 
      * **Description** : Provide brand description (will be displayed on the brand page).
      * **Meta keywords** : Specify one or more brand related keywords (will be used in the keywords META tag on the category page (for SEO purposes).
      * **Meta description** : Specify a description (will be used in the description META tag on the category page - for SEO purposes).
      * **Clean URL** : Set the brand page Clean URL (will be used for SEO purposes).

   3. Save the changes.

To edit an existing brand:

   1. Click on the brand name in the list. 

   2. Edit the brand info.

   3. Save the changes.

The buyers will see the Brands block on the home page and on any category page on the store front end. You can change the Brands block location using [Webmaster mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html "Shop by Brand"). The brands are also added to the store main {% link "menu" ref_BDykFBbw %}. If you want to disable the brands menu you can do it in the **Content** > **Menus** section of the store Admin area.

![home.png]({{site.baseurl}}/attachments/ref_2LetICls/home.png)

The Brands block in the storefront displays only the brands that have products with a greater than zero inventory. If you want brands with products that are out of stock to also be included, enable the option "Show all" for the setting **How to show out of stock products** in the {% link "Customer Zone settings" ref_qAZlJxZm %} (**Store setup** > **Cart & Checkout**). The brands that do not have any products assigned to them will not be displayed.

![general.png]({{site.baseurl}}/attachments/ref_2LetICls/general.png)

{% note warning %}
Enabling the option "Show all" for the setting **How to show out of stock products** in the {% link "Customer Zone settings" ref_qAZlJxZm %} (**Store setup** > **Cart & Checkout**) will display out-of-stock products throughout the whole store.
{% endnote %}
