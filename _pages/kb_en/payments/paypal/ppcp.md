---
lang: en
layout: article_with_sidebar
updated_at: '2020-07-13 12:43 +0400'
identifier: ref_77eLHGNI
title: PayPal Commerce Platform
order: 100
published: false
version: X-Cart 5.4.1.x and higher
---
Starting with v5.4.1.x, X-Cart introduces a new PayPal integration called [PayPal Commerce Platform (PPCP)](https://www.paypal.com/us/business "PayPal Commerce Platform"). This is a first party type of integration of the PayPal API v2.

The new integration is called {% link "PayPal Checkout" ref_159XHNAD %} in X-Cart Admin area and supports the following features: 

* With one integration, merchants can accept dozens of payment methods, including PayPal, PayPal Credit, major Debit and Credit cards, and local payment methods such as iDEAL.
* Credit cards are accepted through hosted fields on X-Cart checkout, allowing merchants to be PSD2 compliant and reduce their PCI compliance burden.
* Payment button tech dynamically selects the best payment methods for each buyer.
* No matter which payment method the buyer selects, all payments are received into one source, allowing for easy withdrawal and consolidated reporting.
* PayPal badge in the storefront header (can be turned off).

PayPal Commerce Platform is a new PayPal payment solution that merges the functionality of the following former PayPal methods:
- PayPal Payments Standard
- PayPal Payments Advanced
- PayPal Payflow Link
- PayPal Express Checkout
- PayPal Credit
- PayPal Partner Hosted with PCI Compliance

To use the new PPCP integration a merchant must have a PayPal Business Account. It is also possible to use existing PayPal accounts in case they have first party credentials (API username, password, signature). PayPal allows migration to PPCP for existing merchants that use one of the old payment systems.  All they need to do for migration is click the same connect button as new merchants in PPCP payment method.

The PayPal Checkout addon can also be used to enable the Connect with PayPal feature for your X-Cart store.

* {% link "Connect  with PayPal" ref_1iufT1pq %}