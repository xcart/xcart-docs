---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 22:46 +0400'
identifier: ref_Gie0uAaw
title: Preparing to generate feeds
categories:
  - User manual
published: true
order: 120
---


## Assigning feed categories

Usually, a price comparison website has its own set of categories (taxonomy) into which you are recommended to organize your products.

Although some shopping engines allow you to upload products with the same categories that you use on your website (or even leave the category field empty), this will likely get your products listed under "Other" category where no one will find them.

The Product Feeds module allows you to organize your products into categories specific for comparison shopping sites (in addition to the categories you use on your own website).

The module allows you to assign feed categories to each product sepatately or to multiple products at once.

**To assign feed categories to a single product**:

1.  In the Products section of your store's Admin area (**Catalog > Products**), find the product for which you need to assign a feed category and open it for editing.
2.  Click on the Feed categories tab:
    ![]({{site.baseurl}}/attachments/7504361/7602260.png)
    This opens a form where you can specify the feed categories into which the product being edited must go:
    ![]({{site.baseurl}}/attachments/7504361/7602261.png)

3.  Use the drop-down boxes to select the feed categories for the product.
4.  Click **Update** to save the changes.

**To mass-assign feed categories to multiple products at once**:

1.  In the Products section of your store's Admin area (**Catalog > Products**), find the products for which you need to assign a feed category and select them by putting tick marks in the check boxes opposite their names.
2.  Click the **More actions** link below the list of products and select **Update categories** (In earlier module versions, this option is named **Update feed categories**):
    ![]({{site.baseurl}}/attachments/7504361/7602258.png)
    This opens a form where you can specify the feed categories into which the selected products must go:
    ![]({{site.baseurl}}/attachments/7504361/7602262.png)
3.  Use the drop-down boxes to select the feed categories for the products.
4.  Click **Update categories** to save the changes.

## Adjusting feed settings

Before you generate a product feed for any of the shopping engines, you must configure the product feed settings for this specific engine.

To configure a product feed:

1.  In your store's Admin area, go to the Product feeds page (**Catalog > Product feeds**).This opens the list of comparison shopping websites for which product feeds can be generated using the Product Feeds module. 
2.  Locate the shopping engine for which you would like to generate a product feed and click on the "gear" icon opposite its name. The feed settings page opens.
3.  Adjust the settings related to feed contents:
    ![]({{site.baseurl}}/attachments/7504361/7602291.png)

    *   **Skip products without ... category**: This setting allows you to specify whether the feed should include only the products with categories assigned from the engine's taxonomy, or all products.
    *   **Skip disabled products** and **Skip out-of-stock products**: These settings allow you to include or exclude the respective types of products from the feed.
4.  Adjust the settings related to feed structure:
    ![]({{site.baseurl}}/attachments/7504361/7602293.png)

    *   **Include variant attributes into product names**: This setting applies only to products that have variants. By default, all variants of a product are exported with the same product name. If you enable the option "Include variant attributes into product names", product variants will go into the feed with names like "My T-Shirt (Red, Small)", where "My T-Shirt" is the general product name, and Red and Small are the options that this variant has.
    *   **Product URL suffix**: Enter a suffix that should be added to product links. This allows you to analyze your website statistics in Google Analytics and filter users entering your online store from comparison shopping websites.
5.  Use the "Column mapping" section to specify what product fields and attributes should go into which feed columns. 
    ![]({{site.baseurl}}/attachments/7504361/7602294.png)
    For example, you can configure it so that "Brand" attribute goes into "Manufacturer name" column, and SKU field goes into the "UPC" column.
6.  Click **Submit** to save the changes.

_Related pages:_

*   {% link "Generating feeds" ref_20WzfB4m %}
