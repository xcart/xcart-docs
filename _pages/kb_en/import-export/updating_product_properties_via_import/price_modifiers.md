---
lang: en
layout: article_with_sidebar
updated_at: '2019-09-26 11:26 +0400'
identifier: ref_3gBwZ1JH
title: Updating the price of products with options configured using price modifiers
order: 110
published: true
---
Now let us consider another case - when you use {% link "multi-value attributes" ref_bTfJ9bTS#multi-value-attributes-product-options %} for some of your products, and set the price on the specific product options by adjusting the base product price with {% link "price modifiers" ref_bTfJ9bTS#price-and-weight-modifiers %}. Let us imagine that you have a product SKU 10001 "Planet Express Babydoll", which is a t-shirt. The t-shirt is available in the sizes S-M-L-XL. The base price of the product is set at $9.99, and this price applies to the sizing options S, M and L, whereas the price on the XL option equals "base price + $2":

![]({{site.baseurl}}/attachments/9306814/9439216.png)

For example, you need to change the price of this product so that the available sizing options have the following prices:

S - $7.99,

M - $8.99,

L - $9.99,

XL - $9.99. 

This can be easily achieved using the export-import feature. To set the prices we require, we'll simply adjust the price modifiers:

1.  In the "Export in CSV" section of your store's back end (**Catalog** > **Export**), choose to export Product attribute values:
    ![xc5_import_exportprodattrvalues.png]({{site.baseurl}}/attachments/ref_OEpBdtQ6/xc5_import_exportprodattrvalues.png)

2.  Download the resulting export file and import it into your favorite spreadsheet editor. 

3.  Edit the file removing the columns whose contents will not need to be updated. Care not to remove the required columns. According to the section {% link "CSV import: Product attribute values" ref_Z7XdREZl %} of this manual, the required columns for the import of product attribute values are **productSKU**, **type**, **name**, and **value**. Keep those columns - and the column **priceModifier** (You will need it to update the price modifiers). Now if you look at the lines pertaining to SKU 10001, you should see something like the following:
    ![]({{site.baseurl}}/attachments/9306814/9439231.png)
    
4.  Adjust the values in the **priceModifier** column:
    *   Add the price modifier "-2" for the sizing option S ($9.99 - 2 = $7.99)
    *   Add the price modifier "-1" for the sizing option M ($9.99 - 1 = $8.99).
    *   Make sure the price modifier value for the sizing option L is NULL (= $9.99).
    *   Remove the price modifier "+2" for the sizing option XL so the price modifier value for XL is also NULL (= $9.99).![]({{site.baseurl}}/attachments/9306814/9439232.png)
    
5.  Save the file and re-import it into your store via the "Import by CSV" section in your store's back end  (**Catalog** > **Import**). 

After the import process is completed, you should be able to see the updated prices.
