---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-30 16:02 +0400'
identifier: ref_glDc6kA1
title: How to import data
categories:
  - User manual
published: true
order: 100
---


## Why You May Need Import

If you run a big store with hundreds of products and decide to update your product descriptions or add many new products, you will realize that it is annoying to update/add each new product via the Admin interface. Instead, you can work in your favourite spreadsheet editor (_MS Excel _or _LibreOffice Calc_), add/change all the needed info there, which is faster, and then upload this document into the store so that your X-Cart 5 will create/update the products for you. The process is as follows:

1.  Prepare a CSV file.
2.  Upload your CSV file into X-Cart 5 via the **Catalog > Import** section of the store's Admin area; the platform will do the rest for you.

## Preparing a CSV File

There are two ways to create a CSV file for import:

1.  Export all the products via the **Catalog > Export** section in the Admin area. In this case, the CSV file will contain information about all the products in your store. This method is useful when you want to update the details of your existing products.
2.  Create a CSV file from scratch. This method can be useful, for example, if you need to add new products to your store.

## Creating a CSV File from Scratch

1.  Create a new table in your favourite spreadsheet editor (_MS Excel_, _LibreOffice Calc_, etc).
2.  Define what parameters you want to import. To do so, specify these parameters in the cells of the first line in your spreadsheet file. Links to articles with detailed information on the supported parameters can be found in the section {% link "CSV format by X-Cart data type" ref_iy9cOdWS %} of this manual.
3.  Specify the actual details in the cells of the second and all the subsequent lines. Ultimately, your file will look similar to this:![]({{site.baseurl}}/attachments/6389817/6586496.png)
4.  Export the file to CSV format.

_Related pages:_

*   {% link "CSV Format by X-Cart Data Type" ref_iy9cOdWS %}
*   {% link "Updating Product Properties (Price, Stock Quantity, etc.) via Import" ref_OEpBdtQ6 %}
*   {% link "Integration with Doba (Drop Shipping Services)" ref_HOfdxO3E %}
