---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-29 16:35 +0400'
identifier: ref_6e82A7rL
title: Product Filter Module
order: 100
published: false
description: 'product filters, easy search'
---
How can you benefit from using product filters? 

Let's imagine that you run an online store that has tons of different products. Each product has it's own set of attributes like size, color, material, technical characteristics, and many others that make it distinct from other products. Buyers decisions directly depend on these product attributes and you as a seller can make the buyers choice easier using the product filters module. The filter based on product attributes will help your customers to narow down the search results and find out the exact products they need. Filter-based search can also include tags, price range,  and in-stock availability.

The Product Filter module is included into X-Cart Business package and higher and comes pre-installed. However, if it is not you can always enable it yourself as described in {% link "Installing and activating addons" ref_0fGEpvrh %}.

![addons.png]({{site.baseurl}}/attachments/ref_6e82A7rL/addons.png)

When enabled, you'll need to open the Settings page and configure the module according your business needs.

![settings.png]({{site.baseurl}}/attachments/ref_6e82A7rL/settings.png)

The module settings are as follows:

* _Enable "In stock only" filter_ - if enabled the filter will show only the products that are in stock at the moment of search

* _Enable "Price range" filter_ - if enabled the filter will allow choosing the search price range

* _Enable "Attributes" filter_ - if enabled the filter will show the choice of attributes available for a categoty or for a particular product class

{% note info %}
To be able to use the "Attributes" filter you should have them set up in your cart. For more info on the attributes configuration please refer to {% link "Product classes and attributes" ref_T90ZcEpP %}
{% endnote %}

* _Enable "Tags" filter_ - if enabled the filter will show the tags available for search

* _Show only available attributes and tags for products in category_ - if enabled X-Cart generates a data cache that is used to display in the filter only the attribute values and tags that are actually used for the products in the category being viewed. 

{% note info %} 
Enabling this option will make a page load faster as only a set of particular attributes and tags will be counted, not all attributes and tags available in your store. This is essential for the stores with a high inventory turnover ratio.
{% endnote %}

* _Cache reset mode_ - can be set either to generate cache on the fly or to remove cache when attribute, tag or product data is changed. The first option will allow working with the actual store stock but will slow down the page loading. If you don't update the inventory too often, use the second option. 

* _Sort order for class attributes_ - here you can choose if the attributes will be sorted alphabeticaly or manually(available if only the "Attributes" filter is enabled)

{% note info %}
This setting affects only the attributes themselves, not their values. The values are sorted alphabetically. 
{% endnote %}

* _Generate the URL query string for filter with_
