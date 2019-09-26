---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-30 16:05 +0400'
identifier: ref_OEpBdtQ6
title: 'Updating Product Properties (Price, Stock Quantity, etc.) via Import'
version: X-Cart 5.2.13 and later
categories:
  - User manual
published: true
order: 130
redirect_from:
  - >-
    /import-export/updating_product_properties_(price__stock_quantity__etc.)_via_import.html
---

Import is a powerful feature, and it allows you not only to create new items, but to update the existing items in your store as well. This can be used to update product properties in the store's catalog, including - but not limited to - prices and product quantities. The idea is to export some existing information from your store into a CSV file, make changes to this information by editing the file in a spreadsheet editor, save the edited version of the file and re-import it into your store so that the updated information from the file replaces the existing information in your store. 

As some of you may already know, we have an addon named {% link "Update inventory" ref_uSIvmuTh %} that can be used to update product quantities via the import process. We have been asked more than once to extend the functionality of that addon so it can be used to update product prices as well. We, however, have made a conscious choice not to implement this feature in the addon because, with the release of X-Cart 5.2.13, this addon is no longer necessary: now you can achieve just the same (and more!) using X-Cart's core functionality. In X-Cart 5.2.13, we implemented the ability to properly update any existing items in your store, and you have two import modes to choose from:

*   Create new items and update existing ones;
*   Update existing items, but skip new ones.

![import-mode.png]({{site.baseurl}}/attachments/ref_OEpBdtQ6/import-mode.png)

The mode **'Create new items and update existing items'** enables you, as the name suggests, to both create new items and update the existing ones. If your import file contains items that do not yet exist in the store's database, these items will be created as a result of import.

New items can be created based on the following master IDs:

*   categories: _path_
*   products: _sku_
*   attributes: _product, name, class, group_
*   product-attributes: _productSKU, type, name, class, group, owner, value_
*   reviews: _product, additionDate, reviewerName, email_
*   customers: _login_

The mode **'Update existing items, but skip new items'** enables you to update the existing items without creating any new ones. 

{% note info %}
In both import modes any missing items that are dependent on the existing items will be created. For example, if an existing product being updated through import does not have a category specified, the category will be created.
{% endnote %}

Let's take a closer look at how you can update the properties of your existing products. 

_In this section:_
*   



_Related pages:_

*   {% link "How to Import Data" ref_glDc6kA1 %}
*   {% link "CSV Format by X-Cart Data Type" ref_iy9cOdWS %}
*   {% link "Integration with Doba (Drop Shipping Services)" ref_HOfdxO3E %}
