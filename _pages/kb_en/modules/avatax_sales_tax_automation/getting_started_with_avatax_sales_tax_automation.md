---
lang: en
layout: article_with_sidebar
updated_at: '2016-11-15 10:02 +0400'
identifier: ref_I9wiGy4c
title: Getting started with AvaTax Sales Tax Automation
categories:
  - User manual
published: true
order: 200
---


To enable AvaTax Sales Tax Automation at your X-Cart store, follow these steps:

1.  Get an account with [Avalara](http://avlr.co/1EPeUtq) and activate it: log in to the Admin Console at [https://admin-development.avalara.net](https://admin-development.avalara.net) (for Development Accounts) or [https://admin-avatax.avalara.net](https://admin-avatax.avalara.net) (for Production Accounts) using your user id and password. After successful account activation you will be provided with your account number and license key. Be sure to record them for future use: the account number and license key are needed for API access, and you will need to enter them on the "AvaTax Sales Tax Automation" module settings page in your X-Cart store.

2.  In the AvaTax Admin Console, configure your company settings and tax profile.

    You can get started by clicking 'Get Started' on the navigation bar when the 'Home' tab is selected. Detailed information on configuring your Avalara account can be found in the [Avalara Help Center](https://help.avalara.com/). Avalara self learning course for the Admin Console can be found at [http://www.avalara.com/avauniversity/avalarauniversity](http://www.avalara.com/avauniversity/avalarauniversity).

    1.  Specify your company details (This includes setting a "Company Code" for your X-Cart store - you will need to enter it on the "AvaTax Sales Tax Automation" module settings page in X-Cart).
    2.  Select Nexus Jurisdictions (where your company needs to calculate sales and use tax due to "substantial physical presence" in a taxing jurisdiction).
    3.  Create tax codes and specify distinctive tax rules as needed for your store. For example, if certain products at your store need to be listed as non-taxable, or if you need to have specific rates for different products, this needs to be configured in your Avalara account. Note that Avalara provides hundreds of pre-defined tax codes (AvaTax System Tax Codes) and thousands of pre-configured related tax rules for AvaTax Pro subscribers. Instead of creating custom tax codes and tax rules, AvaTax Pro subscribers can take advantage of these tax codes and rules.

3.  Enable AvaTax Sales Tax Automation in your X-Cart store:
    1.  Make sure the AvaTax Sales Tax Automation module is installed and enabled (See {% link "AvaTax Sales Tax Automation module: system requirements and installation" ref_RGbuM3KA %}).
    2.  Configure the module (See {% link "Configuring the AvaTax Sales Tax Automation module" ref_havNFG9i %}).
    3.  Map the products in your store's catalog to specific AvaTax tax codes (See {% link "Mapping products to AvaTax tax codes" ref_SXNVD8TL %}).

_Related pages:_

*   {% link "AvaTax Sales Tax Automation module: system requirements and installation" ref_RGbuM3KA %}
*   {% link "Configuring the AvaTax Sales Tax Automation module" ref_havNFG9i %}
*   {% link "Mapping products to AvaTax tax codes" ref_SXNVD8TL %}
*   {% link "Managing sales tax exemption for customers (AvaTax settings)" ref_9WS5DtDB %}
