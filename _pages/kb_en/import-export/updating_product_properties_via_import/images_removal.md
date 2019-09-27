---
lang: en
layout: article_with_sidebar
updated_at: '2019-09-26 11:31 +0400'
identifier: ref_3cGKQWTL
title: Removing Existing Product Images
order: 140
published: true
---
1.  Use the "Export in CSV" section of your store's back end (**Catalog** > **Export**) to export your existing products.
    ![xc5_import_exportproducts.png]({{site.baseurl}}/attachments/ref_OEpBdtQ6/xc5_import_exportproducts.png)
    
2.  Download the resulting export file and import it into your favorite spreadsheet editor.

3.  Edit the file removing the columns whose contents will not need to be updated. Care not to remove the required columns. According to the section {% link "CSV import: Products" ref_WmJBfwxA %} of this manual, the required columns for the import of products are **sku** and **name**; you will need to keep those columns. If you need to remove the images not just for simple products, but for product variants, you will also need to keep the column **variantSKU** - the values in this column are needed to identify the specific variants. As you are going to update the images of products/product variants, you should also keep the columns **images** (for simple products) and **variantImage** (for variants).

4.  For the products/product variants that need to have their images removed, replace the image URL/filepath with the word "NULL" (in capitalized case).

5.  Save the file and re-import it into your store via the "Import by CSV" section in your store's back end  (**Catalog** > **Import**). 

After the import process is completed, you should be able to see that the product or variant images for which you have specified the path as "NULL" have been removed.
## A New Post

Enter text in [Markdown](http://daringfireball.net/projects/markdown/). Use the toolbar above, or click the **?** button for formatting help.
