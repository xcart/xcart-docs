---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 16:29 +0400'
identifier: ref_pa3oqbXz
title: Vendor Import/Export
categories:
  - User manual
published: true
order: 190
redirect_from:
  - >-
    /modules/multi-vendor/multi-vendor_vendor_experience/vendor_importexport.html
---
Vendors can use the Import by CSV section of the store's back end  (**Catalog** > **Import**) to add their new products and update their existing products.

![]({{site.baseurl}}/attachments/8749505/8717240.png)

They can also export their existing products to CSV via the Export in CSV section (**Catalog** > **Export**).

![]({{site.baseurl}}/attachments/8749505/8717242.png)

The process of product import and export for vendors is exactly the same as for the store administrator.

The only thing that makes product import and export different for a store with vendors compared to a store without vendors is that information about the product owner is included into the CSV file with product data. This is done using the column **vendor** which provides the email address of the vendor who created the product.

![]({{site.baseurl}}/attachments/8749505/8717239.png)

The **vendor** column is present in all product export CSV files, no matter whether they are created by the store administrator or by a vendor. However, a vendor can export only their own products, which means the export CSV file for them contains only their own products and their own vendor email address. 

Using the **vendor** column in the import CSV file is not mandatory: even if a vendor uploads a CSV file with vendor information omitted, the products being imported will still be identified as owned by this vendor.

_Related pages:_

   *   {% link "Multi-vendor: Vendor Experience" ref_COgF04Tz %}
   *   {% link "Vendor Login and First Steps" ref_SZycMdTx %}
