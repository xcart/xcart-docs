---
lang: en
layout: article_with_sidebar
updated_at: '2017-04-15 09:20 +0400'
identifier: ref_fxTL6F2z
title: 'Multi-vendor: Customer Experience'
categories:
  - User manual
published: true
order: 300
redirect_from:
  - /modules/multi-vendor/multi-vendor_customer_experience.html
---
In a multi-vendor X-Cart 5 store, the storefront provides a **Vendors** menu from which store visitors can access the profile and products of specific vendors:

![xc5_mv_vendor_list_in_sidebar.png]({{site.baseurl}}/attachments/ref_fxTL6F2z/xc5_mv_vendor_list_in_sidebar.png)

Note that the **Vendors** menu appears on the storefront only if the store administrator has chosen to make this menu available in the sidebar of the store site. 

By clicking on the vendor company name link on the **Vendors** menu, a store visitor goes to the vendor's profile page and enters a browsing mode in which they can view the products of just this one vendor. The vendor's profile information displayed on the page includes the vendor's company name, image, description and location. It also provides a list of categories in which the vendor has products and allows the store visitor to browse through the products of the vendor:

![xc5_mv_vendor_page_in_customer.png]({{site.baseurl}}/attachments/ref_fxTL6F2z/xc5_mv_vendor_page_in_customer.png)

Note how the categories list shown on the page is limited just to the categories where the current vendor has products:
![xc5_mv_vendor_categories.png]({{site.baseurl}}/attachments/ref_fxTL6F2z/xc5_mv_vendor_categories.png)

If a store visitor chooses to view some category from the vendor profile page, they will only be shown the products of this specific vendor. 

The details pages of specific products also provide some information about the vendor. This includes the vendor's company name (with a link to the vendor profile page) and location:

![xc5_mv_vendor_product.png]({{site.baseurl}}/attachments/ref_fxTL6F2z/xc5_mv_vendor_product.png)

When a product owned by a vendor is added to the shopping cart, the vendor's company name appears on the cart page. If the cart contains products of more than one vendors, the products on the shopping cart page are automatically sorted by vendor:

![xc5_mv_vendor_name_in_cart.png]({{site.baseurl}}/attachments/ref_fxTL6F2z/xc5_mv_vendor_name_in_cart.png)

In the "Warehouse" multivendor mode, the list of shipping methods available for the order is formed by the store administrator; the buyer has to choose a single shipping method for the entire order. In the "Vendors as separate shops" mode, each vendor has their own list of shipping methods; the buyer has to choose a shipping method for each of the vendors whose products are in the shopping cart:

![xc5_mv_vendor_shipping_methods.png]({{site.baseurl}}/attachments/ref_fxTL6F2z/xc5_mv_vendor_shipping_methods.png)

In the "Warehouse" multivendor mode, the buyer gets a single order invoice. In the "Vendors as separate shops" mode, a separate order is formed for each of the vendors whose products are in the order; the buyer gets a separate order invoice for each of the orders.

_Related pages:_

*   {% link "Multi-vendor: Admin Experience" ref_6kbIUy5R %}
