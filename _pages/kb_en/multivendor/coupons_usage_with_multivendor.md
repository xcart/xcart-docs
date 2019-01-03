---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-10 14:20 +0400'
identifier: ref_2HGKKzgD
title: 'Coupons: Usage with Multivendor'
order: 900
published: true
redirect_from:
  - >-
    /multivendor/multi-vendor/multi-vendor_vendor_experience/adding_coupons_and_discounts_as_a_vendor.html
---
In a Multivendor X-Cart store with the addon {% link "Coupons" ref_3iTVKlYe %} installed and enabled, both the store administrator and vendors can create and manage discount coupons.

## Coupons: Vendor experience
Vendors can create and manage coupons via the Coupons section (**Discounts** > **Coupons**) of the Vendor area:
![mvcoupons_coupons_section_in_vendor.png]({{site.baseurl}}/attachments/ref_2HGKKzgD/mvcoupons_coupons_section_in_vendor.png)

Coupons created by a vendor are applied only to the products of that particular vendor.

Vendors can view and manage only the coupons that they own. In their personal Vendor area, they do not have access to any coupons owned by the other vendors or the store administrator.

## Coupons: Multivendor store administrator experience
The store administrator can view and manage coupons via the Coupons section (**Discounts** > **Coupons**) of the Admin area.
![mvcoupons_coupons_section_in_admin.png]({{site.baseurl}}/attachments/ref_2HGKKzgD/mvcoupons_coupons_section_in_admin.png)

The administrator can view, edit and delete coupons created by the vendors. 

If the administrator themselves is also a vendor, they can create and manage coupons for their own products. Administrator coupons are not visible to vendors and can be applied only to the products owned by the administrator. 

To create a coupon for themselves, the administrator must specify that they themselves are the owner of the coupon. This can be done using the Vendor field in the coupon details:
![mvcoupons_admin_coupon.png]({{site.baseurl}}/attachments/ref_2HGKKzgD/mvcoupons_admin_coupon.png)

If necessary, the administrator can create coupons on behalf of vendors. 

To create a coupon for a vendor, the administrator needs to specify this vendor as the owner of the coupon using the Vendor field in the coupon details:
![mvcoupons_vendor_coupon_created_by_admin.png]({{site.baseurl}}/attachments/ref_2HGKKzgD/mvcoupons_vendor_coupon_created_by_admin.png)

{% note info %}
In case a vendor name is not specified in the Vendor field in the coupon details the coupon will be applied globally to all products available in the store regardless of the product owner.
{% endnotes%}

_Related pages:_

   * {% link "Coupons" ref_SGI1FqdC %}
   * {% link "Multivendor" ref_4ahg5FLK %} (X-Cart edition)
