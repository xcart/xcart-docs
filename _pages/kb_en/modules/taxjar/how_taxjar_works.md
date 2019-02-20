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

To increase the accuracy of tax calculations TaxJar performs an address validation while a customer updates the Shipping info of the order. 

For address validation, an address validation call is made to TaxJar. TaxJar performs validation of the address and returns results to the X-Cart store. If the input address data can not be resolved successfully, an error message is displayed so that the customer can correct the address info.

![invalid-zip-2.png]({{site.baseurl}}/attachments/ref_19ny5CB7/invalid-zip-2.png)

{% note info %}
A customer won't be able to place an order with an incorrectly defined address if the **Do not create order in case of tax calculation error** option is {% link "enabled" ref_3aEqWYoS %}
{% endnote %}

All order and refund transactions are then imported into TaxJar automatically and registered in the [Transactions](https://app.taxjar.com/transactions "How TaxJar Sales Tax Automation works") section. Orders are imported immediately after they’re paid and delivered in a complete status, i.e. the orders are in a “Paid” payment status and “Shipped” or “Delivered” fulfillment status. Pending orders that might be canceled aren’t imported into TaxJar. TaxJar forms periodical tax [reports in the Dashboard](https://app.taxjar.com/dashboard "How TaxJar Sales Tax Automation works") based on the imported order info.
