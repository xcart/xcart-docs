---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-18 11:33 +0400'
identifier: ref_25POvGjV
title: CloudFilters
order: 600
published: true
---
CloudFilters module is aimed at narrowing down search results and helping your customers to navigate through a large list of products to find items matching certain filtering criteria. Filters will be dynamically adjusted to your customers' needs, automatically updating the count values to reflect the correct number of terms for the current search.

Filters are displayed on a category/subcategory page, search page and brands page (if the module {% link "Shop by Brand" ref_2LetICls %} is enabled). 

Filters are shown dinamically based on the content of the page on which they are displayed. Accordingly, the filters for one category will not be the same as the filters for another category, and both of them will differ from the filters displayed on the search page, etc. 

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![filters-1.png]({{site.baseurl}}/attachments/ref_25POvGjV/filters-1.png)</div>
  <div class="column" markdown="span">![filter-2.png]({{site.baseurl}}/attachments/ref_25POvGjV/filter-2.png)</div>
  <div class="column" markdown="span">![filters-3.png]({{site.baseurl}}/attachments/ref_25POvGjV/filters-3.png)</div>
</div>

The set of filters to be displayed on a page is automatically narrowed down and is built based on the  relevant {% link "product attributes" ref_T90ZcEpP %}, {% link "product tags" ref_6nFoxYf1 %} and {% link "vendor" ref_4ahg5FLK %} info. The selected filters are saved in the URL so that one can easily share a link to the filtered list of products. It is not only handy for the users but may also be advantageous for SEO. 

Once a filter has been applied, all the images and prices are updated at once.

To configure filters, open the **Cloudfilters** tab on the **Catalog** -> **CloudSearch & CloudFilters** page in the Admin area. 
![cloudfilters.png]({{site.baseurl}}/attachments/ref_25POvGjV/cloudfilters.png)

Enable CloudFilters using the button **Enable CloudFilters**:
<img>

You will see a screen with 2 tab sections, **SET UP FILTERS** and **SMART FILTER SELECTION FOR SEARCH**.
![cloudfilters-1.png]({{site.baseurl}}/attachments/ref_25POvGjV/cloudfilters-1.png)

The section **SET UP FILTERS** is where you will do the general setup of your filters to be applied store wide. This section provides a list of filters generated automatically based on all the product attributes, tags and vendors defined in your store. You can enable/disable any filters and change the filter settings:

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![filter-settings-1.png]({{site.baseurl}}/attachments/ref_25POvGjV/filter-settings-1.png)</div>
  <div class="column" markdown="span">![filter-settings.png]({{site.baseurl}}/attachments/ref_25POvGjV/filter-settings.png)</div>
</div>

If a filter is disabled in the section **SET UP FILTERS**, it is not displayed on the storefront. 

Besides the filters listed in the section **SET UP FILTERS**, there are some default filters (category, price and manufacturer) that are always present along with the filters you have enabled. 

The section **SMART FILTER SELECTION FOR SEARCH** is an advanced filtering system that can be used by big stores with a wide range of products (and, as a result, a lot of product attributes) to narrow down the set of filters displayed on the search page on the storefront. Here you can configure special filter categories based on customer search queries. As a result, only relevant filters will be shown.

To add a filter category:

1. Click **Add Filter Category**.
![smart-filter.png]({{site.baseurl}}/attachments/ref_25POvGjV/smart-filter.png)
A popup titled "Add new filter category" will be displayed.

2. Use the popup to configure a filter category: specify a semantic term and add some filters from the list that should match this category. 

3. Once you are done selecting the filters, click **Add category**.
![smart-filter-popup.png]({{site.baseurl}}/attachments/ref_25POvGjV/smart-filter-popup.png)

For the storefront search page **SMART FILTERS** if configured override the filters from the SET UP FILTERS tab.

{% note info %}
Semantic terms (categories) should correlate with the whole store category structure or product types to cover a certain group of products and should not overlap with each other. 
{% endnote %}
