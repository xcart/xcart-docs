---
lang: en
layout: article_with_sidebar
updated_at: '2018-10-25 11:52 +0400'
identifier: ref_3XIgbfev
title: Backorder / Preorder
order: 36
published: true
---
The [Backorder/Preorder module](https://market.x-cart.com/addons/backorder-preorder.html "Backorder / Preorder") gives a possibility to allow customers order products that are not in stock at the moment.

To install the module follow the steps described in {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

![installed.png]({{site.baseurl}}/attachments/ref_3XIgbfev/installed.png)

When installed the module adds a special option to enable backordering for products to the **Prices & Inventory** section of the product details page (see more info on editing product details [here](https://kb.x-cart.com/products/products/managing_products/adding_products.html#basic-product-setup "Backorder / Preorder")):

![prices-inventory.png]({{site.baseurl}}/attachments/ref_3XIgbfev/prices-inventory.png)

If the **Available for backorder** option is enabled a store admin can specify a backorder promo the customers will see for this product and set the maximun number of items for backorder if applicable:

![backorder-enabled.png]({{site.baseurl}}/attachments/ref_3XIgbfev/backorder-enabled.png)

The text of a backorder promo will be displayed in product lists and on the product page when the product is out of stock. It's also possible to insert the number of units available for backordering in the text by using the **%number%** placeholder where **%number%** will be automatically subsctituted by the maximum backorder quantity specified.

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Product details page</i>![cus-out-of-stock.png]({{site.baseurl}}/attachments/ref_3XIgbfev/cus-out-of-stock.png)</div>
  <div class="column" markdown="span"><i>Product listing page</i>![listing-page.png]({{site.baseurl}}/attachments/ref_3XIgbfev/listing-page.png)</div>
</div>

{% note info %}
A backorder option for products can be added on a per product basis by enabling the  **Available for backorder** option on the product details page or for more than one product at a time by importing the required field values. 

The fields should be added to a products.csv file, e.g.:

![backorder-import.png]({{site.baseurl}}/attachments/ref_3XIgbfev/backorder-import.png)

For a detailed fields description please refer to {% link "CSV import: Products" ref_WmJBfwxA %}.
{% endnote %}

All backordered products are recorded in the **Backordered products** section in the admin area (**Orders** -> **Backordered products**) where a store admin can trace the required amount:

![backordered-products.png]({{site.baseurl}}/attachments/ref_3XIgbfev/backordered-products.png)

Also all orders with the backordered products get a special fulfilment status - **Back-ordered** (**Orders** -> **Orders list**) so that a store admin can differentiate such orders and give them his particular attention:

![orders-list.png]({{site.baseurl}}/attachments/ref_3XIgbfev/orders-list.png)
