---
lang: en
layout: article_with_sidebar
updated_at: '2019-09-26 11:28 +0400'
identifier: ref_7rsa9nAo
title: Updating the price and quantity of product variants
order: 120
published: true
---
Now let's see how to update the prices and stock quantities of product variants. Let us imagine that you have a product SKU 10000 "Binary Mom", which is a t-shirt, and this product has some variants:

![]({{site.baseurl}}/attachments/9306814/9439233.png)

For example, you need to increase the price of variant SKUs 100001 and 100003 so that the price for these variant SKUs is $19.99 - the same as for 100002 and 100004\. You also need to change the stock quantity for variant SKU 100002 from 4 to 2 units. 

Here's how you can do it:

1.  Use the "Export in CSV" section of your store's back end (**Catalog** > **Export**) to export your existing products:
    ![xc5_import_exportproducts.png]({{site.baseurl}}/attachments/ref_OEpBdtQ6/xc5_import_exportproducts.png)
    
2.  Download the resulting export file and import it into your favorite spreadsheet editor.

3.  Edit the file removing the columns whose contents will not need to be updated. Care not to remove the required columns. According to the section {% link "CSV import: Products" ref_WmJBfwxA %} of this manual, the required columns for the import of products are **sku** and **name**; you will need to keep those columns. Because we are dealing not just with simple products, but with product variants, you will also need to keep the column **variantSKU** - the values in this column are necessary to identify the specific variants. As we are going to update the prices and quantities for variants, you should also keep the columns **variantPrice** and **variantQuantity**. Now if you look at the lines presenting the details of the variants of "Binary Mom", you should have something like the following:
    ![]({{site.baseurl}}/attachments/9306814/9439234.png)

4.  Adjust the values in the file:

    *   For variant SKUs 100001 and 100003, add "19.99" in the **variantPrice** column.
    *   For variant SKU 100002, change the stock quantity to "2".As a result, your file contents should look like the following:
    ![]({{site.baseurl}}/attachments/9306814/9439235.png)

5.  Save the file and re-import it into your store via the "Import by CSV" section in your store's back end  (**Catalog** > **Import**). 

After the import process is completed, you should be able to see the updated prices and stock quantity for the product variants.
