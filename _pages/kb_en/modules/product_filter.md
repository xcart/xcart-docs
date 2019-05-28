---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-29 16:35 +0400'
identifier: ref_6e82A7rL
title: Product Filter
order: 221
published: true
description: 'product filters, easy search'
---
Let us imagine that you run an online store that has tons of different products. Each product has its own set of attributes like size, color, material, technical characteristics, and many others that make it distinct from other products. A shopper's decision to buy depends on these product attributes, and you as a seller can make a shopper's choice easier by using the Product filters addon. The addon enables your store visitors to use a filter based on product attributes that will help them to narrow down the search results and find the very product they need. Filter-based search can also include tags, a price range, and in-stock availability. You can add a filter-based search block on a category page in the store front end using the **Product Filter** addon.

If the addon **Product Filter** is not installed in your X-Cart store, you can install it from the X-Cart Marketplace. Follow the general instructions for {% link "installing and activating addons" ref_0fGEpvrh %}.

Before using the addon, you will need to cofigure it. Open the _Settings_ page and configure the addon according to your business needs.

![addons.png]({{site.baseurl}}/attachments/ref_6e82A7rL/addons.png)

The addon settings are as follows:

![settings.png]({{site.baseurl}}/attachments/ref_6e82A7rL/settings.png)

* **Enable "In stock only" filter** - if enabled the 'In stock' selector will be added to the filter 

* **Enable "Price range" filter** - if enabled the filter will allow choosing the search price range

* **Enable "Attributes" filter** - if enabled the filter will display the choice of attributes available for the products 

{% note info %}
For the "Attributes" filter to be displayed you should have attributes set up in your store. For more info on the attributes configuration please refer to {% link "Product classes and attributes" ref_T90ZcEpP %}. 
{% endnote %}

* **Enable "Tags" filter** - if enabled the filter will show the tags available for search

{% note info %}
For the "Tags" filter to be displayed you should have {% link "tags set up" ref_6nFoxYf1 %} in your store. 
{% endnote %}

* **Show only available attributes and tags for products in category** - if enabled X-Cart generates data cache that is used to display in the filter only the attribute values and tags that are actually used for the products in the category being viewed. 

{% note info %} 
Enabling this option will make a page load faster as only a set of particular attributes and tags will be counted, but not all attributes and tags available in your store. This is essential for the stores with a high inventory turnover ratio.
{% endnote %}

* **Cache reset mode** - can be set either to generate cache on the fly or to remove cache when attribute, tag or product data is changed. The first option will allow working with the actual inventory stock but will slow down the page loading as it will be necessary to cache filters each time. If you don't update inventory too often, use the second option. 

{% note info%}
If the "Remove cache when ..." option is chosen a category page cache will be removed and generated anew the first time this page is opened after you change products, categories or attributes data. The first page loading may last more than usual as time will be spent on cache regeneration.
{% endnote %}

* **Sort order for class attributes** (available only if the "Attributes" filter is enabled) - here you can choose if the attributes are sorted alphabetically or manually.

{% note info %}
This setting affects only the attributes themselves, not their values. The values are sorted alphabetically. 
{% endnote %}

* **Generate the URL query string for filter with** - can be set to _GET params_ or _hash_ depending on how you prefer the search URL to be assembled.

If you change any setting value don't forget to _**Submit**_ the changes.

To define what attributes will be included into the product filter block on a category page in the store front end open a category page in the admin back end (**Catalog** > **Categories** > **_Category_Name_**).

![category.png]({{site.baseurl}}/attachments/ref_6e82A7rL/category.png)

Find the **Classes for product filter** setting in the **Category Info** tab.

![Screen Shot 2018-01-31 at 13.25.42.png]({{site.baseurl}}/attachments/ref_6e82A7rL/Screen Shot 2018-01-31 at 13.25.42.png)

Here you can choose what classes of attributes will be used to filter products in this category. Available options are as follows:
* _All classes from this category_ - the filter will show classes of all products from this category (the more classes and products a category has the more time it will take to load a category page).
* _Do not show the filter_ - this filter will not be displayed on the category page
* _Choose classes_ - if you use this option you'll be able to define the exact class(es) the filter will be based on. Using this option you can limit the number of classes applied. You can choose any class from all classes available in your store.

![]({{site.baseurl}}/attachments/ref_6e82A7rL/Screen%20Shot%202018-01-31%20at%2013.26.33.png)

{% note info %}
If there are no products in the category itself the product filter won't be displayed on the category page in the store front end. If there are subcategories and products belong to a subcategory, but not to the category itself, the **Classes for product filter** setting should be configured on a subcategory page in the Admin back end.
{% endnote %}

Once enabled and set up the product filter will become available on the category's page in the store front end.

![]({{site.baseurl}}/attachments/ref_6e82A7rL/store-front.png)

{% note info %}
You can change the Product Filter block position in the store front end using the [Webmaster mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html "Product Filter").
{% endnote %}

_Related pages:_

   * {% link "Product Filter: Usage with Multivendor" ref_5YMhId62 %}
