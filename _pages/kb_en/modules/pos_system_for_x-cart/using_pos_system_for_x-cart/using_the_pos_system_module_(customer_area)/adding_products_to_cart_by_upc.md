---
identifier: ref_f2VGke4W
updated_at: 2014-02-17 00:00
layout: article_with_sidebar
lang: en
title: 'Adding products to cart by UPC'
categories:
  - User manual

---


When a user acting as POS operator is logged in to their user account, a "Checkout POS" section is available to them in the store's Customer area: 

![]({{site.baseurl}}/attachments/7504446/7602275.png)

This section is displayed on all the pages with a vertical menu block on the left. The "Checkout POS" link provided in this section allows the POS operator to access the cart page with a special form  through which they can add products to the shopping cart by UPC.

The form for adding products by UPC appears at the top of the page - above the cart contents:

![]({{site.baseurl}}/attachments/7504446/7602276.png)

The default method for adding products to cart by UPC is with the help of a Barcode scanner. When the scanner "reads" the barcode into the POS system, the UPC code represented by this barcode is displayed in the **UPC** field, and the form is automatically submitted.

The form also allows the user to enter UPC codes manually. To switch to manual mode, the user should click the link "Manually" at the top of the form. In manual mode, the user must submit the form by hand using the **Submit** button provided next to the **UPC** field:

![]({{site.baseurl}}/attachments/7504446/7602277.png)

If the store's database contains a product with the UPC that was submitted, the product is added to cart; otherwise, an error message like the following is displayed:

![]({{site.baseurl}}/attachments/7504446/7602278.png)

_Related pages:_

*   {% link "Getting started with POS system for X-Cart" ref_uuhJRDAr %}
*   {% link "Using the POS system module (Admin area)" ref_9gJU76EN %}
*   {% link "Using the POS system module (Customer area)" ref_hV0rfAb6 %}