---
lang: en
layout: article_with_sidebar
updated_at: '2019-01-08 16:16 +0400'
identifier: ref_6l9etSb8
title: Configuring Downloadable Products
order: 130
published: true
---
## Adding Downloadable Products
Adding a downloadable product is similar to adding a regular non-downloadabe one. The only difference is that when you configure a downloadable product you must assign one or more downloadable files to it and, as the product will not require physical shipping, disable shipping for it.

Here's how to configure a downloadable product from the store back end (Admin area or - in the case of X-Cart Multivendor - Vendor area):

1. Create a new product or find an existing product that you wish to turn into a downloadable one. 

2. On the **Info** tab of the Product details, locate the section **Shipping** and disable shipping for the product. Be sure to save your changes.
   ![xc5_egood_disable_shipping.png]({{site.baseurl}}/attachments/ref_6l9etSb8/xc5_egood_disable_shipping.png)
   
3. Go to the **Attachments** tab and assign a file to the product.
   ![xc5_egood_attachments_add.png]({{site.baseurl}}/attachments/ref_6l9etSb8/xc5_egood_attachments_add.png)

   You can upload files from your local computer, from your local server or via an external URL. 
   ![xc5_egood_attachments_sources.png]({{site.baseurl}}/attachments/ref_6l9etSb8/xc5_egood_attachments_sources.png)
   
   For example, it is possible to use a shareable URL pointing to a file in a storage like One Drive, DropBox, or Google Drive.
   
   Once the file has been uploaded, it will be added to the list of attachments for the product.
   ![xc5_egood_attachment_added.png]({{site.baseurl}}/attachments/ref_6l9etSb8/xc5_egood_attachment_added.png)
   
   If necessary, you will be able to delete or change the attachment file at any time later.
   
4. Adjust the file settings as you require. See [Managing Downloadable Product Attachments](#managing-downloadable-product-attachments)

5. Save the changes.

Note that it is possible to create downloadable products by [cloning](#cloning-downloadable-products) existing products in your store catalog or by [import](#adding-updating-downloadable-products-by-import).

## Managing Downloadable Product Attachments
Attachments associated with a downloadable product can be managed via the Attachments tab of the product details: 
![attachments.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/attachments.png)

## Cloning Downloadable Products
When you clone a downloadable product, the contents of the Attachments tab of the product from which a clone is created is copied to the clone product. As a result, you get two products using the same file attachment(s). If necessary, you can then edit the file attachments for the clone product (replace the files, adjust the _Free_ / _Paid_ access settings, adjust the availability of the files to different membership levels, and the like), or just keep the original files and their settings if you wish to re-use them. For information on product cloning, see the section {% link "Cloning Products" ref_5gTzBmtP %}.
   
## Adding/Updating Downloadable Products by Import  
To create or update downloadable products by import you will need to import a products CSV file with information about the downloadable attachments and how they can be accessed. For more info on product import, see the section {% link "CSV Import: Products" ref_WmJBfwxA %}.
