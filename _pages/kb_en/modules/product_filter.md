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
Let's imagine that you run an online store that has tons of different products. Each product has its own set of attributes like size, color, material, technical characteristics, and many others that make it distinct from other products. Buyers decisions directly depend on these product attributes and you as a seller can make a buyers choice easier using the product filters addon. The filter based on product attributes will help your customers to narrow down the search results and find out the exact products they need. Filter-based search can also include tags, price range,  and in-stock availability. You can add a filter-based search block on a category page in the store front-end using the **Product Filter** addon.

The **Product Filter** addon is included into X-Cart Business package and higher and comes pre-installed. However, if it is not you can always enable it yourself as described in {% link "Installing and activating addons" ref_0fGEpvrh %}.

When enabled, you'll need to open the _Settings_ page and configure the addon according to your business needs.

![addons.png]({{site.baseurl}}/attachments/ref_6e82A7rL/addons.png)

The addon settings are as follows:

![settings.png]({{site.baseurl}}/attachments/ref_6e82A7rL/settings.png)

* _Enable "In stock only" filter_ - if enabled the 'In stock' selector will be added to the filter 

* _Enable "Price range" filter_ - if enabled the filter will allow choosing the search price range

* _Enable "Attributes" filter_ - if enabled the filter will display the choice of attributes available for the products 

{% note info %}
For the "Attributes" filter to be displayed you should have attributes set up in your store. For more info on the attributes configuration please refer to {% link "Product classes and attributes" ref_T90ZcEpP %}. 
{% endnote %}

* _Enable "Tags" filter_ - if enabled the filter will show the tags available for search

{% note info %}
For the "Tags" filter to be displayed you should have {% link "tags set up" ref_6nFoxYf1 %} in your store. 
{% endnote %}

* _Show only available attributes and tags for products in category_ - if enabled X-Cart generates data cache that is used to display in the filter only the attribute values and tags that are actually used for the products in the category being viewed. 

{% note info %} 
Enabling this option will make a page load faster as only a set of particular attributes and tags will be counted, but not all attributes and tags available in your store. This is essential for the stores with a high inventory turnover ratio.
{% endnote %}

* _Cache reset mode_ - can be set either to generate cache on the fly or to remove cache when attribute, tag or product data is changed. The first option will allow working with the actual inventory stock but will slow down the page loading as it will be necessary to cache filters each time. If you don't update inventory too often, use the second option. 

{% note info%}
If the "Remove cache when ..." option is chosen a category page cache will be removed and generated anew the first time this page is opened after you change products, categories or attributes data. The first page loading may last more than usual as time will be spent on cache regeneration.
{% endnote %}

* _Sort order for class attributes_ (available only if the "Attributes" filter is enabled) - here you can choose if the attributes are sorted alphabetically or manually.

{% note info %}
This setting affects only the attributes themselves, not their values. The values are sorted alphabetically. 
{% endnote %}

* _Generate the URL query string for filter with_ - can be set to _GET params_ or _hash_ depending on how you prefer the search URL to be assembled.

If you change any setting value don't forget to _**Submit**_ the changes.

To define what attributes will be included into the product filter block on a category page in the store front-end open a category page in the admin back-end (**Catalog** > **Categories** > **_Category_Name_**).

![category.png]({{site.baseurl}}/attachments/ref_6e82A7rL/category.png)

Find the _Classes for product filter_ setting in the **Category Info** tab.

![Screen Shot 2018-01-31 at 13.25.42.png]({{site.baseurl}}/attachments/ref_6e82A7rL/Screen Shot 2018-01-31 at 13.25.42.png)

Here you can choose what classes of attributes will be used to filter products in this category. Available options are as follows:
* All classes from this category - the filter will show classes of all products from this category (the more classes and products a category has the more time it will take to load a category page).
* Do not show the filter - this filter will not be displayed on the category page
* Choose classes - if you use this option you'll be able to define the exact class(es) the filter will be based on. Using this option you can limit the number of classes applied. You can choose any class from all classes available in your store.

![]({{site.baseurl}}/attachments/ref_6e82A7rL/Screen%20Shot%202018-01-31%20at%2013.26.33.png)

{% note info %}
If there are no products in the category itself the product filter won't be displayed on the category page in the store front-end. If there are subcategories and products belong to a subcategory, but not to the category itself, the _Classes for product filter_ setting should be configured on a subcategory page in the admin back-end.
{% endnote %}

Once enabled and set up the product filter will become available on the category's page in the store front-end.

![]({{site.baseurl}}/attachments/ref_6e82A7rL/store-front.png)

{% note info %}
You can change the Product Filter block position in the store front-end using the [Webmaster mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html "Product Filter").
{% endnote %}

_Related pages:_

   * {% link "Product Filter: Usage with Multivendor" ref_5YMhId62 %}
