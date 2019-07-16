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

Depending on the X-Cart edition, your store may already have the addon Shop by Brand installed and enabled.  
![sbb_addon.png]({{site.baseurl}}/attachments/ref_2LetICls/sbb_addon.png)

If not, it can be obtained via the X-Cart App Store. To install the addon, follow the steps described in {% link "Installing and Activating Addons" ref_0fGEpvrh %}.

Brands are based on the {% link "Product attributes" ref_T90ZcEpP %} feature, so to configure brands you will first have to deal with attributes. Namely, you will need to create a global attribute field that you will use for brands, or choose an already existing one - like "Brand" or "Manufacturer". For example, here we already have a global attribute field "Manufacturer":
![manufacturer_attribute.png]({{site.baseurl}}/attachments/ref_2LetICls/manufacturer_attribute.png)

We can use that one or choose to add a new field named "Brand" (or anything we want) using the **New attribute** button: 
![newattribute.png]({{site.baseurl}}/attachments/ref_2LetICls/newattribute.png)

Once you have a global attribute field for brands, you need to tell the Shop by Brand addon that you are going to use this field for brands. This can be done using the setting **Which global attribute field is the product brand?** on the Shop by Brand addon settings page. 
![globalattr_selection.png]({{site.baseurl}}/attachments/ref_2LetICls/globalattr_selection.png)

To access the addon settings page, find the addon Shop by Brand on the list of your store's installed addons (**My addons** section) in the Admin area and click on the link to configure the addon settings (can be found next to the addon name and description). 
![sbb_addon_settings_link.png]({{site.baseurl}}/attachments/ref_2LetICls/sbb_addon_settings_link.png)

