---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-15 14:54 +0400'
identifier: ref_qPIZcwNs
title: Automating import and export tasks for eBay Integration
categories:
  - User manual
published: true
order: 180
redirect_from:
  - >-
    /en/modules/ebay_integration/automated_export_of_products_to_ebay_and_automated_import_of_orders_from_ebay.md
---
{% note warning %}
For X-Cart v5.3.2.8 and later.
{% endnote %}

Export of products from your X-Cart store to eBay and import of orders into your X-Cart store from eBay can be performed automatically via cron. To use this feature, be sure to enable automated periodic execution of X-Cart's script **console.php** before you install the X-Cart eBay Integration addon (For more information on console.php and instructions for running it periodically, see {% link "Configuring automated execution of periodic tasks for X-Payments subscriptions" ref_pTgcx1sg %}). During the installation, the eBay Integration module will create the necessary periodic tasks to be run via console.php.

_Related pages:_

*   {% link "Exporting products to eBay" ref_40Al0Nky %}
*   {% link "Importing orders from eBay" ref_QTwGRPLV %}
*   {% link "Configuring X-Cart eBay Integration" ref_SCbAqGqX %}
