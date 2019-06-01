---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-11 11:02 +0400'
identifier: ref_5uEPaGnt
title: 'PIN Codes Addon: Installation and Setup'
order: 100
published: true
---
To install the addon PIN Codes, follow the instructions from {% link "Activating and Deactivating Addons" ref_uEnDBBA7 %}.

Once the addon has been enabled, proceed to the addon settings page:
![settings-1.png]({{site.baseurl}}/attachments/ref_5uEPaGnt/settings-1.png)

You will see a screen like the following:
![settings-2.png]({{site.baseurl}}/attachments/ref_5uEPaGnt/settings-2.png)

The following settings can be adjusted:

* **Show only ESD related fulfilment statuses**: If enabled, there will be only 3 order fulfilment statuses available: _New_, _Delivered_ and _Will Not Deliver_. You can rename them using the addon {% link "Custom Order Statuses" ref_7FIU2sxJ %}, if necessary.

* **Approve before providing access**: If enabled, the initial fulfilment status for each new order with a PIN code will be set automatically to _Waiting for approve_, and the buyer will get the code only after the fulfilment status for the order has been changed to anything other than _Will Not Deliver_. If disabled, the buyer will get the code right after the order has been paid for.
