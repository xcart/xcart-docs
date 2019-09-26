---
lang: en
layout: article_with_sidebar
updated_at: '2019-09-26 11:25 +0400'
identifier: ref_6C0biYtV
title: Updating the price and quantity of simple products
order: 100
published: true
---
For instance, you have a product SKU 10001 "Planet Express Babydoll" for which you need to reduce the price from $19.99 to $9.99, and a product SKU 10007 "Electronic Drum Kit Shirt" for which you need to increase the stock level from 5 to 15 units. Let us first consider the easiest case, when both these products are just simple products - without options or variants.

The process is pretty straightforward:

1.  Use the "Export in CSV" section of your store's back end (**Catalog** > **Export**) to export your existing products:
    ![xc5_import_exportproducts.png]({{site.baseurl}}/attachments/ref_OEpBdtQ6/xc5_import_exportproducts.png)
    
2.  Download the resulting export file and import it into your favorite spreadsheet editor so you can view the file contents separated nicely into columns. For the sake of example, we'll do it with Google Sheets on Google Docs.

3.  The file you get has a lot of columns, so it is a good idea to remove the columns whose contents will not need to be updated - to make the file more manageable. Care not to remove the required columns. To find out which columns are required for your file check the section {% link "CSV import: Products" ref_WmJBfwxA %} of this manual. In the table describing the data format for the import of products, you can see that there are only two required fields (they are marked with asterisks): **sku** and **name**. So you will need to keep these two columns. The price that needs to be updated can be found in the column **price**, and the product quantity - in the column **stockLevel**. So, these columns will also have to be kept. Basically, you can safely remove all the columns except for **sku**, **name**, **price** and **stockLevel**. After you do so, your spreadsheet should look something like the following:
    ![]({{site.baseurl}}/attachments/9306814/9439208.png)
    (On the screenshot above, the column **name** has the name **name_en** because it contains values for the English language; for other languages the column name will have a different language code appended).
    
4.  On the lines of the SKUs for which you need to update the price and the stock quantity, edit the contents of the **price** and **stockLevel** fields as you require. 
    ![]({{site.baseurl}}/attachments/9306814/9439209.png)
    
5.  Save the file and re-import it into your store via the "Import by CSV" section in your store's back end  (**Catalog** > **Import**). 

After the import process is completed, you should be able to see the updated product information in the details of the respective products.
