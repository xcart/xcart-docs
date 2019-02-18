---
lang: en
layout: article_with_sidebar
updated_at: '2016-11-15 09:44 +0400'
identifier: ref_GawMeTST
title: How AvaTax Sales Tax Automation Works
categories:
  - User manual
published: true
order: 100
---


 The two main functions provided by the AvaTax Sales Tax Automation module are address validation and sales tax calculation.

## Address validation

Address validation is provided both in the Customer and Admin areas of the online store. 

In the Customer area, address validation is performed:

*   in the Address book of a customer user profile - when an address is saved or updated:

![]({{site.baseurl}}/attachments/8749288/8717984.png)

*   on the checkout page - when a customer clicks the **Check address** button:

![]({{site.baseurl}}/attachments/8749288/8717983.png)

(If the customer chooses to place their order without clicking the** Check address** button first, their address is not validated.)

In the Admin area, address validation is performed only when the store administrator saves or updates an address in a customer's Address book:

![]({{site.baseurl}}/attachments/8749288/8717987.png)

For address validation, an address validation call is made to AvaTax. AvaTax performs validation of the address and returns results to the X-Cart store.

If the input address data can be resolved successfully, a normilized address is returned:

*   The original address is automatically corrected for spelling errors and inaccurate street names.
*   The postal code may be updated to provide more accuracy (For example, for addresses in the United States, a five-digit zip code may be replaced with a nine-digit code in the "Zip+4" format). 

If the address submitted to AvaTax for validation contains ambiguous data that cannot be resolved, an error is returned, and a message indicating the problem is displayed at the top of the page in X-Cart. For example, the screenshot below demonstrates a message resulting from an attempt to validate an erroneous street address:

![]({{site.baseurl}}/attachments/8749288/8717556.png)

## Sales tax calculation

Sales tax automation for orders at your X-Cart store falls back on Avalara's extensive database of taxability data for different taxing jurisdictions. X-Cart's AvaTax Sales Tax Automation addon allows your store to connect to Avalara's AvaTax engine to determine the taxing jurisdiction to which the sale transaction pertains based on the address data provided and have the appropriate product taxability rules applied to the products being purchased. 

The product taxability rules in AvaTax system are associated with specific products in your X-Cart store via tax codes. Depending on your AvaTax subscription plan, you may be able to use hundreds of thousands of pre-defined AvaTax system tax codes or define your own custom tax codes. 

When sales tax calculation needs to be performed, the addon passes on to AvaTax all the information it requires to do the calculation. AvaTax uses this information to determine the necessary taxing jurisdiction and select the taxing rules that need to be applied. The results of sales tax calculation for an order are provided directly on the checkout page before the order is placed:

![]({{site.baseurl}}/attachments/8749288/8717988.png)

_Related pages:_

*   {% link "AvaTax Sales Tax Automation Addon: System Requirements and Installation" ref_RGbuM3KA %}
*   {% link "Getting Started with AvaTax Sales Tax Automation" ref_I9wiGy4c %}
*   {% link "Configuring the AvaTax Sales Tax Automation Addon" ref_havNFG9i %}
*   {% link "Mapping Products to AvaTax Tax Codes" ref_SXNVD8TL %}
*   {% link "Managing Sales Tax Exemption for Customers (AvaTax Settings)" ref_9WS5DtDB %}
