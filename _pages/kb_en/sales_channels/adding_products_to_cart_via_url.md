---
lang: en
layout: article_with_sidebar
updated_at: '2015-03-27 00:00'
identifier: ref_lG8NdRzr
title: Adding Products to Cart via URL
categories:
  - User manual
published: true
order: 100
redirect_from:
  - >-
    /integrating_your_store_with_other_web-sites/adding_products_to_cart_via_url.html
---
Imagine the following situation: A friend of yours wants to write a blog post about your product, and you want to provide them with a special link to include into this blog post that will help potential buyers to easily buy the product in question from your store. The link should be crafted in such a way that, when a customer clicks on it, they will be redirected to your store where they will find the product already added to the shopping cart.

You can easily create the link in question using the following format:
`http://<your-domain>/<x-cart-5-directory>/cart.php?target=cart&action=add&product_id=[YOUR-PRODUCT-ID]`

The part `http://<your-domain>/<x-cart-5-directory>` will, of course, need to be replaced with the actual address of your store, and the part "[YOUR-PRODUCT-ID]" - with the product ID of the product you wish to market via this sales channel. The product ID can be easily obtained via the store's Admin area. Just open the product you require and look at the browser address bar; it will look something like this:

`http://<your-domain>/<x-cart-5-directory>/admin.php?target=product&product_id=12345`

In the example URL above, 12345 is the product ID. Copy and paste it into your hand-crafted link.

{% note info %}
For products with variants it's recommended to use the {% link "Buy Button" ref_TEiIdZZc %} addon to generate a link on a particular product variant to be added to cart.
{% endnote %}


_Related pages:_

   * {% link "Sales Channels" ref_ybdJste8 %}
