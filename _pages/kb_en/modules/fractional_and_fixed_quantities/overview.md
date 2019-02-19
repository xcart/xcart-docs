---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 15:33 +0400'
identifier: ref_FnFqOverview
title: 'Fractional and Fixed Quantities Addon: Overview'
order: 10
version: X-Cart 5.2.16 and earlier
keywords:
  - Fractional and fixed quantities
categories:
  - User manual
  - Module
published: true
---

## Admin interface

### Product details page

On the product details page, the addon provides some quantity related settings that can be used to adjust the following product properties:

   * **Length of fractional part of quantity**: The length of the fractional part of product quantity.
   * **Quantity units**: Custom product quantity units.
   * **Allowed quantities**: Allowed quantities for adding to cart.

   ![]({{site.baseurl}}/attachments/9666749/9634633.png)

### Order and invoice

When a product with custom-defined product quantity units is purchased, the order info and the order invoice in the store's back end show the product quantity with quantity units. For example, the screenshot below shows what it looks like on the General info tab of the order details: 

   ![]({{site.baseurl}}/attachments/9666749/9634626.png)

And here is the order invoice:

   ![]({{site.baseurl}}/attachments/9666749/9634627.png)

## Customer interface

### Product page

If decimal quantities have been allowed for a product by the seller, customers can specify the quantity they wish to purchase using numbers with a fractional part:

   ![]({{site.baseurl}}/attachments/9666749/9634630.png)

If the seller has set allowed quantities for adding some product to the shopping cart, on the page of that product on the storefront the **Qty** field is provided in the form of a selectbox from which customers can choose one of the allowed quantities:

   ![]({{site.baseurl}}/attachments/9666749/9634632.png)

If the product has custom quantity units defined, the quantity units can be selected from the selectbox on the right-hand side of the **Qty** field:

   ![]({{site.baseurl}}/attachments/9666749/9634634.png)

If the product has allowed quantities defined, and these allowed quantities are associated with specific quantity units, the selection can be performed using the combined selectbox with allowed quantities and quantity units:

   ![]({{site.baseurl}}/attachments/9666749/9634635.png)

The price is adjusted dynamically according to the product quantity and quantity units selected.

The addon {% link "Wholesale" ref_ttZa4qgu %} is supported with regard to decimal quantities. Also, minimum and maximum purchase quantities are adjusted if a customer switches from one type of quantity units to another.

### Cart page

On the cart page, product quantities are shown with product quantity units:

   ![]({{site.baseurl}}/attachments/9666749/9634629.png)

The product price is calculated and displayed based on what product units are being used.

### Checkout

If custom quantity units are defined, on the checkout page they are displayed next to the product quantities:

   ![]({{site.baseurl}}/attachments/9666749/9634636.png)

The product price is calculated and displayed based on the product units selected.

### Invoice

In the order invoice, product quantity units can also be seen next to the product quantities they define:

   ![]({{site.baseurl}}/attachments/9666749/9634628.png)

The product price in the invoice is shown according to what product units have been used.

_Related pages:_

*   {% link "Configuring the Addon 'Fractional and Fixed Quantities'" ref_FnFqConfig %}
*   {% link "Using the Addon 'Fractional and Fixed Quantities'" ref_FnFqUsage %}
