---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-27 11:00 +0400'
identifier: ref_4pIx0x0g
title: PDF Invoices
order: 196
published: true
---
The addon [PDF Invoices](https://market.x-cart.com/addons/PDF-Invoice.html "PDF Invoices") allows you to issue invoices in .pdf format and attach such invoices to messages.

To install the addon, follow the instructions from {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
![pdf_invoice_addon.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/pdf_invoice_addon.png)

Once the addon has been installed, proceed to the addon settings page to configure it.

The PDF Invoices addon settings are as follows:
![settings-page.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/settings-page.png)

* **Invoice file name pattern** : This field allows to rename the default .pdf invoice filename to any store specific one if required. Use _[orderNumber]_ pattern text to provide the order number position.
* **Send the invoice attachment in the mail** : If enabled a .pdf invoice file will be attached to every email (to both admin and customer) that contains an order link.
* **Clear order email content when the invoice is attached** : If enabled, the text of an order confirmation email won't contain any information about the order. All info about the order will be attached to the email in a .pdf invoice.
  

**Submit** the settings to make them active.

Once enabled and configured, the addon adds the button **Open PDF invoice** to the order confirmation page a customer sees after placing an order and to the order details page that a customer can view in his account in the **Orders** section:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Order confirmation page</i>![cus-invoice.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/cus-invoice.png)</div>
  <div class="column" markdown="span"><i>Order details page</i>![cus-order-details.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/cus-order-details.png)</div>
</div>

A store admin also gets such a button on the order details page in the store admin area:

![order-details.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/order-details.png)

Besides that the store admin can open a .pdf invoice for an order or for several orders at a time using the bulk order editing feature on the order listing page (**Orders** -> **Order list**):

![order-list.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/order-list.png)

For this purpose the admin should choose the order(s) he needs a .pdf invoice for and click the **Open PDF invoices** button at the bottom of the listing page. Invoices for the chosen orders will be downloaded in .pdf format to the admin's computer where it will be possible to open and use them further.

Both the store admin and the customer get a .pdf invoice attached to the order confirmation email if the **Send the invoice attachment in the mail** option is enabled:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Admin notification</i>![order-created-notification.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/order-created-notification.png)</div>
  <div class="column" markdown="span"><i>Customer notification</i>![invoice-attached.png]({{site.baseurl}}/attachments/ref_4pIx0x0g/invoice-attached.png)</div>
</div>

In case the **Clear order email content when the invoice is attached** option is enabled a customer will get a default **Order created** email notification with a .pdf invoice attached to it (the one you see on the sample above). The text of the default **Order created** notification you can edit in the **Email notifications** section (**Store setup** -> **Email notificaitons**) as described in {% link "Email notifications: Setup and Maintenance" ref_5QLrLCu7 %}.
