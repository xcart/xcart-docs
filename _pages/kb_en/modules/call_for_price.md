---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-08 16:57 +0400'
identifier: ref_3K1pJExV
title: 'Call for Price '
order: 50
published: true
---
The [Call for Price](https://market.x-cart.com/addons/call-for-price.html "Call for Price") addon allows you to hide the price and "Add to cart" button for particular products and show a message instead. 

To install the addon, follow instructions from {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}

Once the addon has been enabled, you can change the default 'Call for price' message. 

To do so, open the addon _Settings page_:

![settings-1.png]({{site.baseurl}}/attachments/ref_3K1pJExV/settings-1.png)

You'll see a screen like this:

![settings-2.png]({{site.baseurl}}/attachments/ref_3K1pJExV/settings-2.png)

Here you can adjust the text that is displayed to your customers in your store frontend. 

The default text will look as follows:

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![cus-1.png]({{site.baseurl}}/attachments/ref_3K1pJExV/cus-1.png)</div>
  <div class="column" markdown="span">![cus-2.png]({{site.baseurl}}/attachments/ref_3K1pJExV/cus-2.png)</div>
</div>

## Enabling the 'Call for Price' Option for Products

The 'Call for price' option can be enabled:

1. Per product:
   * Choose the product you need fro the list (**Catalog** -> **Products**) and open the Product details page 
   * Locate the **Prices** section in the _Info_ tab 
   ![product-details.png]({{site.baseurl}}/attachments/ref_3K1pJExV/product-details.png)
   * Turn ON the _Call for price_ trigger above it
   * **Save** the changes
   
2. Per product variant
   * Enable the 'Call for price' option for the product as described above
   * Open the _Variants_ tab of the Product details page
   * Locate the _Cart_ icon opposite the product variant
   ![variants.png]({{site.baseurl}}/attachments/ref_3K1pJExV/variants.png)
   * Switch it to _Call for price_
   * **Save** the changes
   {% note info %}
   In case the 'Call for price' option is enabled not for all the variants available a customer will see it like this:
   <div class="ui stackable two column grid">
    <div class="column" markdown="span">![vaiant-customer-2.png]({{site.baseurl}}/attachments/ref_3K1pJExV/vaiant-customer-2.png)</div>
    <div class="column" markdown="span">![variant-customer-1.png]({{site.baseurl}}/attachments/ref_3K1pJExV/variant-customer-1.png)</div>
   </div>
   {% endnote %}
   
3. Via 'Bulk edit':
   * Open the Product listing page (**Catalog** -> **Products**)
   * Mark the products you need
   * Locate the _Cart_ icon in the 'Bulk edit' palette in the bottom
   ![product-list.png]({{site.baseurl}}/attachments/ref_3K1pJExV/product-list.png)
   * Switch to _Call for price_ 
   * **Save** changes

4. Via Import
   * Follow the guides from {% link "How to import data" ref_glDc6kA1 %} and use the field _callForPrice_ to enable the 'Call for price' option for a product and the field _variantCallForPrice_ to enable the option for product variants.
   
   
When the 'Call for price' feature is enabled a customer will see it like this:
   ![apparel.png]({{site.baseurl}}/attachments/ref_3K1pJExV/apparel.png)
