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
You can configure your X-Cart 5 store to show a section recommending related products (alternatives or additional items) to your customers - the so-called "Related products" block. This feature is available through the use of the module **[Related Products](https://market.x-cart.com/addons/related-products.html)** by X-Cart team. To use the feature, make sure this module is {% link "installed and enabled" ref_uEnDBBA7 %}.
![xc5_rproducts_module.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_rproducts_module.png)

By using the related products feature you can: 
* encourage the customer viewing a product to spend more money by buying a more expensive alternative to the product being viewed;
* remind the customer about other popular things in which they may be interested (extensions, accessories, warranties, etc.) or recommend related products from other categories; 
* display recommended items in the Add to Cart popup (This requires the addon "Add to Cart Popup").

Here is an example of a "Related products" block displayed at the bottom of the product page for one of the products in our demo store:
![xc5_rproducts_block.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_rproducts_block.png)

And here is an example of how related products can be used as a source for product recommendations for the Add to Cart popup. Note the items in the section "Customers who bought this also bought":
![xc5_products_related_products1.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_products_related_products1.png)
(More info on how to enable this feature can be found in the section {% link "Add to Cart PopUp Module" ref_1iGC8Efj %})

## Adding Related Products for a Product
Imagine that you have a product in your product catalog that you want to connect with one or more other products so that these other products will be recommended to customers when the customers show an interest in the first one. To do that you will need to edit the first product specifying the other products as related to it. Here's how it can be done: 

1. In the Products section of your store's Admin area (**Catalog** -> **Products**), find the product for which you need to add related products, and open its details. Click the **Related products** tab to go to the respective section of the product details.
  ![related-1.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/related-1.png)

2. In the Related products section, click **Add related products**.
   ![xc5_rproducts_add.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_rproducts_add.png)
   
   You will see a popup with a list of products to select your related products from.
   ![xc5_rproducts_add1.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_rproducts_add1.png)

3. Select the product(s) that you want to be related to the product you are working on. If necessary, use the filter above the list to find the product(s) you require.
  
4. Adjust the setting **Make bidirectional relations** at the bottom of the list as you require to specify how the selected products should be related with the main product. (Enable the option **Make bidirectional relations** if you want the products selected from the list to be linked to from the main product as well as themselves provide a link to it. Disable this option if you want the products selected from the list to be linked to from the main product, but not provide a link to it.)   

5. Click **Add products**.
   ![xc5_rproducts_add2.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_rproducts_add2.png)

This adds the selected products as related.
  ![xc5_rproducts_added.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_rproducts_added.png)

## Importing Related Products
Related products can be imported via a .csv file as described in the section {% link "CSV import: Products" ref_WmJBfwxA %}.

## Managing Product Relationships
Once you have added one or more related products for a product, they can be viewed and managed via the Related products section of the product's details. 

To change the order of the products in the "Related products" block on the storefront, readjust the positions of the individual products in the related products list:
![xc5_rproducts_sort.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_rproducts_sort.png)

To specify that the relationship between a related product and the main one should be bidirectional, enable the _Bidirectional link_ option and save the changes:
![xc5_rproducts_bi_link.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_rproducts_bi_link.png)

To stop showing a product as related, remove it from the related products list. To do so, select the related product for deletion using the X button opposite its name and save the changes.
![xc5_rproducts_remove.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_rproducts_remove.png)

Note that in the case of a bidirectional relationship between the products, after the removal of a related product from the related products list the main product will still remain connected to that related product and will appear in the "Related products" block for that product. To remove the relationship between the products completely, you will need to disable the "Bidirectional link" option before removing the related product.

Bulk delete and bulk enable/disable action for the bidirectional connection are available via the **Edit all** button.
![xc5_rproducts_bulk.png]({{site.baseurl}}/attachments/ref_4a5rpsQq/xc5_rproducts_bulk.png)

