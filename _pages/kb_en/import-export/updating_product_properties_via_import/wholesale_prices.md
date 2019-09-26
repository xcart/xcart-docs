---
lang: en
layout: article_with_sidebar
updated_at: '2019-09-26 11:30 +0400'
identifier: ref_0cjIw7VB
title: Updating the price of products with wholesale prices
order: 130
published: false
---
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
