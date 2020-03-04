---
lang: en
layout: article_with_sidebar
updated_at: '2020-02-28 12:11 +0400'
identifier: ref_6BpfsOWG
title: 'Sale: Usage with Multivendor'
order: 899
published: true
version: X-Cart 5.4.1.x
---
In a Multivendor X-Cart store with the addon [Sale](https://market.x-cart.com/addons/sale.html "Sale: Usage with Multivendor") installed and enabled, a vendor can manage a sale offer and assign it to their products if a special permission is set for the offer by a store administrator.

Basic usage of the Sale addon is described in the main {% link "Sale Addon" ref_7tBJ8Yqo %} manual, so here we will just go over the multivendor-related specifics.

## Sale : Vendor Experience

The Sale addon allows vendors to configure and maintain sale prices for the products they own, including products with variants and wholesale prices. Single product sale prices are managed on the product details page as described [here](https://kb.x-cart.com/modules/sale/new.html#setting-sale-price-for-single-products "Sale: Usage with Multivendor"). 

If permitted by a store administirator, a vendor in a Multivendor store can create sale offers for groups of products they own in the **Sale** section of the Vendor area (**Discounts** -> **Sale**). For more details on group dicounts creation see [Setting Sale Prices for Groups of Products](https://kb.x-cart.com/modules/sale/new.html#setting-sale-price-for-groups-of-products "Sale: Usage with Multivendor").
![541-vendor-sale.png]({{site.baseurl}}/attachments/ref_6BpfsOWG/541-vendor-sale.png)

The **Sale** section of the Vendor area also allows a vendor to view and manage special vendor-specific group discounts created by a store administrator. Vendors can view and manage only the sale offers that they own. In their personal Vendor area, they do not have access to the sale offers owned by other vendors or the store administrator. 

A vendor can view the active sale offers applied to their products (both vendor-specific, global (created by a store administrator and applied to products in the store globally) and single product sale offers) on the product listing page in the Vendor area:
![541-vedor-products.png]({{site.baseurl}}/attachments/ref_6BpfsOWG/541-vedor-products.png)

Links on the vendor-specific sale offers are clickable and forward to the sale offer details page for editing. 

## Sale : Multivendor Store Adminnistrator Experience

The store administrator can view and manage all sale offers via the **Sale** section (**Discounts** > **Sale**) of the Admin area:
![541-adm-sale-page.png]({{site.baseurl}}/attachments/ref_6BpfsOWG/541-adm-sale-page.png)

To permit vendors to create group discounts for the products they own a store administrator must enable the **Allow vendors to manage sale discounts for their own products** setting on the Sale addon settings page:
![541-settings-page-vendor.png]({{site.baseurl}}/attachments/ref_6BpfsOWG/541-settings-page-vendor.png)

The administrator can view, edit and delete sale offers created by the vendors.

If the administrator themselves is also a vendor, they can create and manage group discounts for their own products. Group discounts created by the administrator for their own (Administrator) profile are not visible to vendors and can be applied only to the products owned by the administrator. To create a group discount for their own profile, the administrator must specify that they themselves are the owner of the discount. This can be done using the **Vendor** field in the sale offer details.
![541-sale-details-vendor-admin.png]({{site.baseurl}}/attachments/ref_6BpfsOWG/541-sale-details-vendor-admin.png)

If necessary, the administrator can create group discounts on behalf of vendors. To create a group discount for a vendor, the administrator needs to specify this vendor as the owner of the discount using the **Vendor** field in the sale offer details:
![541-sale-offer-vendor-name.png]({{site.baseurl}}/attachments/ref_6BpfsOWG/541-sale-offer-vendor-name.png)

If the administrator wants to set a group discount not just for a single vendor, but for the entire store (global discount) - so the discount will apply to all the products regardless of the vendor, they must leave the **Vendor** field blank.
![541-sale-details-vendor-empty.png]({{site.baseurl}}/attachments/ref_6BpfsOWG/541-sale-details-vendor-empty.png)
