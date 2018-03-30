---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-15 18:17 +0400'
identifier: ref_0dPCIV3f
title: Supervising the product catalog
order: 300
published: false
---
## Creating catalog categories
By default, vendor users in a multivendor X-Cart store do not have the permissions to create or manage the store's product categories. It means that the categories to which the vendors will add their products must be created by store administrator. The vendors will add their products to the existing categories; if the need arises for a new category, the vendors will have to contact the store administrator to request the change. The store administrator can create and manage categories via the Manage categories section of the store's Admin area (**Catalog** > **Categories**). 
Note that if necessary the store's primary administrator may choose to delegate the function of supervising the product catalog categories to any other administrator user (including vendor); to do so, they just need to give them an additional role for category management with the permission to manage the product catalog:
![xc5_mv_category_management.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_category_management.png)


## Product classes and attributes
The store administrator has capabilities for the management of product classes and attributes. 
    They can:

    *   create product classes for vendors to use or let vendors create their own product classes;
    *   edit and delete product classes created by vendors;
    *   create attributes and attribute values for vendors to use (including attributes at the level of specific products, product classes and the global level);
    *   edit and delete attributes and attribute values created by vendors;
    *   determine whether vendors should be able to add their own values for global attributes and attributes created by admin or other vendors at the level of product classes, or whether they should just be able to use the existing values (See the setting "Vendor access to global attributes" on the {% link "«Multi-vendor» addon settings page" ref_MRQEvicQ %}). When displayed to the administrator, product classes and attributes created by vendors are marked with the name and email of the vendor who owns them ("Vendor: Vendor name [(vendor_email@example.com)](http://localhost/x-cart-5.2.8-en/admin.php?target=profile&profile_id=11)"), so the administrator can easily tell which product class or attribute is owned by whom.  
    
## Determining the ownership of a product

When viewing the store's product list in the Admin area, the administrator can find out which product is owned by which vendor based on the information in the "Vendor" column. For each product created by a vendor, this column shows the email address of the vendor user who is the owner of the product.
![xc5_mv_product_owners.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_product_owners.png)


The name and email of the vendor are also visible to the store administrator on the details pages of vendor products in the Admin area:
![xc5_mv_product_owner.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_product_owner.png)
    
    
## Finding the products of a certain vendor
Sort
![xc5_mv_sort_by_vendor.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_sort_by_vendor.png)
![xc5_mv_product_owners1.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_product_owners1.png)

Search
![xc5_mv_search_by_vendor.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_search_by_vendor.png)


