---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-13 14:03 +0400'
identifier: ref_3aEqWYoS
title: Installing and Configuring the TaxJar Sales Tax Automation Module
order: 130
published: true
---
To install the addon TaxJar, follow the general addon installation instructions from {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
![taxjar_addon.png]({{site.baseurl}}/attachments/ref_3aEqWYoS/taxjar_addon.png)

Once the addon has been installed and enabled, proceed to configure the addon settings:
![]({{site.baseurl}}/attachments/ref_3aEqWYoS/installed.png)

The following settings can be adjusted:
![settings.png]({{site.baseurl}}/attachments/ref_3aEqWYoS/settings.png)

* **API Token** : Copy and paste your [TaxJar API token](https://app.taxjar.com/account#api-access "Installing and Configuring the TaxJar Sales Tax Automation Addon") into X-Cart. 
* **Enable tax calculation** : Toggle this setting on if you need taxes to be calculated at checkout in accordance with the store nexus.
* **Enable tax reporting** : Toggle this setting on if you need the X-Cart order and refund transactions to be imported into TaxJar automatically. Orders are imported immediately after they have been paid for and delivered in a complete status (the order payment status is _Paid_ and the fulfillment status is _Shipped_ or _Delivered_).
* **Do not create order in case of tax calculation error** : Toggle this setting on to stop order creation in case if the tax calculation fails. (The setting is available only if **Enable tax calculation** is enabled.)
* **Automatically calculate taxes for** : Choose the states the auto taxes calculation will be available for (taxes will be calculated only for the shipping addresses that match the store nexus).
* **Debug mode** : Toggle this setting on to include debug information into the tax_jar log file.

Click **Submit** to make the settings active. 

When TaxJar is connected proceed to the **Store setup**-> **Taxes** section to configure the addon further. Here you can set up your nexus addresses in TaxJar:
![tax-tj.png]({{site.baseurl}}/attachments/ref_3aEqWYoS/tax-tj.png)

Click on the link [Manage your nexus addresses](https://app.taxjar.com/account/?utm_source=xcart-module#states). You will be redirected to TaxJar where you can add state with nexus your store taxes will be automatically calculated and reported for in your TaxJar account. 

Also you can assign TaxJar category tax codes to product tax classes to support product exemptions. For this purpose open the _Tax classes_ tab of the **Store setup** -> **Taxes** section, {% link "create your product tax classes" ref_pAWOdG8N %} (if they are not created as yet) and assign TaxJar category codes to your product tax classes:
![tax-classes-1.png]({{site.baseurl}}/attachments/ref_3aEqWYoS/tax-classes-1.png)
