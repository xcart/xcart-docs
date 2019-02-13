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
   
   If you have {% link "configured a connection to Amazon S3 for E-goods" ref_51iHbWYa %}, you can use an Amazon S3 URL as an attachment file location. In this case, the file will not be uploaded to your X-Cart store server; instead, your customers will be provided with a link to the file on Amazon S3. Instructions for [how to create a downloadable product with an attachment stored on Amazon S3](https://kb.x-cart.com/modules/egoods/admin_experience/configuring_amazon_urls.html#amazons3) are available.
   
   Once the file has been uploaded to the X-Cart server or linked to on Amazon S3, it will be added to the list of attachments for the product.
   ![xc5_egood_attachment_added.png]({{site.baseurl}}/attachments/ref_6l9etSb8/xc5_egood_attachment_added.png)
   
   If necessary, you will be able to delete or change the attachment file at any time later.
   
4. Adjust the file settings as you require. See [Managing Downloadable Product Attachments](#managing-downloadable-product-attachments)

5. Save the changes.

Note that it is possible to create downloadable products by [cloning](#cloning-downloadable-products) existing products in your store catalog or by [import](#addingupdating-downloadable-products-by-import).

## Managing Downloadable Product Attachments
Attachments associated with a downloadable product can be managed via the Attachments tab of the product details: 
   ![xc5_egood_manage_attachments.png]({{site.baseurl}}/attachments/ref_6l9etSb8/xc5_egood_manage_attachments.png)

   * It is possible to add more than one attachment for a single product. To add another attachment, use the **Add file** button.
   
   * It is possible to change the title and description of your attachment: Click anywhere within the respective fields, and they will become editable.
   
   * It is possible to change the attachment file (or the location of the file): Use the **[...]** button to access the respective menu.
   
   * Use the download ("down arrow") button to download the attachment file.
   
   * Use the Membership dropdown box to specify the group of customers who should be able to access the file.
   
   * Be sure to click **Save changes** to save any changes of the attachment details you have made.
   

## Cloning Downloadable Products
When you clone a downloadable product, the contents of the Attachments tab of the product from which a clone is created is copied to the clone product. As a result, you get two products using the same file attachment(s). If necessary, you can then edit the file attachments for the clone product (replace the files, adjust the _Free_ / _Paid_ access settings, adjust the availability of the files to different membership levels, and the like), or just keep the original files and their settings if you wish to re-use them. For information on product cloning, see the section {% link "Cloning Products" ref_5gTzBmtP %}.
   
## Adding/Updating Downloadable Products by Import  
It is possible to create and/or update downloadable products using the CSV import feature. Here's how to do it:

1. Prepare the files that will be used as downloadable attachments for the products that you are going to import:

   * If you are going to store your file attachments on your X-Cart store server, upload your attachment files to the folder &lt;XCART-DIRECTORY&gt;/files/attachments/. For better organization of the file structure, you may prefer to use a subfolder like &lt;XCART-DIRECTORY&gt;/files/attachments/[product_id]. As an alternative, it is also possible to put the files in the folder &lt;XCART-DIRECTORY&gt;/var/import, or its subfolders. (The ability to use this folder was implemented for compatibility with older X-Cart versions. Any files that will be imported from this folder will be automatically copied to a folder like &lt;XCART-DIRECTORY&gt;/files/attachments/[product_id] during import). You may want to use FTP to transfer the files to the above specified folders from a local computer. 
     
   * If the files you need to import are located on another website available over the Internet, you do not have to upload them to your X-Cart server manually; to import such files, you will need to specify their location in the import CSV file as a URL, and they will be uploaded to the folder &lt;XCART-DIRECTORY&gt;/files/attachments/ automatically during the import process.
   
   * If you are going to store your attachments on Amazon S3, upload the files to Amazon S3 and have the file URLs on Amazon S3 at hand. 

2. Prepare a products CSV file with information about the products and downloadable attachments that you wish to import . Depending on your needs and your store configuration, you may require a different set of fields to format the data in your CSV file. For a detailed reference on the format of the fields in a CSV file for product import, see the section {% link "CSV Import: Products" ref_WmJBfwxA %}. Make sure your resulting file meets the requirements of [RFC 4180 standard](https://en.wikipedia.org/wiki/Comma-separated_values#RFC_4180_standard). 

   At the minimum, your CSV file for the import of downloadable products will need to include the following information:
   * Information required to properly identify a product (the fields **sku**, **name**).
   * Information about the downloadable files to be associated with the said sku and product name (the fields pertaining to the File attachments addon: **attachments**, **attachmentsTitle** and **attachmentsDescription**). 
   * Information as to whether access to the said downloadable files should be free for all visitors or should only be provided to the buyers who have purchased the product and paid for their order (the field **attachmentsPrivate**).
   
   Note that the attachment file location may be specified in the **attachments** field either as a URL or as a local path. For a file stored on Amazon S3, this should be specified simply as the file URL on Amazon S3.  
   
   Here's an example of a CSV file for the import of a product (SKU 12026 Ollie - The App Controlled Robot) with a downloadable attachment (Ollie User Manual):
   ![xc5_egoods_import_egoods.png]({{site.baseurl}}/attachments/ref_6l9etSb8/xc5_egoods_import_egoods.png)   
   
3. In your X-Cart store Admin area, go to the section **Catalog** > **Import**, select the CSV file you have prepared for import, specify the import settings as you require and click **Start import** to upload your import CSV file.
   ![xc5_egoods_import_egoods1.png]({{site.baseurl}}/attachments/ref_6l9etSb8/xc5_egoods_import_egoods1.png)

As a result of import:
* A file that has been uploaded onto the X-Cart server to a folder within &lt;XCART-DIRECTORY>/files/attachments/ will remain in the same folder. Its filepath will be linked to the product as the attachment file location. 
* A file from an external URL (other than Amazon S3) will be uploaded automatically to a folder like &lt;XCART-DIRECTORY&gt;/files/attachments/[product_id]. The path to the file within the &lt;XCART-DIRECTORY&gt;/files/attachments/[product_id] folder will be linked to the product as the attachment file location. 
* A file on Amazon S3: 
  - If your store has been properly configured to use Amazon S3 for E-goods, the Amazon S3 URL of the file will be linked to the product in your store as the attachment file location URL; the file itself will not be uploaded to your X-Cart store server. 
  - If your store has *not* been configured to use Amazon S3 for E-goods, X-Cart will upload the file to &lt;XCART-DIRECTORY&gt;/files/attachments/[product_id].  
