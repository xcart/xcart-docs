---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-24 09:46 +0400'
identifier: ref_uSIvmuTh
title: Update Inventory
version: X-Cart 5.2.13 and higher
categories:
  - User manual
published: true
order: 300
---

The addon **Update inventory** by X-Cart team provides a quick and easy way to update product quantities by importing a simple [CSV](https://en.wikipedia.org/wiki/Comma-separated_values) file. This addon works for both regular products and {% link "product variants" ref_0uApuQfx %}.

   ![update-inventory-on.png]({{site.baseurl}}/attachments/ref_uSIvmuTh/update-inventory-on.png)
 
{% note info %}
Starting from X-Cart version 5.2.13, X-Cart has a full-featured import mode aimed at updating the existing items, which allows you to modify your product information (including the stock quantity, price and other product properties) using the standard X-Cart's "Import" feature that can be used instead of the addon "Update inventory". For more info, see {% link "Updating Product Properties (Price, Stock Quantity, etc.) via Import" ref_OEpBdtQ6 %}.
{% endnote %}

 The required CSV file format for importing product quantity information using the addon **Update inventory** is as follows:

![]({{site.baseurl}}/attachments/9306477/9438201.png)

As you can see, the CSV file has just two fields:

{:.ui.compact.celled.small.padded.table}
| Field in CSV file | What this field describes | Value type |
| **sku** | Unique identifier of the product or variant | String, Max. length: 32 |
| **qty** | Stock level, unsigned positive number if the change is absolute and signed if the change is relative | Integer |

{% note info %}
(X-Cart 5.3.3+) 
When using **qty** field, you can also specify changes based on the current stock. Relative change is marked with the sign character, e.g. `+5` (stock increase by 5 items) or `-10` (stock decrease by 10 items). 
{% endnote %}

In a store with the addon **Update inventory** installed and enabled, the CSV file for updating product quantities can be imported via the **Update quantity** section (**Catalog** > **Update quantity**):

![update-invebtory-catalog.png]({{site.baseurl}}/attachments/ref_uSIvmuTh/update-invebtory-catalog.png)

When importing a CSV file to update product quantities, the following rules apply:

*   If a SKU from the CSV file doesn't match the SKU of any existing product or (when using the addon Product Variants) product variant in the store's database, the error is logged, and the respective line in the CSV file is skipped.
*   Product quantities must be positive numbers. If a product quantity in the qty field is specified in a wrong format, the error is logged, and the respective line in the CSV file is skipped.
*   Any errors generated in the process of importing the CSV file with SKUs and quantities are displayed after the import process has been completed.

_Related pages:_

*   {% link "Import-Export" ref_TANvG2De %}
*   {% link "Product Variants" ref_0uApuQfx %}
*   {% link "Updating Product Properties (Price, Stock Quantity, etc.) via Import" ref_OEpBdtQ6 %}
