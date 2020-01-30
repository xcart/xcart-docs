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

Data export is a convenient way to get structured information out of your X-Cart store. Most commonly, data export can be used when you need to provide anybody with some information about your store but you do not want to give this person access to your store Admin area. Export will also help if you need to transfer some data from your store to a CMS or a Mailing system not integrated with X-Cart directly. 

Another alternative of using export is to get a sample file for importing data to X-Cart. For example, if you want to import data of a specific type, but do not know what fields correspond with this data type and how the data in those fields have to be formatted for a file to be imported erroneously, you can add just a couple of items of that type via your X-Cart store Admn area manually (or use the existing demo data) and then export it to CSV. This way you will have a pattern to follow when formatting the rest of the data to be imported into the store via CSV.

## How to Export Data from X-Cart

Data export tool is available in all X-Cart editions including personal demo stores. 

To export data from X-Cart a store admin should:

1. Open the "Export to CSV/spreadsheets" page in the store Admin area (**Catalog** -> **Export**):
   ![export-page.png]({{site.baseurl}}/attachments/ref_57zqrlPA/export-page.png)
2. Select the data to be exported using the related check-boxes.
   
   By default, the following data can be exported from X-Cart:
   * Products (including or exclusing product attributes and classes);
   * Categories;
   * Classes & Attributes;
   * Product attribute values;
   * Product tabs; 
   * Global product tabs; 
   * Reviews;
   * Customers;
   * Orders.
   
   Each chosen data type will result in a separate export file of a special format. 
   
   {% note info %}
   Certaing X-Cart addons installed in a store can extend the default export data type list. 
   e.g.
   {% link "Back in Stock Notifications" ref_1oUpzwSS %} addon implies the "Back-in-stock records" and "Price-drop records" data types.
   The {% link "Newsletter Subscriptions" ref_2WzsM3Pg %} addon - the "Subscribers" data type.
   The {% link "Make/Model/Year" ref_0Esu2RNW %} addon - the "Products with Make/Model/Year/Engine" and "Make/Model/Year/Engine" listing data types.
   
   In case a data type is in fade grey, there are no data in the store of this specific type that could be exported.
   {% endnote %}
   
3. Specify the required export settings:
   * **Export file type** : Choose a type of the file your store data to be exported to. Available options are:
     * CSV;
     * Excel 2007;
     * Open Document.
   * **Export public files as** : 
     Choosing "URLs" will link the exported data to your public files (product and category images, downloadable files shown on product pages, and so on) through direct URLs. Public files won't be included into the archive with exported files; however, private files (for example, digitally distributed products) will go into the archive anyway.

     Choosing "local files" will provide file paths to your files, relative to your X-Cart installation.
   * **Export product data with** : This setting is applicable to the **Products** data type only. By default, products are exported with global attributes. Using this setting a store admin can define what product-related data should be included into a "products" export file. Available options are:
     * Global attributes (default option);
     * Global & Class attributes;
     * All attributes;
     * No attributes.
     
   * **Charset** (applicable to the CSV export file type only) : Choose a character encoding scheme for a CSV export file. 
   * **CSV delimiter** (applicable to the CSV export file type only) : Choose a delimeter to be used in a CSV file.