Detailed information on the Shop by Brand addon settings is available [at the end of this article](#shop-by-brand-settings).

After specifying one of your global attribute fields as the field for brands, you are all set to work on specific brands (brand names). For that you will need the section Brands available via the menu **Catalog** > **Brands** in your store's Admin area.
![admin_brands_section_link.png]({{site.baseurl}}/attachments/ref_2LetICls/admin_brands_section_link.png)
This section is where you add new brands and manage your existing brands.

Note that if your store already has product attributes configured for the global attribute field you have designated for brands, the Shop by Brand addon will treat them as previously created brand names. The addon will collect such attributes throughout your catalog and have them listed in the Brands section (**Catalog** > **Brands**) where you will be able to manage them.   

Of course, you can create brands manually.
To create a new brand:

   1. Click **New brand**. 
      ![new_brand.png]({{site.baseurl}}/attachments/ref_2LetICls/new_brand.png)
      
      A new page with a form for providing brand informantion opens:
      ![new_brand_info.png]({{site.baseurl}}/attachments/ref_2LetICls/new_brand_info.png)

   2. Specify the brand information:
      
      * **Brand name**: This is the only required field. Use it to specify the name of the brand.
      
      * **Brand logo** : Use this field to upload a logo image for the brand. Note that X-Cart does not impose strict limitations regarding the size of brand logo images that can be uploaded because it can resize and crop images automatically for best appearance. The dimensions to which the original image will be resized and cropped are set in the Images section of your store's Admin area (**Look&Feel** -> **Images**; see the item **Brand image (grid)**). 
      ![brand_img_grid.png]({{site.baseurl}}/attachments/ref_2LetICls/brand_img_grid.png)

      These dimensions may be different depending on the skin used by your store and can be changed manually, if required. For more info on the management of images, including brand logo images, see the section {% link "Managing Images" ref_zyQIOcia %}. 
      
      * **Description** : Provide brand description (will be displayed on the page of the respective brand).
      
      * **Meta keywords** : Specify one or more brand related keywords (will be used in the keywords META tag on the category page (for SEO purposes).
      
      * **Meta description** : Specify a description (will be used in the description META tag on the category page - for SEO purposes).
      
      * **Clean URL** : Set the brand page Clean URL (will be used for SEO purposes).

   3. Save the changes.
      ![create_newbrand.png]({{site.baseurl}}/attachments/ref_2LetICls/create_newbrand.png)

      The brand will be added to the list of your store's brands. 
      
It is possible to edit the information of any existing brands, rearrange the order in which brands are displayed in lists or delete the brands you no longer require. 
![manage_brands.png]({{site.baseurl}}/attachments/ref_2LetICls/manage_brands.png)

After creating the brands you require, you need to specify what products in your store belong to which brands. That is done by assigning the brand names to specific products as attribute values.
![asssign_brand.png]({{site.baseurl}}/attachments/ref_2LetICls/asssign_brand.png)

Your store visitors will be able to see your store's brands on a dedicated Brands page (https://your_store_address/?target=brands):
![all_brands_page.png]({{site.baseurl}}/attachments/ref_2LetICls/all_brands_page.png)

A link to the Brands page is not included in the store's {% link "menus" ref_BDykFBbw %} by default. However, you may decide you want the link to be included. For example, here's the link to the Brands page included in the store's Primary menu:
![brands_link_primary.png]({{site.baseurl}}/attachments/ref_2LetICls/brands_link_primary.png)

To include the link in your store's Primary menu, you will want to go to the Menus section of your store's Admin area (**Content** > **Menus**), locate the "Brands" menu item on the Primary menu tab and enable it:
![enable_brands_menu.png]({{site.baseurl}}/attachments/ref_2LetICls/enable_brands_menu.png)
If for some reason the Brands menu item is missing from the Primary menu tab page, you will want to add it manually as provided on the screenshot above. 
Should you require to add the Brands link to your store's Footer menu, you will be able to do so using the same method, but will need to use the Footer menu tab instead of the Primary menu tab.

Besides the Brands page, your store will also have a dedicated menu block from which store visitors will be able to access products by the brand:
![brands_block_category.png]({{site.baseurl}}/attachments/ref_2LetICls/brands_block_category.png)

The Brands block is visible on category pages of the store catalog. If the store administrator chooses to enable its display on the Home page, it will be displayed on the store's Home page as well. 

If required, the administrator can change the Brands block location using [Webmaster mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html). 

By default, the brands in the Brands block and on the Brands page are sorted alphabetically. The store administrator can change the order in which brands are displayed there via the [Shop by Brand addon settings](#shop-by-brand-settings). 

The Brands block and the Brands page on the storefront only display brands that have products with a greater than zero inventory. If you want brands with products that are out of stock to also be displayed, enable the option _Show all_ for the setting **How to show out of stock products** in the {% link "Customer Zone settings" ref_qAZlJxZm %} section (**Store setup** > **Cart & Checkout**). 
![general.png]({{site.baseurl}}/attachments/ref_2LetICls/general.png)

Any brands that do not have products assigned to them will not be displayed in any case.

{% note warning %}
Enabling the option _Show all_ for the setting **How to show out of stock products** in the {% link "Customer Zone settings" ref_qAZlJxZm %} will affect not just the display of brands, but will enable the display of out-of-stock products throughout the store.
{% endnote %}

<a id="shop-by-brand-settings"></a>
Here's an overview of the Shop by Brand addon settings:

![settings.png]({{site.baseurl}}/attachments/ref_2LetICls/settings.png)

* **Which global attribute field is the product brand?** This setting is for you to specify the global attribute field that should be used for brands. If you have any global attribute fields configured in your store, their names will be provided in the drop-down box as a list so you can select one of them. If you do not have any global attribute fields, you will need to {% link "create" ref_HzMkgc0q %} at least one so it will become available for selection here. 

* **Order brands on the Brands page by**: This settings determines the order in which brand names are listed on the Brands page. The available options are "Brand names" (alphabetically), "Admin-defined order" and "Number of products". 

* **Enable pagination on the Brands page**: This should be enabled only if the store has a lot of brands. 

* **Default number of brands per page**: The number of brands to be displayed per page by default when a user views the store's brands on the Brands page. (The user may choose to reset this number). 

* **Show the Brands block on the home page**: If enabled, the Brands block is displayed on the store's Home page. If disabled, the Brands block is not displayed on the Home page.

* **Order brands in the Brands block by**: This settings determines the order in which brand names are listed in the Brands block. The available options are "Brand names" (alphabetically), "Admin-defined order" and "Number of products". 

* **Number of items in the Brands block**: Set the maximum number of brands to be displayed in the Brands block on the store front end. Brands over this number will be visible on the Brands page, to which a link will be provided at the bottom of the block.




