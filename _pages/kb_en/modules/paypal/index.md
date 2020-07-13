---
lang: en
layout: article_with_sidebar
updated_at: '2020-07-13 14:43 +0400'
identifier: ref_159XHNAD
title: PayPal Checkout
order: 194
published: false
version: X-Cart 5.4.1.x and higher
---
The PayPal Checkout addon integrates a new [PayPal Commerce Platform (PPCP)](https://www.paypal.com/us/business "PayPal Commerce Platform") into X-Cart based on first party type of PayPal API v2.

The new integration allows merchants to accept dozens of payment methods, including PayPal, PayPal Credit, major Debit and Credit cards, and local payment methods such as iDEAL. Credit cards are accepted through hosted fields on X-Cart checkout, allowing merchants to be PSD2 compliant and reduce their PCI compliance burden. A best suitable payment method for each buyer is selected dynamically by a special payment button tech. No matter which payment method the buyer selects, all payments are received into one source, allowing for easy withdrawal and consolidated reporting.

To use the new PPCP integration a merchant must have a PayPal Business Account. It is also possible to use existing PayPal accounts in case they have first party credentials (API username, password, signature). All the existing merchants need to do for migration is click the same connect button as new merchants in PPCP payment method.

The old (API v1 based) integration is available for the users of X-Cart 5.4.0.x and earlier via the PayPal addon.