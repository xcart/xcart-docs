---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 16:28 +0400'
identifier: ref_TvmooKW9
title: Vendor Access to Product Classes and Attributes
categories:
  - User manual
published: true
order: 150
redirect_from:
  - >-
    /modules/multi-vendor/multi-vendor_vendor_experience/vendor_access_to_product_classes_and_attributes.html
---


With regard to product classes and attributes, vendors have the following capabilities:

*   can define product-specific attributes (attribute names) and attribute values for their own products;
*   can create product classes and add attributes for them;
*   can see product classes created by admin or other vendors;
*   can see attributes (attribute names) and attribute values created by admin or other vendors at the level of product classes + can assign these attributes and values to their own products (but cannot tell, whether a specific class or attribute is owned by admin or by another vendor); 
*   cannot add their own attributes (attribute names) for product classes created by admin or other vendors;
*   cannot edit the classes, attributes or attribute values defined by admin or other vendors;
*   cannot add attributes (attribute names) at the global level (This feature is accessible only to the administrator);
*   can see the attributes (attribute names) and attribute values created by admin at the global level + can assign these attributes and values to their own products (but cannot edit these attributes or their values).  

Depending on the way Multi-vendor was configured by the store administrator, vendors may or may not have access to adding their own values for global attributes and attributes created by admin or other vendors at the level of product classes. This depends on the setting **Vendor access to global attributes** on the Multi-vendor settings page: if this setting is set to "_Use existing and add new values_", vendors do not just use the existing attribute values, but can also add their own new values for the attributes defined by others; if this setting is set to "_Use existing values only_", vendors cannot add their own attribute values and only use the existing values.

Vendors can access the section for the management of product classes and attributes in one of the following ways:

*   via the **Attributes** tab of the product details view of a specific product:
    ![xc5_mv_vendor_product_attr_tab.png]({{site.baseurl}}/attachments/ref_TvmooKW9/xc5_mv_vendor_product_attr_tab.png)

*   via the **Classes & attributes** menu item in the **Catalog** menu:
    ![xc5_mv_vendor_classes_attr.png]({{site.baseurl}}/attachments/ref_TvmooKW9/xc5_mv_vendor_classes_attr.png)

More information on the management of product classes and attributes can be found in the {% link "Product Classes and Attributes" ref_T90ZcEpP %} section of this manual.

_Related pages:_

   *   {% link "Multi-vendor: Vendor Experience" ref_COgF04Tz %}
   *   {% link "Vendor Login and First Steps" ref_SZycMdTx %}
