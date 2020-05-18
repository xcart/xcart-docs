---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-30 16:02 +0400'
identifier: ref_glDc6kA1
title: How to Import Data
categories:
  - User manual
published: true
order: 100
---
If you run a big store with hundreds of products and decide you need to update your product descriptions or add many new products, you will realize that it is annoying to update/add each new product via the Admin interface. Instead, you can work in your favorite spreadsheet editor (like MS Excel or LibreOffice Calc), add or change all the info you require right there, which is faster and more convenient, and then upload this document into your store so that your X-Cart 5 will create/update the products for you.

Import is a fast and convinient way to populate an online store with data it needs to contain. By using the data import tools, a store admin can both add new and adjust the existing data in the store. 

{% toc %}


## What Data Can be Imported in X-Cart?

By default, X-Cart allows you to import the following data:

* Products (with or without information on product classes and attributes);
* Categories;
* Classes & Attributes;
* Product attribute values;
* Customers.

Each data type will require a separate import file of a special format. Certain X-Cart addons installed in your X-Cart store can extend the default import data type list.

Examples:
   
The [Orders Import](https://market.x-cart.com/addons/orders-import.html "Import-Export") addon allows you to import the "Orders" data type.

The {% link "Product Reviews" ref_XBriIS6B %} addon - the "Reviews" data type.
   
The {% link "Newsletter Subscriptions" ref_2WzsM3Pg %} addon - the "Subscribers" data type.
   
The {% link "Make/Model/Year" ref_0Esu2RNW %} addon - the "Products with Make/Model/Year/Engine" and "Make/Model/Year/Engine" listing data types.
   
And so on.



## How to Import Data into Store?

To import data into an X-Cart store, follow the steps below:

1.  Prepare a CSV file of a certain format matching the type of data to be imported. This can be done in any spreadsheet editor (_MS Excel_, _LibreOffice Calc_, etc.). 
    
    For more info on the file formats, see the section {% link "CSV Format by X-Cart Data Type" ref_iy9cOdWS %} of this manual.
    
2.  Upload your CSV file into X-Cart 5 via the **Catalog > Import** section of the store's Admin area; the platform will do the rest for you.
    ![540-import-page.png]({{site.baseurl}}/attachments/ref_glDc6kA1/540-import-page.png)

### Preparing a CSV File

There are two ways to create a CSV file for import:

1.  {% link "Export" ref_57zqrlPA %} the data you require via the **Catalog > Export** section of the Admin area. The resulting CSV file contents will use the format appropriate for the respective data type. This method is useful when you want to update the existing data.
2.  Create a CSV file from scratch. This method can be useful, for example, if you need to add some new data to your store.

    To create a new CSV file from scratch:
    1.  Create a new table in your favourite spreadsheet editor (_MS Excel_, _LibreOffice Calc_, etc). 
    2.  Define what parameters you want to import. To do so, specify these parameters in the cells of the first line in your spreadsheet file. Links to the articles with detailed information on the supported parameters can be found in the section {% link "CSV format by X-Cart data type" ref_iy9cOdWS %} of this manual.
    3.  Specify the actual details in the cells of the second and all the subsequent lines. Ultimately, your file will look similar to the following:
        ![]({{site.baseurl}}/attachments/6389817/6586496.png)
    4.  Export the file to CSV format.

_Related pages:_

*   {% link "CSV Format by X-Cart Data Type" ref_iy9cOdWS %}
*   {% link "Updating Product Properties (Price, Stock Quantity, etc.) via Import" ref_OEpBdtQ6 %}
*   {% link "Integration with Doba (Drop Shipping Services)" ref_HOfdxO3E %}
