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
You can configure your X-Cart 5 store to show a section recommending related products (alternatives or additional items) to your customers - the so-called "Related Products" block. This feature is available through the use of the module **Related Products** by X-Cart team. To use the feature, make sure this module is {% link "installed and enabled" ref_uEnDBBA7 %}.
![xc5_rproducts_module.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_rproducts_module.png)

By using the related products feature you can: 
* encourage the customer viewing a product to spend more money by buying a more expensive alternative to the product being viewed;
* remind the customer about other popular things in which they may be interested (extensions, accessories, warranties, etc.) or recommend related products from other categories; 
* display recommended items in the Add to Cart popup (This requires the addon "Add to Cart Popup").

Here is an example of a "Related products" block displayed at the bottom of the product page for one of the products in our demo store:
![xc5_products_related_products.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_products_related_products.png)

And here is an example of how related products can be used as a source of items for "Customers who bought this also bought" in the Add to Cart popup:
![xc5_products_related_products1.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_products_related_products1.png)
(More info on how to enable this feature can be found in the section {% link "Add to Cart PopUp Module" ref_1iGC8Efj %})

## Adding Related Products for a Product
Imagine that you have a product in your product catalog that you want to connect with one or more other products so that these other products will be recommended to customers when the customers show an interest in the first one. To do that you will need to edit the first product specifying the other products as related to it. Here's how it can be done: 

1. In the Products section of your store's Admin area (**Catalog** -> **Products**), find the product for which you need to add related products and open its details. Click the **Related products** tab to go to the respective section of the product details.
  ![related-1.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/related-1.png)

2. In the Related products section, click **Add related products**. You will see a popup with a list of products to select your related products from.

3. Select the product(s) that you want to be related to the product you are working on. If necessary, use the filter above the list to find the product(s) you require.

4. Adjust the setting **Make bidirectional relations** at the bottom of the list as you require to specify how the selected products should be related with the main product. (Enable the option **Make bidirectional relations** if you want the products selected from the list to be linked to from the main product as well as themselves provide a link to it. Disable this option if you want the products selected from the list to be linked to from the main product, but not provide a link to it.)   

5. Click **Add products**.
  ![related-2.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/related-2.png)

That's it! The selected products have been added as related.
  ![related-3.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/related-3.png)

## Importing Related Products
Related products can be imported via a .csv file as described in the section {% link "CSV import: Products" ref_WmJBfwxA %}.

## Managing Product Relationships
Once you have added one or more related products for a product, they can be viewed and managed via the Related products section of the product's details.

