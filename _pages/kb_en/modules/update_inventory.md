---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-24 09:46 +0400'
identifier: ref_uSIvmuTh
title: Update inventory
version: X-Cart 5.2.13 and higher
categories:
  - User manual
published: true
order: 300
---

Starting with X-Cart version 5.2.13, X-Cart has a full-featured import mode for the updating of existing items, which allows you to update your product information (including the stock quantity, price and other product properties) using the standard X-Cart's "Import" feature - without the need to use the module "Update inventory". For more info, see {% link "Updating product properties (price, stock quantity, etc.) via import" ref_OEpBdtQ6 %}.

The **Update inventory** module by X-Cart team provides a quick and easy way to update product quantities by importing a simple [CSV](https://en.wikipedia.org/wiki/Comma-separated_values) file. This module works for both regular products and {% link "product variants" ref_0uApuQfx %}.

 ![]({{site.baseurl}}/attachments/9306477/9438200.png)

 The required CSV file format for importing product quantity information is as follows:

![]({{site.baseurl}}/attachments/9306477/9438201.png)

As you can see, the CSV file has just two fields:

{:.ui.compact.celled.small.padded.table}
| Field in CSV file | What this field describes | Value type |
| **sku** | Unique identifier of the product or variant | String, Max. length: 32 |
| **qty** | Stock level, unsigned positive number if the change is absolute and signed if the change is relative | Integer |

{% note info %}
(X-Cart 5.3.3+) When using **qty** field, you can also specify changes based on the current stock. Relative change is marked with the sign character, e.g. `+5` (stock increase by 5 items) or `-10` (stock decrease by 10 items). 
{% endnote %}

In a store with the module Update inventory installed and enabled, the CSV file for updating product quantities can be imported via the Update quantity section (**Catalog** > **Update quantity**):

![]({{site.baseurl}}/attachments/9306477/9438202.png)

When importing a CSV file to update product quantities, the following rules apply:

*   If a SKU from the CSV file cannot be matched to the SKU of any existing product or (when using the module Product Variants) product variant  in the store's database, the error is logged, and the respective line in the CSV file is skipped.
*   Product quantities have to be positive numbers. If a product quantity in the qty field is specified in a wrong format, the error is logged, and the respective line in the CSV file is skipped.
*   Any errors generated in the process of importing the CSV file with SKUs and quantities are displayed after the import process has been completed.

_Related pages:_

*   {% link "Import-Export" ref_TANvG2De %}
*   {% link "Product variants" ref_0uApuQfx %}
*   {% link "Updating product properties (price, stock quantity, etc.) via import" ref_OEpBdtQ6 %}
