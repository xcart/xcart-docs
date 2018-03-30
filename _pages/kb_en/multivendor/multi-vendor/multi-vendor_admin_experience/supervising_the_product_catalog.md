---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-15 18:17 +0400'
identifier: ref_0dPCIV3f
title: Supervising the product catalog
order: 300
published: true
---
The store administrator exercises the function of supervising the product catalog through which the vendors market their products. In connection with this function, the administrator can:

   * [Create catalog categories](#creating-catalog-categories);
   * [Control the use of product classes and attributes by vendors](#working-on-product-classes-and-attributes);
   * [Determine the owner of any product in the catalog](determining-the-owner-a-product);
   * [Sort the products by vendor in Product list view](sorting-the-products-by-vendor);
   * [Find the products of a specific vendor](finding-the-products-of-a-certain-vendor).

## Creating catalog categories
By default, vendor users in a multivendor X-Cart store do not have the permissions to create or manage the store's product categories. It means that the categories to which the vendors will add their products must be created by store administrator. The vendors will add their products to the existing categories; if the need arises for a new category, the vendors will have to contact the store administrator to request the change. The store administrator can create and manage categories via the Manage categories section of the store's Admin area (**Catalog** > **Categories**). 
Note that if necessary the store's primary administrator may choose to delegate the function of supervising the product catalog categories to any other administrator user (including vendor); to do so, they just need to give them an additional role for category management with the permission to manage the product catalog:
![xc5_mv_category_management.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_category_management.png)


## Working on product classes and attributes
The store administrator supervises the use of {% link "product classes and attributes" ref_T90ZcEpP %} by the vendors: 

   * Product classes and attributes are a complex topic in X-Cart that requires time to understand. So the store administrator may need to help new vendors with the initial setup of product classes, attributes and attribute values. The store administrator can themselves create any product classes, attributes and attribute values that the vendors may require (including any attributes at the global level, the level of product classes and the level of specific products) via the Classes & attributes section (**Catalog** > **Classes & attributes**) of the store's Admin area.
    
   * Vendors have access to the creation of their own product classes, attributes and attribute values. The store administrator should periodically check the Classes & attributes section (**Catalog** > **Classes & attributes**) to review the product classes, attributes and attribute values that the vendors have created and, if necessary, can edit or delete them. When displayed to the administrator, product classes and attributes created by vendors are marked with the name and email of the vendor who owns them ("Vendor: Vendor name [(vendor_email@example.com)](http://localhost/x-cart-5.2.8-en/admin.php?target=profile&profile_id=11)"), so the administrator can easily tell which product class or attribute is owned by whom.  
    
   * The store administrator can specify whether vendor users should be able to add their own values for global attributes and attributes created by the administrator or by the other vendors at the level of product classes, or whether they should just be able to use the existing values. To do so, they need to adjust the setting "Vendor access to global attributes" on the {% link "«Multi-vendor» addon settings page" ref_MRQEvicQ %}). 

    
## Determining the owner a product
When the same product catalog holds the products of more than one seller, the store administrator who exercises the function of supervising the catalog may require to be able to find the seller (vendor) who added a certain product (and thus is its owner). 

Finding the owner of a product is easy:

   * When viewing the store's product list in the Admin area, the administrator can see the owner of each product in the "Vendor" column:
![xc5_mv_product_owners.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_product_owners.png)
(This column shows the email address of the vendor who owns the product.)

   * When viewing the details pages of a vendor product in the Admin area, the administrator can see the name and email of the vendor who owns the product:
![xc5_mv_product_owner.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_product_owner.png)
    
    
## Sorting the products by vendor
The store administrator supervising the product catalog can sort the products in the product list (**Catalog** > **Products**) by vendor. To do so, they need to click on the Vendor header of the product list table:
![xc5_mv_sort_by_vendor.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_sort_by_vendor.png)

## Finding the products of a certain vendor
The store administrator supervising the product catalog can easily find the products of a specific vendor. To do so, they need to do a product search in the store's Admin area specifying the vendor in the search form. Once the initial characters of the vendor's company name or email address are entered into the Vendor field, a drop-down selector with matching vendors will be provided:
![xc5_mv_search_by_vendor.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_search_by_vendor.png)
