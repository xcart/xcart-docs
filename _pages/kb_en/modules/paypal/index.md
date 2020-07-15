---
lang: en
layout: article_with_sidebar
updated_at: '2020-07-13 14:43 +0400'
identifier: ref_159XHNAD
title: PayPal
order: 194
published: true
---
The PayPal addon allows X-Cart users to accept payments via PayPal payment systems. The addon includes integrations of both API v1 and API v2 solutions, the latter being more modern and robust.

PayPal Checkout is the latest integratoin of [PayPal Commerce Platform (PPCP)](https://www.paypal.com/us/business "PayPal Commerce Platform") based on PayPal API v2 of a first party type.

The new PPCP system merges the functionality of the following former PayPal payments into one single payment processor called PayPal Checkout in X-Cart:
- PayPal Payments Standard
- PayPal Payments Advanced
- PayPal Payflow Link
- PayPal Express Checkout
- PayPal Credit
- PayPal Partner Hosted with PCI Compliance

The new PPCP integration allows merchants to accept dozens of payment methods, including PayPal, PayPal Credit, major Debit and Credit cards, and local payment methods. Credit cards are accepted through hosted fields on X-Cart checkout, allowing merchants to be PSD2 compliant and reduce their PCI compliance burden. A best suitable payment method for each buyer is selected dynamically by a special payment button tech. No matter which payment method the buyer selects, all payments are received into one source, allowing for easy withdrawal and consolidated reporting.

To use the new PPCP integration a merchant must have a PayPal Business Account. It is also possible to use existing PayPal accounts in case they have first party credentials (API username, password, signature). All the existing merchants need to do for migration is click the same connect button as new merchants in PPCP payment method.

*  {% link "Setting Up PayPal Checkout" ref_3V7VJOs2 %}

For the users of X-Cart 5.4.1.x and higher, the PayPal addon also allows separate usage of the old PayPal API v1 integrations like:
- {% link "PayPal Partner Hosted with PCI Compliance" ref_0gaUolue %}
- {% link "Paypal Payflow Link" ref_5tBeUaTL %}
- {% link "Paypal Payments Advanced" ref_sO5X6iBT %}
- {% link "Paypal Payments Standard" ref_6fTEi1Bv %}
- {% link "PayPal for Marketplaces" ref_5E37F92M %}

These old PayPal solutions can NOT be used simultaneously with PayPal Commerce Platform (PayPal Checkout payment method) in X-Cart.

All old PayPal API v1 integrations are available for the users of X-Cart 5.4.0.x and earlier. See the list {% link "here" ref_0mnK3aMh %}. 

The PayPal addon can also be used to enable the Connect with PayPal feature for your X-Cart store.

* {% link "PayPal Checkout" ref_159XHNAD %}
