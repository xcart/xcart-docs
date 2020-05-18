---
lang: en
layout: article_with_sidebar
updated_at: '2020-01-28 10:58 +0400'
identifier: ref_57zqrlPA
title: How to Export Data
order: 105
published: true
---
## Why You May Need Export

Data export is a convenient way to get structured information out of your X-Cart store. Most commonly, data export can be used when you need to provide someone with information from your store but you do not want to give this person access to your store Admin area. Export will also help if you need to transfer some data from your store to a CMS or a mailing system not integrated with X-Cart directly. 

Another possible use for export is to get a sample file for importing data into X-Cart - that is, for example, if you want to import data of a specific type, but do not know what fields correspond to this data type and how the data in those fields needs to be formatted for the CSV file to be imported error-free. In this case you can add just a couple of items of the type you require via your X-Cart store Admin area manually (or use the existing demo data) and then export the data type you require to CSV. This way you will have a pattern to follow when formatting your data for import into the store via CSV.

## How to Export Data from X-Cart

The data export tool is available in all X-Cart editions including personal demo stores. 

To export data from an X-Cart store, follow the steps below:

1. Open the "Export to CSV/spreadsheets" page in the store Admin area (**Catalog** -> **Export**):
   ![540-export-page.png]({{site.baseurl}}/attachments/ref_57zqrlPA/540-export-page.png)

2. Select the data to be exported using the related check-boxes.
   
   By default, the following data can be exported from X-Cart:
   * Products (with or without the information on product attributes and classes);
   * Categories;
   * Classes & Attributes;
   * Product attribute values;
   * Customers.
   
   Each chosen data type will result in a separate export file of a special format. 
   
   Certain X-Cart addons installed in a store can extend the default export data type list. 
   
   Examples:
   
   The [Orders Import](https://market.x-cart.com/addons/orders-import.html "Import-Export") addon extends the list with the "Orders" data type.
   
   The {% link "Product Reviews" ref_XBriIS6B %} addon - the "Reviews" data type.
   
   The {% link "Newsletter Subscriptions" ref_2WzsM3Pg %} addon - the "Subscribers" data type.
   
   The {% link "Make/Model/Year" ref_0Esu2RNW %} addon - the "Products with Make/Model/Year/Engine" and "Make/Model/Year/Engine" listing data types.
   
   And so on.
   
   If a data type is greyed out, it means that currently there is no data in the store of this specific type that can be exported.
   
   
3. Specify the required export settings:

   * **Export public files as** : Choose the format of the public files export. The available options are as follows: 
       * URLs : This format will link the exported data to your public files (product and category images, downloadable files shown on product pages, and so on) through direct URLs. Public files will not be included into the archive with your exported files; however, private files (for example, digitally distributed products) will be added to the archive anyway.
       * local files (default option) : This format will provide file paths to your files, relative to your X-Cart installation.
   * **Export product data with** : This setting applies only to the **Products** data type. By default products are exported with global attributes. By using this setting, a store admin can define what product-related data needs to be included into a "products" export file. The available options are as follows:
     * Global attributes (default option);
     * Global & Class attributes;
     * All attributes;
     * No attributes.
     
   * **Charset** (applicable to the CSV export file type only) : Choose a character encoding scheme for your CSV export file. 
   * **CSV delimiter** (applicable to the CSV export file type only) : Choose a delimeter to be used in your CSV export file.

4. Click the **Start export** button.
   
   The store will start the process of preparing export files accodring to the settings specified above.
   ![540-export-in-progress.png]({{site.baseurl}}/attachments/ref_57zqrlPA/540-export-in-progress.png)

5. When the process is complete, you will be redirected to the **Last exported** tab of the **Catalog** -> **Export** section with a list of files available for download:
   ![540-last-exported.png]({{site.baseurl}}/attachments/ref_57zqrlPA/540-last-exported.png)
   
   Here a store admin can: 
   * download files one by one by clicking on a partickular file name;
   * download a files' archive by clicking the **Download all files** button to choose an appropriate archive format (.tgz or .zip);
   * proceed with another export by clicking the **New export** button;
   * delete all export files from the list by clicking the **Delete all files** button.
