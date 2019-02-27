---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-03 13:31 +0400'
identifier: ref_0ZWKcob4
title: File Attachments
order: 105
published: true
redirect_from:
  - /products/file_attachments.html
---
Sometimes it may be necessary to enhance the regular product description with a file attachment to provide your customers with a manual (that is, for example, if you are selling household appliances) or with a detailed program description (for example, if you are selling educational courses, etc.)

You can do that using the addon [File attachments](https://market.x-cart.com/addons/file-attachments.html). 
![xc5_fa_addon.png]({{site.baseurl}}/attachments/ref_0ZWKcob4/xc5_fa_addon.png)

The addon provides a special tab on the product page in the store back end -  "Attachments" - which enables you to attach files to the product. You can upload files from your local computer, from your local server or from a URL. The maximum file size is limited by the server settings.

On the storefront, your store visitors can see and download the attachments from the product page:
   ![xc5_fa_attachment_incustomer.png]({{site.baseurl}}/attachments/ref_0ZWKcob4/xc5_fa_attachment_incustomer.png)

## Adding Product Attachments

To add an attachment for a product:

1. Find the product for which you need to add an attachment and open its details.

2. Go to the **Attachments** tab. 
   ![xc5_fa_attachments_tab.png]({{site.baseurl}}/attachments/ref_0ZWKcob4/xc5_fa_attachments_tab.png)

3. Click **Add file** and choose the file source:
   ![xc5_fa_add_file.png]({{site.baseurl}}/attachments/ref_0ZWKcob4/xc5_fa_add_file.png)

   You can upload files from your local computer, from your local server or via an external URL. 

4. Choose the file and click **Upload**.  Once the file has been uploaded to the X-Cart server, it will be added to the list of attachments for the product:
   ![xc5_fa_attachment_added.png]({{site.baseurl}}/attachments/ref_0ZWKcob4/xc5_fa_attachment_added.png)

   If necessary, you will be able to delete or change the attachment file at any time later.

5. Adjust the attachment settings as you require. See [Managing Product Attachments](#managing-product-attachments). Be sure to save your changes.

## Managing Product Attachments

Attachments associated with a downloadable product can be managed via the Attachments tab of the product details:
   ![xc5_fa_manage_attachments.png]({{site.baseurl}}/attachments/ref_0ZWKcob4/xc5_fa_manage_attachments.png)

   * Add more than one attachment for a single product: To add another attachment, use the **Add file** button.
   
   * Change the title and description of your attachment: Click anywhere within the respective fields, and they will become editable.
   
   * Change the attachment file (or the location of the file): Use the **[...]** button to access the respective menu.
     
   * Delete the attachment using the Delete ("Trash") button.
   
   * Use the Download ("down arrow") button to download the attachment file.
   
   * Use the Membership dropdown box to specify the membership-based group of customers who should be able to access the file.
   
   * Drag-n-drop attachments to change the order in which they are shown on the page.
   
   * Be sure to click **Save changes** to save any changes of the attachment details you have made.

## Cloning Products with File Attachments
When you clone a product with file attachments, the contents of the Attachments tab of the product from which a clone is created is copied to the clone product. As a result, you get two products using the same file attachment(s). If necessary, you can then edit the file attachments for the clone product (replace the files, adjust the _Free_ / _Paid_ access settings, adjust the availability of the files to different membership levels, and the like), or just keep the original files and their settings if you wish to re-use them. For information on product cloning, see the section {% link "Cloning Products" ref_5gTzBmtP %}.
   
## Adding/Updating Products with Attachments by Import  
It is possible to create and/or update products with file attachments using the CSV import feature. Here's how to do it:

1. Prepare the files that will be used as downloadable attachments for the products that you are going to import:

   * If the files you need to use as attachments are stored locally, put them in the folder &lt;XCART-DIRECTORY&gt;/files/attachments/. For better organization of the file structure, you may prefer to use a subfolder like &lt;XCART-DIRECTORY&gt;/files/attachments/[product_id]. As an alternative, it is also possible to put the files in the folder &lt;XCART-DIRECTORY&gt;/var/import, or its subfolders. (The ability to use this folder was implemented for compatibility with older X-Cart versions. Any files that will be imported from this folder will be automatically copied to a folder like &lt;XCART-DIRECTORY&gt;/files/attachments/[product_id] during import).  
     
   * If the files you need to import are located on another website available over the Internet, you do not have to upload them to your X-Cart server manually; to import such files, you will need to specify their location in the import CSV file as a URL, and they will be uploaded to the folder &lt;XCART-DIRECTORY&gt;/files/attachments/ automatically during the import process. 

2. Prepare a products CSV file with information about the products and downloadable attachments that you wish to import . Depending on your needs and your store configuration, you may require a different set of fields to format the data in your CSV file. For a detailed reference on the format of the fields in a CSV file for product import, see the section {% link "CSV Import: Products" ref_WmJBfwxA %}. Make sure your resulting file meets the requirements of [RFC 4180 standard](https://en.wikipedia.org/wiki/Comma-separated_values#RFC_4180_standard). 

   At the minimum, your CSV file for the import of products with attachments will need to include the following information:
   * Information required to properly identify a product (the fields **sku**, **name**).
   * Information about the downloadable files to be associated with the said sku and product name (the fields pertaining to the File attachments addon: **attachments**, **attachmentsTitle** and **attachmentsDescription**).
   
   Note that the attachment file location may be specified in the **attachments** field either as a URL or as a local path. 
   
   Here's an example of a CSV file for the import of a product (SKU 12026 Ollie - The App Controlled Robot) with a downloadable attachment (Ollie User Manual):
   ![xc5_fa_atts_import.png]({{site.baseurl}}/attachments/ref_0ZWKcob4/xc5_fa_atts_import.png)
   
3. In your X-Cart store Admin area, go to the section **Catalog** > **Import**, select the CSV file you have prepared for import, specify the import settings as you require and click **Start import** to upload your import CSV file.
   ![xc5_atts_import1.png]({{site.baseurl}}/attachments/ref_0ZWKcob4/xc5_atts_import1.png)

As a result of import:
* A file that has been uploaded onto the X-Cart server to a folder within &lt;XCART-DIRECTORY>/files/attachments/ will remain in the same folder. Its filepath will be linked to the product as the attachment file location. 
* A file from an external URL will be uploaded automatically to a folder like &lt;XCART-DIRECTORY&gt;/files/attachments/[product_id]. The path to the file within the &lt;XCART-DIRECTORY&gt;/files/attachments/[product_id] folder will be linked to the product as the attachment file location.    
  
  _Related articles:_
     
  * {% link "E-goods" ref_ZszpDfxQ %}
  * {% link "PIN Codes" ref_2ioJzfJL %}
