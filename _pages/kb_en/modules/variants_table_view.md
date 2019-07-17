---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-18 10:46 +0400'
identifier: ref_7FeW8hHv
title: Variants Table View
order: 323
published: true
---
The addon [Variants Table View](https://market.x-cart.com/addons/variants-table-view.html "Variants Table View") allows to show all possible product variants as a table with quantity specification fields and enables bulk add to cart for different product variations. 

{% note warning %}
The extension requires the addon {% link "Product Variants" ref_4OTLafuC %} installed and enabled in your store. It does not imply its own functionality of creating and configuring the product variants, it just changes the visual representation of the variants on the storefront.
{% endnote %}

To install the addon, follow the instructions from {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

Once the addon has been installed, proceed to the addon settings page to configure it.

![installed.png]({{site.baseurl}}/attachments/ref_7FeW8hHv/installed.png)

The Variants Table View addon page allows you to choose whether to display _Quantity_, _SKU_, _Image_ and _Weight_ parameters of a product variant in the table:

![settings-page.png]({{site.baseurl}}/attachments/ref_7FeW8hHv/settings-page.png)

**Save** the changes to make them active.

To enable table view for product variants, proceed to the product details page of a product in question. 

{% note info %}
The product should have variants configured already. If the product does not have variants, start by setting up the product variants as described in the section {% link "Product Variants" ref_4OTLafuC %}.
{% endnote %}

Locate the **Display variants as a table** settings in the **Info** tab of the product details page and toggle it on. 

![product-details.png]({{site.baseurl}}/attachments/ref_7FeW8hHv/product-details.png)

That's it! Product variants will now be displayed in table mode:

![storefront.png]({{site.baseurl}}/attachments/ref_7FeW8hHv/storefront.png)

Now your customers can select which product variant(s) they want to purchase, enter the quantity of each product, and click the **Add to Cart** button to place all product variants and quantities into their shopping cart at once - without going back to the product page and adjusting the options numerous times to add each variant separately.

Table view for product variants can be added for multiple products in bulk via the {% link "product import" ref_WmJBfwxA %} facility. 

Set the 'variantsAsTable' field value for a product to 'Yes' to make variants displayed as table.

