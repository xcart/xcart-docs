---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 15:38 +0400'
identifier: ref_FnFqConfig
title: Configuring the Addon "Fractional and Fixed Quantities"
order: 30
version: X-Cart 5.2.16 and earlier
keywords:
  - Fractional and fixed quantities
categories:
  - User manual
  - Module
published: true
---

After the addon has been installed and enabled, it needs to be configured. The module configuration settings can be accessed via the Settings link below the product name on the Installed Modules list:

![]({{site.baseurl}}/attachments/9666738/9634072.png)

The "Fractional and Fixed quantities" addon settings page looks like the following:

![]({{site.baseurl}}/attachments/9666738/9634073.png)

For the time being, the only available setting is **Enhanced method compatibility mode**. This setting toggles the so-called enhanced payment method compatibility mode. With this mode enabled, the payment methods that are expected to pass on to the payment gateway information about the quantity of each product in the cart as a whole value will pass a single combined product with a price equalling the combined total of the prices of the products in the order and the quantity of 1\. With this mode disabled, such payment methods will become unavailable if the cart contains fractional product quantities.

Once you're done configuring the addon settings, be sure to click the **Submit** button to save the changes.

_Related pages:_

*   {% link "Using the addon 'Fractional and Fixed quantities'" ref_FnFqUsage %}
