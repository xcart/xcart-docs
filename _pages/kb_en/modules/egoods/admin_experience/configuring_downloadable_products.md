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

Note that it is possible to create downloadable products by [cloning](#cloning-downloadable-products) existing products in your store catalog or by [import](#addingupdating-downloadable-products-by-import).

## Managing Downloadable Product Attachments
Attachments associated with a downloadable product can be managed via the Attachments tab of the product details: 
![attachments.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/attachments.png)

## Cloning Downloadable Products
When you clone a downloadable product, the contents of the Attachments tab of the product from which a clone is created is copied to the clone product. As a result, you get two products using the same file attachment(s). If necessary, you can then edit the file attachments for the clone product (replace the files, adjust the _Free_ / _Paid_ access settings, adjust the availability of the files to different membership levels, and the like), or just keep the original files and their settings if you wish to re-use them. For information on product cloning, see the section {% link "Cloning Products" ref_5gTzBmtP %}.
   
## Adding/Updating Downloadable Products by Import  
It is possible to create and/or update downloadable products using the CSV import feature. Here's how to do it:

1. Prepare the files that will be used as downloadable attachments for the products that you are going to import:

   * If you are going to store your file attachments on your X-Cart store server, upload your attachment files to the folder <XCART-DIRECTORY>/files/attachments/. For better organization of the file structure, you may prefer to use a subfolder like <XCART-DIRECTORY>/files/attachments/[product_id]. As an alternative, it is also possible to put the files in the folder <XCART-DIRECTORY>/var/import, or its subfolders. (The ability to use this folder was implemented for compatibility with older X-Cart versions. Any files that will be imported from this folder will be automatically copied to a folder like <XCART-DIRECTORY>/files/attachments/[product_id] during import). You may want to use FTP to transfer the files to the above specified folders from a local computer. 
     
   * If the files you need to import are located on another website available over the Internet, you do not have to upload them to your X-Cart server manually; to import such files, you will need to specify their location in the import CSV file as a URL, and they will be uploaded to the folder <XCART-DIRECTORY>/files/attachments/ automatically during the import process.
   
   * If you are going to store your attachments on Amazon S3, upload the files to Amazon S3 and have the file URLs on Amazon S3 at hand. 

2. Prepare a CSV file with information about the products and downloadable attachments that you wish to import . Depending on your needs and your store configuration, you may require a different set of fields to format the data in your CSV file. For a detailed reference on the format of the fields in a CSV file for product import, see the section {% link "CSV Import: Products" ref_WmJBfwxA %}. 
   At the minimum, your file for the import of downloadable products will need to include the following information:
   * Information required to properly identify a product (the fields **sku**, **name**).
   * Information about the downloadable files to be associated with the said sku and product name (the fields pertaining to the File attachments addon: **attachments**, **attachmentsTitle** and **attachmentsDescription**). 
   * Information as to whether access to the said downloadable files should be free for all visitors or should only be provided to the buyers who have purchased the product and paid for their order (the field **attachmentsPrivate**).
   Note that the attachment file location may be specified in the **attachments** field either as a URL or as a local path. For a file stored on Amazon S3, this should be specified simply as the file URL on Amazon S3. If your store has been properly configured to use Amazon S3, and an Amazon S3 URL is submitted as an attachment file location during a product import, as a result of the import process, this Amazon S3 URL will simply be linked to the product in your store as the attachment file location URL; the file itself will not be uploaded to your X-Cart store server. For any other external URLs, as well as Amazon S3 URLs submitted for import via CSV without Amazon S3 connection properly configured, X-Cart will not only link the URL to the product, but will also upload the file to a subfolder of <XCART-DIRECTORY>/files/attachments/.   
   
3. Import the CSV file via the section **Catalog** > **Import**.

