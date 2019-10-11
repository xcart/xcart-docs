---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-30 16:05 +0400'
identifier: ref_TANvG2De
title: Import-Export
order: 35
description: Batch update your store catalog and customer base
icon: exchange
categories:
  - home
published: true
---
Data import is a perfect way out if you do not have the time or desire to populate your store with products and customers adding them manually one by one; it enables you to add new information and update the existing information about products, categories, users and other stuff by submitting a specially formatted data file. If necessary, it is even possible to import orders.

{% note info %}
If you want to add multiple changes to the products that are present in the database already, you might find it easier to use {% link "bulk editing" ref_1kSYmXQn %} instead.
{% endnote %}

X-Cart uses [CSV files](https://en.wikipedia.org/wiki/Comma-separated_values "Import-Export") for data import/export that you can create in any spreadsheet editor you like better (for example, MS Excel _or _LibreOffice Calc_). 

Importing products is useful if you are switching to X-Cart from another platform, or if you want to make multiple changes to your products or inventory that are not possible with bulk editing. 

Similarly, if you have a customer list from another platfrom that you want to use in your X-Cart store, you can enter it into a CSV file and import this file via your X-Cart admin. You can also use the customer CSV template to build a new customer list.

Orders import is suported via the [Orders Import ](https://market.x-cart.com/addons/orders-import.html "Import-Export") addon, that is not included into the core and should be installed additionally as described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

Data export is a convenient way to get structured information out of your X-Cart store. Typically, the function of data export is auxiliary - enabling you to find out the data format required to import data. For example, if you want to import a specific type of data, but do not know what fields need to be created in your import file and how the data in those fields has to be formatted, you can add just a couple of items of that type via the back end of your X-Cart store manually (or use the existing demo data) and then export it to CSV. This way you will have a pattern to follow when formatting the rest of the data to be imported into the store via CSV. 

_In this section:_

*   {% link "How to Import data" ref_glDc6kA1 %}
*   {% link "CSV Format by X-Cart Data Type" ref_iy9cOdWS %} 
*   {% link "Updating Product Properties (Price, Stock Quantity, etc.) via import" ref_OEpBdtQ6 %}
*   {% link "Integration with Doba (Drop Shipping Services)" ref_HOfdxO3E %}

_Related pages_:

*   {% link "Import and Export of Categories: Tutorial by Mike White" ref_VXdfNsVw %} (video)
