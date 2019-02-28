---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-30 16:05 +0400'
identifier: ref_OEpBdtQ6
title: 'Updating product properties (price, stock quantity, etc.) via import'
version: X-Cart 5.2.13 and later
categories:
  - User manual
published: true
order: 130
---

Import is a powerful feature, and it allows you not only to create new items, but to update the existing items in your store as well. This can be used to update the properties of the items in the store's catalog, including - but not limited to - prices and product quantities. The idea is to export some existing information from your store to a CSV file, make changes to this information by editing the file in a spreadsheet editor, save the edited version of the file and re-import it into your store so the updated information from the file replaces the existing information in your store. 

As some of you may already know, we have an addon named {% link "Update inventory" ref_uSIvmuTh %} that can be used to update product quantities via the import process. We have been asked more than once to extend the functionality of that addon so it can be used to update product prices as well. We, however, have made a conscious choice not to implement this feature in the addon because, with the release of X-Cart 5.2.13, this addon is no longer necessary: now you can achieve just the same (and more!) using X-Cart's core functionality. In X-Cart 5.2.13, we implemented the ability to properly update any existing items in your store, and you have two import modes to choose from:

*   Create new items and update existing items;
*   Update existing items, but skip new items.

![xc5_import_importmode.png]({{site.baseurl}}/attachments/ref_OEpBdtQ6/xc5_import_importmode.png)


The mode **'Create new items and update existing items'** enables you, as the name suggests, to both create new items and update the existing items. If your import file contains items that do not already exist in the store's database, these items will be created as a result of import.

New items can be created based on the following master IDs:

*   categories: _path_
*   products: _sku_
*   attributes: _product, name, class, group_
*   product-attributes: _productSKU, type, name, class, group, owner, value_
*   reviews: _product, additionDate, reviewerName, email_
*   customers: _login_

The mode **'Update existing items, but skip new items'** enables you to update the existing items without creating any new ones. 

Note that in both the import modes any missing items that are dependent on the existing items will be created. For example, if an existing product being updated through import does not have a category specified, the category will be created.

Let's take a closer look at how you can update the properties of your existing products. We will consider the following cases:

*   [Updating the price and quantity of simple products](#updating-the-price-and-quantity-of-simple-products);
*   [Updating the price of products with options configured using price modifiers](#updating-the-price-of-products-with-options-configured-using-price-modifiers);
*   [Updating the price and quantity of product variants](#updating-the-price-and-quantity-of-product-variants);
*   [Updating the price of products with wholesale prices](#updating-the-price-of-products-with-wholesale-prices);
*   [Removing the existing images of a product](#removing-the-existing-images-of-a-product)

## Updating the price and quantity of simple products

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

## Updating the price of products with options configured using price modifiers

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

## Updating the price and quantity of product variants

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

## Updating the price of products with wholesale prices

Let us imagine that you have installed the addon **Wholesale** and wish to set wholesale prices for your products that will be applied depending on the membership level of the buyer and the number of product units being ordered. You can, of course, do so by editing the details of each of your products - via the Wholesale pricing section of the product details. On large product numbers, it is, however, more convenient to set wholesale prices using the import/export feature. Let us show how it can be done. For example, you have a product SKU 10001 "Planet Express Babydoll" priced at $9.99, and you want to set the following wholesale pricing tiers for it:

*   1-4 units (for all customers) - $9.99
*   5 or more units (for all customers) - $8.99
*   10 or more units (for customers of the Wholesaler membership level) - $7.50
*   10 or more units (for customers of the VIP membership level) - $6.50

In the Wholesale pricing section, this setup would look as follows:

![]({{site.baseurl}}/attachments/9306814/9633884.png)

We are going to achieve the same result without editing the Wholesale pricing section directly. Let's do it:

1.  Use the "Export in CSV" section of your store's back end (**Catalog** > **Export**) to export your existing products:
    ![xc5_import_exportproducts.png]({{site.baseurl}}/attachments/ref_OEpBdtQ6/xc5_import_exportproducts.png)

2.  Download the resulting export file and import it into your favorite spreadsheet editor. 

3.  Edit the file removing the columns whose contents will not need to be updated. As you can find out from the section {% link "CSV import: Products" ref_WmJBfwxA %} of this manual, the columns required for the import of products with wholesale prices are **sku** and **name** (required for products) + **wholesalePrices** and **variantWholesalePrices** (the fields added by the addon Wholesale). So, keep those columns in your file. It may also be a good idea to keep the columns **price** and **stockLevel** - just so you have information about the product's base price and quantity in stock close at hand. The rest of the columns can be safely removed. Now if you look at the line of SKU 10001, you should see something like the following:
    ![]({{site.baseurl}}/attachments/9306814/9633886.png)

4.  Now add the wholesale price tiers you require. In our example, SKU 10001 "Planet Express Babydoll" is a simple product without variants, which means we need to add our wholesale prices in the **wholesalePrices** column. The format to write out wholesale price tiers in your file is as follows:
    **N1**(**Membership1**)=**Price1**&&**N2**(**Membership2**)=**Price2**,
    where: 
    *   **N** is the minimum number of product units starting from which the price is available, 
    *   **Membership **is the name of the membership level to which the price is available (may be omitted to provide a price for non-members),
    *   **Price** is the price corresponding to the specified number of product units and membership,
    *   **&&** is a delimiter used to separate the pricing tiers from one another.

        According to the said format, we need to add the pricing information for SKU 10001 "Planet Express Babydoll" as follows: "5=8.99&&10(Wholesaler)=7.50&&10(VIP)=6.50"
    ![]({{site.baseurl}}/attachments/9306814/9633887.png)

5.  Save the file and re-import it into your store via the "Import by CSV" section in your store's back end (**Catalog** > **Import**). 

After the import process is completed, you should be able to see the wholesale prices you have imported in the Wholesale pricing section of the product details.

For products with variants, the process of adding wholesale prices is similar, only you need to add the wholesale pricing information via the **variantWholesalePrices** column. Below you can see an example of a file that will add wholesale pricing for the variants of SKU 10000 (variantSKUs 100001, 100002, 100003 and 100004):

![]({{site.baseurl}}/attachments/9306814/9633888.png)

## Removing the existing images of a product

1.  Use the "Export in CSV" section of your store's back end (**Catalog** > **Export**) to export your existing products.
    ![xc5_import_exportproducts.png]({{site.baseurl}}/attachments/ref_OEpBdtQ6/xc5_import_exportproducts.png)
    
2.  Download the resulting export file and import it into your favorite spreadsheet editor.

3.  Edit the file removing the columns whose contents will not need to be updated. Care not to remove the required columns. According to the section {% link "CSV import: Products" ref_WmJBfwxA %} of this manual, the required columns for the import of products are **sku** and **name**; you will need to keep those columns. If you need to remove the images not just for simple products, but for product variants, you will also need to keep the column **variantSKU** - the values in this column are needed to identify the specific variants. As you are going to update the images of products/product variants, you should also keep the columns **images** (for simple products) and **variantImage** (for variants).

4.  For the products/product variants that need to have their images removed, replace the image URL/filepath with the word "NULL" (in capitalized case).

5.  Save the file and re-import it into your store via the "Import by CSV" section in your store's back end  (**Catalog** > **Import**). 

After the import process is completed, you should be able to see that the product or variant images for which you have specified the path as "NULL" have been removed.


_Related pages:_

*   {% link "How to Import Data" ref_glDc6kA1 %}
*   {% link "CSV Format by X-Cart Data Type" ref_iy9cOdWS %}
*   {% link "Integration with Doba (Drop Shipping Services)" ref_HOfdxO3E %}
