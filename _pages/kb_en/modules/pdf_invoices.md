---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-27 11:00 +0400'
identifier: ref_4pIx0x0g
title: PDF Invoices
order: 196
published: false
---
The [PDF Invoices module](https://market.x-cart.com/addons/PDF-Invoice.html "PDF Invoices") allows to issue invoices in .pdf format and attach such invoices to messages.

To install the module follow the giudes from {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

When installed proceed to the module settings page to configure it:

![installed.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/installed.png)

The "PDF Invoices module" settings are as follows:
![settings-page.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/settings-page.png)

* **Invoice file name pattern** : This field allows to rename the default .pdf invoice filename to any store specific one if required. Use _[orderNumber]_ pattern text to provide the order number position.
* **Send the invoice attachment in the mail** : If enabled a .pdf invoice file will be attached to every e-mail (both to admin and customer) that contains an order link.
* **Clear order email content when the invoice is attached** : If enabled, the text of an order confirmation e-mail won't contain any information about the order. All info about the order will be attached to the e-mail in a .pdf invoice.

**Submit** the settings to make them active.

When enabled and configured the module adds an **Open PDF invoice** button to the Invoice page a customer sees after placing an order:

![cus-invoice.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/cus-invoice.png)

A store admin also gets such a button on the Order details page in the store admin area:

![order-details.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/order-details.png)

Besides that the store admin can open .pdf invoice for an order or for several orders at a time using the bulk order editing feature on the order listing page (**Orders** -> **Order list**):

![order-list.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/order-list.png)

For this purpose the admin should choose the order(s) he needs a .pdf invoice for and click the **Open PDF invoices** button at the bottom of the listing page. Invoices for the chosen orders will be downloaded in .pdf format to the admin's computer where he can open and use them further.

