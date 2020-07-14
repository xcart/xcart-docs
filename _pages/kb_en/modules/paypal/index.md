---
lang: en
layout: article_with_sidebar
updated_at: '2020-07-13 14:43 +0400'
identifier: ref_159XHNAD
title: PayPal Checkout
order: 194
published: true
version: X-Cart 5.4.1.x and higher
---
The PayPal Checkout addon integrates a new [PayPal Commerce Platform (PPCP)](https://www.paypal.com/us/business "PayPal Commerce Platform") into X-Cart based on first party type of PayPal API v2. 

The new PPCP integration merges the functionality of the following former PayPal systems into one single payment processor called PayPal Checkout in X-Cart:
- PayPal Payments Standard
- PayPal Payments Advanced
- PayPal Payflow Link
- PayPal Express Checkout
- PayPal Credit
- PayPal Partner Hosted with PCI Compliance

The new PPCP inetgration allows merchants to accept dozens of payment methods, including PayPal, PayPal Credit, major Debit and Credit cards, and local payment methods such as iDEAL. Credit cards are accepted through hosted fields on X-Cart checkout, allowing merchants to be PSD2 compliant and reduce their PCI compliance burden. A best suitable payment method for each buyer is selected dynamically by a special payment button tech. No matter which payment method the buyer selects, all payments are received into one source, allowing for easy withdrawal and consolidated reporting.

To use the new PPCP integration a merchant must have a PayPal Business Account. It is also possible to use existing PayPal accounts in case they have first party credentials (API username, password, signature). All the existing merchants need to do for migration is click the same connect button as new merchants in PPCP payment method.

The old API v1 PayPal integration is available for the users of X-Cart 5.4.0.x and earlier via the {% link "PayPal Addon" ref_0mnK3aMh %}.

The PayPal Checkout addon also allows separate usage of the old API v1 PayPal integrations like:
- {% link "PayPal Partner Hosted with PCI Compliance" ref_0gaUolue %}
- {% link "Paypal Payflow Link" ref_5tBeUaTL %}
- {% link "Paypal Payments Advanced" ref_sO5X6iBT %}
- {% link "Paypal Payments Standard" ref_6fTEi1Bv %}

These old PayPal solutions can NOT be used simultaneously with PayPal Commerce Platform (PayPal Checkout payment method) in X-Cart.

The PayPal Checkout addon can also be used to enable the Connect with PayPal feature for your X-Cart store.

* {% link "PayPal Checkout" ref_159XHNAD %}
