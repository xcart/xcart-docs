---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-11 11:02 +0400'
identifier: ref_5uEPaGnt
title: 'PIN Codes Addon: Installation and Setup'
order: 100
published: true
redirect_from:
  - /modules/pin_codes/setup.html
---
Before you start using PIN codes, you need to make sure the addon **PIN codes** is installed and {% link "enabled" ref_uEnDBBA7 %}.
![pin_codes_addon.png]({{site.baseurl}}/attachments/ref_5uEPaGnt/pin_codes_addon.png)

If the addon is not installed in your store, you can obtain it from the X-Cart App Store. See {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
 
Once the addon has been installed and enabled, you need to configure the addon settings.
![settings-2.png]({{site.baseurl}}/attachments/ref_5uEPaGnt/settings-2.png)

The following settings can be adjusted:

* **Show only ESD related fulfilment statuses**: If you sell only PIN codes or downloadable products and want to get rid of any fulfilment statuses that are used for tangible goods, but not for PIN codes/e-goods, enable this option. It will disable all the standard X-Cart order fulfilment statuses except for the following three: _New_, _Delivered_ and _Will Not Deliver_. If you wish you can rename the statuses as you require using the addon {% link "Custom order statuses" ref_7FIU2sxJ %}.

* **Approve before providing access**: Disable this option if you want the buyer of a PIN code to automatically get the code they have purchased as soon as they have paid for the order. Enable this option if you want all orders for PIN codes to be submitted to you for manual review first so you can approve or forbid access to the codes. (In the manual review mode, all PIN code orders will be created with the fulfilment status _Waiting for approve_; for the buyer to get the code, you will need to reset the order fulfilment status from _Waiting for approve_ to any other status, except for _Will not deliver_).
