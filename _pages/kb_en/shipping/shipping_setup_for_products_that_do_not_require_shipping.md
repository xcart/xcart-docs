---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-30 12:58 +0400'
identifier: ref_z5KmbFAu
title: Shipping Setup for Products That Do Not Require Shipping
categories:
  - User manual
published: true
order: 300
redirect_from:
  - /shipping/shipping_setup_for_downloadable_products.html
---
Intangible goods (software programs, documents, online cards and the like) do not require shipping, so if you sell such products, you need to disable shipping calculation for them. 

This can be done by adjusting the setting **Requires shipping** (in X-Cart versions 5.2.10 and earlier - **Shippable**) to "No" in the **Shipping** section of the **Info** tab in the product details:
![requires-shipping.png]({{site.baseurl}}/attachments/ref_z5KmbFAu/requires-shipping.png)

If you have just a couple of products in your store for which shipping needs to be disabled, you will easily adjust the above mentioned setting manually for each of these products; however, if you need to set the "no shipping" rule for numerous products, visiting the product details page of each specific product only to readjust this setting will not be practical. In this case, you can disable shipping for multiple products at once using the addon **[Bulk Editing](https://market.x-cart.com/addons/bulk-editing.html)** or X-Cart's **{% link "Import/Export feature" ref_TANvG2De %}**. 

For information on how to bulk edit the shipping info (including the **Requires shipping** setting) of multiple products in your store using the addon Bulk Editing, see the section {% link "Bulk Editing" ref_1kSYmXQn %} of this manual.

To find out how to format your CSV import file with product information so as to disable shipping for the products being imported, see the section {% link "CSV Import: Products" ref_WmJBfwxA %}.

Note that if you need to disable shipping for _all_ the products in your store, you can also do it using X-Cart's addon **{% link "Onboarding Wizard" ref_5xTo5Gmg %}**: at the step where you provide information about your shipping preferences, select the option **Mark all products as non-shippable**. You can skip the rest of the wizard steps.

_Related pages:_

*   {% link "Adding Digital Goods" ref_lxNH6TFr %}
