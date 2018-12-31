---
lang: en
layout: article_with_sidebar
updated_at: '2016-04-26 00:00'
identifier: ref_4s82Om1P
title: Setting up roles/permissions for POS system users
categories:
  - User manual
published: false
order: 100
---


Using X-Cart's POS system module typically involves the following tasks:

*   adding UPC codes for products that will be sold via POS (involves adding new products or editing existing products in the store's catalog);
*   printing barcode labels for product items that will be sold via POS;
*   creating and processing orders for visitors shopping at a POS location (involves adding items to cart by scanning the barcode labels, placing and processing the order and printing the receipt).

As an administrator with “Root access” permissions, you can handle all of the above listed tasks by yourself. However, if you are planning to delegate some or all of these tasks to a trusted employee, you will need to set up a separate user account for them and provide this account with permissions that will enable the user to perform the above named tasks.

In X-Cart 5, permissions are granted to users by assigning roles. The set of permissions required by a non-root admin user to perform POS-related tasks corresponds to the system role of "POS operator" which is created by default in the store's database when the module POS system for X-Cart is installed. The permissions provided by the role of POS operator are “Manage barcodes and receipts”, “Manage catalog” and “Manage orders”. The permission “Manage barcodes and receipts” allows the user to access such controls as the Print receipt button on the order invoice page, the "Barcode" tab on the product editing page, the "Print barcodes" action link in the "More actions" menu for multiple selected products, the "Checkout POS" link on the storefront and the form for adding products by UPC. The permissions “Manage catalog” and “Manage orders” are default permissions that are not specific to the POS system module, but are needed for the user to be able to access the pages on which POS-related tasks are performed (such as products list, product editing page and order invoice page).

The "POS operator" role can be assigned to your employee via their user profile:

![]({{site.baseurl}}/attachments/7504410/8719205.png)

If your store uses the module “User permissions”, you will be able to adjust the permission for the "POS operator" role manually:

![]({{site.baseurl}}/attachments/7504410/8719204.png) 

_Related pages:_

*   {% link "Getting started with POS system for X-Cart" ref_uuhJRDAr %}
