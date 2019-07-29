---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-17 18:51 +0400'
identifier: ref_19ny5CB7
title: How TaxJar Sales Tax Automation Works
order: 100
published: true
---
Sales tax automation for orders at your X-Cart store falls back on TaxJar’s extensive database of taxability data for different taxing jurisdictions (also known as nexus). X-Cart’s TaxJar Sales Tax Automation addon allows your store to connect to TaxJar engine to determine the nexus to which the sale transaction pertains based on the address data provided and have the appropriate product taxability rules applied to the order. 

When sales tax calculation needs to be performed, the addon passes on to TaxJar all the information it requires to do the calculation. TaxJar uses this information to determine the nexus and select the taxing rules that need to be applied. The results of sales tax calculation for an order are provided directly on the checkout page before the order is placed:

![checkout.png]({{site.baseurl}}/attachments/ref_19ny5CB7/checkout.png)

To increase the accuracy of tax calculations, TaxJar performs an address validation while a customer updates the Shipping info of the order. 

For address validation, an address validation call is made to TaxJar. TaxJar performs validation of the address and returns the results to the X-Cart store. If the input address data cannot be resolved successfully, an error message is displayed so the customer can correct the address info.

![invalid-zip-2.png]({{site.baseurl}}/attachments/ref_19ny5CB7/invalid-zip-2.png)

{% note info %}
A customer will not be able to place an order with an address defined incorrectly if the **Do not create order in case of tax calculation error** option is {% link "enabled" ref_3aEqWYoS %}
{% endnote %}

All order and refund transactions are then imported into TaxJar automatically and registered in the [Transactions](https://app.taxjar.com/transactions "How TaxJar Sales Tax Automation works") section. Orders are imported immediately after they have been paid for and delivered in a complete status (the payment status is _Paid_ and the fulfillment status is _Shipped_ or _Delivered_). Pending orders that may still be canceled are not imported into TaxJar. TaxJar forms periodic tax [reports in the Dashboard](https://app.taxjar.com/dashboard "How TaxJar Sales Tax Automation works") based on the order info that has been imported.
