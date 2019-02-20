---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 22:46 +0400'
identifier: ref_Gie0uAaw
title: Preparing to Generate Feeds
categories:
  - User manual
published: true
order: 120
---
## Assigning feed categories

Usually, a price comparison website has its own set of categories (taxonomy) into which you are recommended to organize your products.

Although some shopping engines allow you to upload products with the same categories that you use on your website (or even leave the category field empty), this will likely get your products listed under "Other" category where no one will find them.

The Product Feeds addon allows you to organize your products into categories specific for comparison shopping sites (in addition to the categories you use on your own website).

The addon allows you to assign feed categories to each product sepatately or to multiple products at once.

**To assign feed categories to a single product**:

1.  In the Products section of your store's Admin area (**Catalog > Products**), find the product for which you need to assign a feed category and open it for editing.
2.  Click on the Feed categories tab:
    ![fc-1.png]({{site.baseurl}}/attachments/ref_Gie0uAaw/fc-1.png)
    This opens a form where you can specify the feed categories into which the product being edited must go:
    ![fc-2.png]({{site.baseurl}}/attachments/ref_Gie0uAaw/fc-2.png)
3.  Use the drop-down boxes to select the feed categories for the product.
4.  Click **Update** to save the changes.

**To mass-assign feed categories to multiple products at once**:

1.  In the Products section of your store's Admin area (**Catalog > Products**), find the products for which you need to assign a feed category and select them by putting tick marks in the check boxes opposite their names.
2.  Click the **Folder** icon below the list of products to update feed categories:
    ![fc-3.png]({{site.baseurl}}/attachments/ref_Gie0uAaw/fc-3.png)
    This opens a form where you can specify the feed categories into which the selected products must go:
    ![fc-4.png]({{site.baseurl}}/attachments/ref_Gie0uAaw/fc-4.png)
3.  Use the drop-down boxes to select the feed categories for the products.
4.  Click **Update categories** to save the changes.

It's also possible to import feed categories for products using the following fields:

* **nextagId** : specify a relevant NexTag category ID
* **shopzillaId** : specify a relevant Shopzilla category ID
* **pricegrabberId** : specify a relevant Pricegrabber category ID
* **ebayCommerceId** : specify a relevant eBay category ID
* **googleShoppingId** : specify a relevant Google Shopping category ID
       
The field value should be a category ID of a particular comparison shopping site that you can get from the comparison shopping site itself. An alternative way to find a category ID is to assign a category to some product in X-Cart Admin area and then export this product and check for the relevant category ID in the export file.

## Adjusting feed settings

Before you generate a product feed for any of the shopping engines, you must configure the product feed settings for this specific engine.

To configure a product feed:

1.  In your store's Admin area, go to the Product feeds page (**Sales Channels > Product feeds**).This opens the list of comparison shopping websites for which product feeds can be generated using the Product Feeds addon. 
    ![pf-1.png]({{site.baseurl}}/attachments/ref_Gie0uAaw/pf-1.png)
2.  Locate the shopping engine for which you would like to generate a product feed and click on the "gear" icon opposite its name. The feed settings page opens.
3.  Adjust the settings related to feed contents:
    ![fc-5.png]({{site.baseurl}}/attachments/ref_Gie0uAaw/fc-5.png)
    *   **Skip products without ... category**: This setting allows you to specify whether the feed should include only the products with categories assigned from the engine's taxonomy, or all products.
    *   **Skip disabled products** and **Skip out-of-stock products**: These settings allow you to include or exclude the respective types of products from the feed.
4.  Adjust the settings related to feed structure:
    ![fc-6.png]({{site.baseurl}}/attachments/ref_Gie0uAaw/fc-6.png)
    *   **Include variant attributes into product names**: This setting applies only to products that have variants. By default, all variants of a product are exported with the same product name. If you enable the option "Include variant attributes into product names", product variants will go into the feed with names like "My T-Shirt (Red, Small)", where "My T-Shirt" is the general product name, and Red and Small are the options that this variant has.
    *   **Product URL suffix**: Enter a suffix that should be added to product links. This allows you to analyze your website statistics in Google Analytics and filter users entering your online store from comparison shopping websites.
    * **Feed file name**: Change the feed file name if required
    * **Automatic refresh rate (in hours)**: Specify the minimum number of hours that your store must wait after updating a feed before updating it automatically once again. To disable the automatic update set this setting to zero. If you enable this option, make sure that your server is configured to run {% link "scheduled X-Cart tasks" ref_lLqNzAaq %}.
5.  Use the "Column mapping" section to specify what product fields and attributes should go into which feed columns. 
    ![fc-7.png]({{site.baseurl}}/attachments/ref_Gie0uAaw/fc-7.png)
    For example, you can configure it so that "Brand" attribute goes into "Manufacturer name" column, and SKU field goes into the "UPC" column.
6.  Click **Submit** to save the changes.

_Related pages:_

*   {% link "Generating feeds" ref_20WzfB4m %}
