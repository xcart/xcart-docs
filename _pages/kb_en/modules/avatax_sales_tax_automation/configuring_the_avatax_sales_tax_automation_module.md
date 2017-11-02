---
lang: en
layout: article_with_sidebar
updated_at: '2016-11-15 09:54 +0400'
identifier: ref_havNFG9i
title: Configuring the AvaTax Sales Tax Automation module
categories:
  - User manual
published: true
order: 400
---


After the module has been {% link "installed and enabled" ref_RGbuM3KA %}, it needs to be configured.

To configure the module:

1.  In the Installed Modules section of your X-Cart store’s Admin area, locate the entry for the AvaTax Sales Tax Automation module and click the **Settings **link below it:
    ![]({{site.baseurl}}/attachments/8749239/8717991.png)
    The "AvaTax Sales Tax Automation" module settings page opens.
    ![]({{site.baseurl}}/attachments/8749239/8717393.png)
2.  Provide your authentication information in the _Account settings_ section:

    *   **Account number**: Enter the account number that was provided to you via the AvaTax Admin Console. This is a ten-digit number (e.g. 1100012345) which is used to authenticate your API call.
    *   **License Key**: Enter the license key that was provided to you via the AvaTax Admin Console. This is a 13-character string (e.g. 1A2BC3D4E5F6G7).
    *   **Company code**: Enter the company code that was declared during the company setup in the AvaTax Admin Console. 
3.  Adjust the rest of the fields on the page:
    _Tax Calculation settings_
    *   **Enable tax calculation**: Use this setting to enable/disable the use of Avalara's tax calculation services for your store.
    *   **Commit on Order**: When this setting is enabled, your store sends a request to AvaTax to commit the sales invoice (i.e. to record the invoice in AvaTax for reporting) as soon as the buyer completes creating their order. When this setting is disabled, at the time of order placement  the sales invoice is saved on the Admin Console but not committed.  It is recommended to keep the "Commit on order" option enabled if you know that according to you store's business processes the AvaTax invoice document will no longer need to be changed once the order has been placed. If you know there may be changes, it is better to disable this option so the document remains uncommitted until the transaction is finilized; then you will need to commit the document manually. Please note that while the "Commit on order" option is disabled, Avalara charges you for every request that your store sends to AvaTax related to a change in an uncommitted order. 

    *   **Do not create order in case of tax calculation error**: Enable this setting to prevent creation of orders without proper tax calculation by AvaTax. With this setting enabled, a buyer will not be allowed to submit their order unless tax calculation has been successfully completed for it. Tax calculation may fail, for example, if the address entered by a customer at checkout is ambiguous to the point where AvaTax cannot resolve the address information and complete tax calculation for it. In this case the Place order button will be disabled so the buyer will need to correct the address before they are allowed to follow through with the checkout. Note, however, that a customer's address does not have to be 100% accurate for sales tax calculation. While a fully validated street address is always better and more accurate, in most cases AvaTax will be able to calculate sales tax properly if, at a minimum, city, state and zip code are provided (and at least 2/3 are valid)._Address verification settings_
    *   **Enable address verification**: Use this setting to enable/disable the use of Avalara's address verification service for your store._Advanced settings_
    *   **Development mode**: If you have a development account, you can enable this option to test the integration. For testing, be sure to use your development account number and license key in the 'Account number' and 'License Key' fields above. Note that in development mode tax calls will be made to [https://development.avalara.net](https://development.avalara.net/) - as opposed to the production mode, where the URL [https://avatax.avalara.net](https://avatax.avalara.net/) is used.
    *   **Debug mode**: Enable this setting if you want debug info to be logged (Logs can be found in the var/log directory).
4.  Click **Submit** to save the settings and verify the account information entered in the Account settings section (Account number, License key and Company code). Your X-Cart store will connect to AvaTax using the account information provided; if the information is incorrect, an error will be displayed ("Cannot connect to AvaTax server. Make sure the Account number, License key and Company code have been entered correctly").

_Related pages:_

*   {% link "How AvaTax Sales Tax Automation works" ref_GawMeTST %}
*   {% link "Getting started with AvaTax Sales Tax Automation" ref_I9wiGy4c %}
*   {% link "Mapping products to AvaTax tax codes" ref_SXNVD8TL %}
*   {% link "Managing sales tax exemption for customers (AvaTax settings)" ref_9WS5DtDB %}
