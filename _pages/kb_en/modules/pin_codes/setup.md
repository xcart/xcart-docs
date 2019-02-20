---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-11 11:02 +0400'
identifier: ref_5uEPaGnt
title: 'PIN Codes module: Installation and Setup'
order: 100
published: true
---
To install the addon PIN Codes, follow the instructions from {% link "Activating and Deactivating Addons" ref_uEnDBBA7 %}.

Once enabled proceed to the addon settings page:
![settings-1.png]({{site.baseurl}}/attachments/ref_5uEPaGnt/settings-1.png)

You will see a screen like the following:
![settings-2.png]({{site.baseurl}}/attachments/ref_5uEPaGnt/settings-2.png)

Here you can enable the following options:
* **Show only ESD related fulfilment statuses**: If enabled there will be only 3 order fulfilment statuses available: New, Delivered and Will Not Deliver. You can rename them with {% link "Custom Order Statuses" ref_7FIU2sxJ %} module if necessary.
* **Approve before providing access**: If enabled, each new order with a PIN code will get a _Waiting for approve_ fulfilment status and a customer will get the code only when the fulfilment status for the order is changed to any different from _Will Not Deliver_. If disabled a customer will get the code right after the order is paid.
