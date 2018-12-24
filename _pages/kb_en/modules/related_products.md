---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-08 15:10 +0400'
identifier: ref_4a5rpsQq
title: Related Products
order: 226
published: true
redirect_from:
  - /products/related_products.html
---
You can configure your X-Cart 5 store to show a block with the related products (alternatives or additional items) - the so-called “Related Products” block. This feature is available through the use of the **Related Products** module by X-Cart team. To use the feature, make sure this module {% link "installed and enabled" ref_uEnDBBA7 %}.

Using the related products feature you can: 
* encourage the customer viewing a product to spend more money by buying a more expensive alternative to the product being viewed;
* remind the customer about other popular things in which they may be interested (extensions, accessories, warranties, etc.) or recommend related products from other categories; 
* display recommended items in the add-to-cart popup (provided that the "Add to Cart Popup" addon is enabled).

Here's an example of "Related products" block - displayed at the bottom of the product page for one of the products in our demo store:
![xc5_products_related_products.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_products_related_products.png)

And here's an example of how related products can be used as a source of items for "Customers who bought this also bought" in the add-to-cart popup:
![xc5_products_related_products1.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_products_related_products1.png)
(More info on how to enable this feature can be found in the section {% link "Add to Cart PopUp Module" ref_1iGC8Efj %})

An upselling link can lead in a single direction (from product A to product B), or be bidirectional (pointing both ways, from product A to product B and from product B to product A). In the former case, product B will show up as related on the page of product A, but if we go to the page of product B, we won't see the product A in the 'Related products' block. In the latter case, product B will show up as related to product A and vice versa.

To configure related products:

1. Go to the _Related products_ tab of the **Product details** page (**Catalog** -> **Products**).
  ![related-1.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/related-1.png)

2. Click the **'Add related products'** button.

3. Choose related products from the list and click **'Add products'**.
  ![related-2.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/related-2.png)

That's it! The related products have been added.
  ![related-3.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/related-3.png)

By default, all the products you add as related ones will have the _'Bidirectional link'_ option enabled. This means that the related product is not only linked to from the product on view, but also provides a link to that product. With the "Bidirectional link" option enabled, removing the link from one of the products will not remove the link in the opposite direction. To remove the relationship between the products completely, disable the "Bidirectional link" option first, then remove the link.

You can remove the bidirectional link to all the related products by using the **'Edit all'** button at the bottom of the page.

Related products can also be imported via a .csv file as described in {% link "CSV import: Products" ref_WmJBfwxA %}
