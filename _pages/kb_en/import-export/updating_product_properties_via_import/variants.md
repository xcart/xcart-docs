---
lang: en
layout: article_with_sidebar
updated_at: '2019-09-26 11:28 +0400'
identifier: ref_7rsa9nAo
title: Updating Price and Quantity of Product Variants
order: 120
published: true
---
Now let's see how to update the prices and stock quantities of product variants. 

Let us imagine that you have a product SKU 10000000104 "Apple iPhone X" and this product has 3 variants:
![i-phone.png]({{site.baseurl}}/attachments/ref_7rsa9nAo/i-phone.png)

For example, you need to update the variants info as follows:
* define a different price for each variant; 
* set a different quantity stock for each product. 

Here's how you can do it:

1.  Use the **Export** section of your store's Admin area (**Catalog** > **Export**) to export your existing products:
    ![export-products.png]({{site.baseurl}}/attachments/ref_7rsa9nAo/export-products.png)
    
2.  Download the resulting export file and import it into your favorite spreadsheet editor.

3.  Edit the file removing the columns whose contents will not be updated. Care not to remove the required columns. 
    {% note info %}
    According to the section {% link "CSV import: Products" ref_WmJBfwxA %} of this manual, the required columns for the import of products are **sku** and **name**; you will need to keep those columns. 
    
    Hence we are dealing not just with simple products, but with product variants, you will also need to keep the column **variantID** OR the columns that correspond with the fields the variants were built on (`[attribute_name](field:product)`- if variants were built based on product-specific attributes, `[attribute_name](field:class)` - if variants were built based on product-specific attributes and `[attribute_name](field:global)` - if variants were built based on global attributes)- the values in this column are necessary to identify the specific variants.
    {% endnote %}

   In our sample we would use the **variantID** field as a variant identifier. As we are going to update the prices and quantities for variants, you should keep the columns **variantPrice** and **variantQuantity** in addition to the required ones. Now if you look at the lines presenting the details of the variants of "Binary Mom", you should have something like the following:
    ![products-csv-variants.png]({{site.baseurl}}/attachments/ref_7rsa9nAo/products-csv-variants.png)

4.  Adjust the values in the file:

    *   For variant ID 10000000104-64 add "650" in the **variantPrice** column and "20" in the **variantQuantity** column.
    *   For variant ID 10000000104-128 add "700" in the **variantPrice** column and "25" in the **variantQuantity** column.
    *   For variant ID 10000000104-256 add "750" in the **variantPrice** column and "15" in the **variantQuantity** column.
    
    As a result, your file contents should look like the following:
    ![]({{site.baseurl}}/attachments/9306814/9439235.png)

5.  Save the file and re-import it into your store via the **Import** section in your store's Admin area (**Catalog** > **Import**). 

After the import process is completed, you should be able to see the updated prices and stock quantity for the product variants.
