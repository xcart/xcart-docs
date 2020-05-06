---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-10 14:09 +0400'
identifier: ref_117NpIm9
title: 'Volume Discounts: Usage with Multivendor'
order: 1000
published: true
---
In a Multivendor X-Cart store with the addon {% link "Volume Discounts" ref_3JbpQrPF %} installed and enabled, both the store administrator and vendors can create and manage volume discounts.

## Volume Discounts: Vendor Experience
Vendors can create and manage volume discounts via the  section Volume discounts (**Discounts** > **Volume discounts**) of the Vendor area:
![541-discount-list-vendor-area.png]({{site.baseurl}}/attachments/ref_117NpIm9/541-discount-list-vendor-area.png)

Volume discounts created by a vendor are applied only to the products of that particular vendor.

Vendors can view and manage only the volume discounts that they own. In their personal Vendor area, they do not have access to volume discounts owned by other vendors. 

The discounts maintenance for vendors is almost the same as for the store administrators described in the {% link "Volume Discounts" ref_3JbpQrPF %} section of our Knowledge Base.

As of the time of writing this article, vendors also do not have an ability to see in their Vendor area volume discounts created by the store administrator for the store in general (the discounts configured to apply to "Any profile"; if configured, such discounts will apply to the products of any vendor in the store, but the vendors will not see them as discounts in the **Volume discounts** section).

## Volume Discounts: Multivendor Store Administrator Experience

The store administrator can view and manage coupons via the Volume discounts section (**Discounts** > **Volume discounts**) of the Admin area.
![541-multivendor-edition.png]({{site.baseurl}}/attachments/ref_117NpIm9/541-multivendor-edition.png)

The administrator can view, edit and delete volume discounts created by the vendors.

If the administrator themselves is also a vendor, they can create and manage volume discounts for their own products. Volume discounts created by the administrator for their own (Administrator) profile are not visible to vendors and can be applied only to the products owned by the administrator. 

To create a volume discount for their own profile, the administrator must specify that they themselves are the owner of the discount. This can be done using the "Vendor" field in the volume discount details.
![541-discount-details-admin.png]({{site.baseurl}}/attachments/ref_117NpIm9/541-discount-details-admin.png)

If necessary, the administrator can create volume discounts on behalf of vendors. To create a volume discount for a vendor, the administrator needs to specify this vendor as the owner of the discount using the "Vendor" field in the volume discount details:
![541-discount-details-vendor.png]({{site.baseurl}}/attachments/ref_117NpIm9/541-discount-details-vendor.png)

If the administrator wants to set a volume discount not just for a single vendor, but for the entire store - so the discount will apply to all the products regardless of the vendor, they must leave the "Vendor" field blank.
![541-discount-details-vendor-empty.png]({{site.baseurl}}/attachments/ref_117NpIm9/541-discount-details-vendor-empty.png)


_Related pages:_

   * {% link "Volume Discounts" ref_3JbpQrPF %}
   * {% link "Multivendor" ref_4ahg5FLK %} (X-Cart edition)
