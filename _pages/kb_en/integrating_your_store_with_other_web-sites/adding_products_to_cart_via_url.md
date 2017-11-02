---
identifier: ref_lG8NdRzr
updated_at: 2015-03-27 00:00
layout: article_with_sidebar
lang: en
title: 'Adding products to cart via URL'
categories:
  - User manual

---


Imagine the situation, your friend decided to write about your product on their blog and you would like to add a special link to this post: when the customer clicks on this link, the product should be added to the customer's cart and the customer should be redirected to your store.

What you would need to do is create the link using the following HREF attribute:
`http://<your-domain>/<x-cart-5-directory>/cart.php?target=cart&action=add&product_id=[YOUR-PRODUCT-ID]`

You can get the product ID from the Admin area. Just open the product you require and look at the browser address bar, it will look something like

`http://<your-domain>/<x-cart-5-directory>/admin.php?target=product&product_id=12345`

12345 is the product ID.