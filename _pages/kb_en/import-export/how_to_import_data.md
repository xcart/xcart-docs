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
If you run a big store with hundreds of products and decide to update your product descriptions or add many new products, you will realize that it is annoying to update/add each new product via the Admin interface. Instead, you can work in your favourite spreadsheet editor (_MS Excel _or _LibreOffice Calc_), add/change all the needed info there, which is faster, and then upload this document into the store so that your X-Cart 5 will create/update the products for you.

Import is a fast and convinient way to populate an online store with data it needs to contain. Using the data import tools a store admin can both add new and adjust existing data in a store. 

{% toc %}


## What Data Can be Imported in X-Cart?

By default, X-Cart allows to import the following data:

* Products (including or exclusing product classes and attributes);
* Categories;
* Classes & Attributes;
* Product attribute values;
* Product tabs;
* Global product tabs;
* Customers;
* Customer reviews;
* Orders.

Each data type will require a separate import file of a special format. Certain X-Cart addons installed in a store can extend the default import data type list.


## How to Import Data into Store?

In order to import data a store admin should:

1.  Prepare a CSV file of a certain format matching the type of data to be imported. This can be done in any spreadsheet editor (_MS Excel_, _LibreOffice Calc_, etc.) on the admin's choice. 
    
    More info on the file formats see in {% link "CSV Format by X-Cart Data Type" ref_iy9cOdWS %}.
    
2.  Upload your CSV file into X-Cart 5 via the **Catalog > Import** section of the store's Admin area; the platform will do the rest for you.
    ![540-import-page.png]({{site.baseurl}}/attachments/ref_glDc6kA1/540-import-page.png)

### Preparing a CSV File

There are two ways to create a CSV file for import:

1.  {% link "Export" ref_57zqrlPA %} all the products via the **Catalog > Export** section in the Admin area. In this case, the CSV file will contain information about all the products in your store. This method is useful when you want to update the details of your existing products.
2.  Create a CSV file from scratch. This method can be useful, for example, if you need to add new products to your store.

    To create a new CSV file from scratch:
    1.  Create a new table in your favourite spreadsheet editor (_MS Excel_, _LibreOffice Calc_, etc).
    2.  Define what parameters you want to import. To do so, specify these parameters in the cells of the first line in your spreadsheet file. 
        
        Links to articles with detailed information on the supported parameters can be found in the section {% link "CSV format by X-Cart data type" ref_iy9cOdWS %} of this manual.
    3.  Specify the actual details in the cells of the second and all the subsequent lines.      
        
        Ultimately, your file will look similar to this:
        ![]({{site.baseurl}}/attachments/6389817/6586496.png)
    4.  Export the file to CSV format.

_Related pages:_

*   {% link "CSV Format by X-Cart Data Type" ref_iy9cOdWS %}
*   {% link "Updating Product Properties (Price, Stock Quantity, etc.) via Import" ref_OEpBdtQ6 %}
*   {% link "Integration with Doba (Drop Shipping Services)" ref_HOfdxO3E %}
