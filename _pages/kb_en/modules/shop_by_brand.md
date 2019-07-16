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

Depending on the X-Cart edition, your store may already have the addon Shop by Brand installed and enabled. If not, it can be obtained via the X-Cart App Store. 
![addon.png]({{site.baseurl}}/attachments/ref_2LetICls/addon.png)
To install the addon, follow the steps described in {% link "Installing and Activating Addons" ref_0fGEpvrh %}.

Brands are based on the {% link "Product attributes" ref_T90ZcEpP %} feature, so to configure brands you will first have to deal with attributes. Namely, you will need to create a global attribute field that you will use for brands, or choose an already existing one - like "Brand" or "Manufacturer":
![manufacturer_attribute.png]({{site.baseurl}}/attachments/ref_2LetICls/manufacturer_attribute.png)

Once you have such a global attribute field, you need to tell the Shop by Brand addon that you are going to use this field for brands. This can be done using the setting **Which global attribute field is the product brand?** on the Shop by Brand addon settings page. To access the addon settings page, find the addon Shop by Brand on the list of your store's installed addons (**My addons** section) in the Admin area and click the link to configure the settings (can be found next to the addon name and description).

Now you can add and manage brand names for your products via the Brands section (**Catalog** > **Brands**) of the store back end. 
![brands.png]({{site.baseurl}}/attachments/ref_2LetICls/brands.png)

Note that if your store already has product attributes assigned to products via the global attribute field designated for brands, the Shop by Brand addon will treat them as previously created brand names. The addon will collect such attributes throughout your catalog and have them listed as regular brand names in the Brands section (**Catalog** > **Brands**).   

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
   
It is possible to edit the existing brands or delete the ones you no longer require.  

After creating the brand names you require you need to specify what products in your store belong to which brands. That is done by assigning the brand names to specific products as attribute values.

By default, the brands are sorted alphabetically. The store administrator can change the order in which brands appear on the list of store brands. 

Your store visitors will be able to see your store's brands on a dedicated Brands page (https://your_store_address/?target=brands) and in the Brands block. (This block will be visible on all the category pages of the store catalog and, if the store administrator chooses to enable its display on the Home page, on the store's Home page as well). If required, the administrator can change the Brands block location using [Webmaster mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html). The brands are also added to the store main {% link "menu" ref_BDykFBbw %}. If you want to disable the brands menu you can do it in the **Content** > **Menus** section of the store Admin area.

![home.png]({{site.baseurl}}/attachments/ref_2LetICls/home.png)

The Brands block on the storefront displays only the brands that have products with a greater than zero inventory. If you want brands with products that are out of stock to also be included, enable the option "Show all" for the setting **How to show out of stock products** in the {% link "Customer Zone settings" ref_qAZlJxZm %} (**Store setup** > **Cart & Checkout**). The brands that do not have any products assigned to them will not be displayed.

![general.png]({{site.baseurl}}/attachments/ref_2LetICls/general.png)

{% note warning %}
Enabling the option "Show all" for the setting **How to show out of stock products** in the {% link "Customer Zone settings" ref_qAZlJxZm %} (**Store setup** > **Cart & Checkout**) will display out-of-stock products throughout the whole store.
{% endnote %}

The store administrator can the addon settings:

![settings.png]({{site.baseurl}}/attachments/ref_2LetICls/settings.png)

* **Which global attribute field is the product brand?** The global attribute field that should be used for brands. Before any global attribute fields become available for selection here, they need to be {% link "configured" ref_HzMkgc0q %}. 

* **Order brands on the Brands page by**: The available options are "Brand names", "Admin-defined order" and "Number of products". 

* **Enable pagination on the Brands page**: Should be enabled only if the store has a lot of brands. 

* **Default number of brands per page**: The number of brands to be displayed on the Brands page on the store front-end. 

* **Show the Brands block on the home page**: If enabled, the Brands block is displayed on the store's home page. 

* **Order brands in the Brands block by**: Choose between "Brand names", "Admin-defined order" and "Number of products". 

* **Number of items in the Brands block**: Set the number of brands to be displayed in the Brands block on the store front end. 




