---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-13 14:03 +0400'
identifier: ref_3aEqWYoS
title: Installing and Configuring the TaxJar Sales Tax Automation Module
order: 100
published: false
---
To install the TaxJar module follow the general instructions from {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

Once installed and enabled proceed to the module settings page:

![]({{site.baseurl}}/attachments/ref_3aEqWYoS/installed.png)

You'll see a screen of the kind:

![settings.png]({{site.baseurl}}/attachments/ref_3aEqWYoS/settings.png)

Here you need to configure the following settings:

* **API Token** : Copy and paste your [TaxJar API token](https://app.taxjar.com/account#api-access "Installing and Configuring the TaxJar Sales Tax Automation Module") into X-Cart. 
* **Enable tax calculation** : Toggle this setting on if you need taxes to be calculated at checkout in accordance with the address specified by a customer.
* **Enable tax reporting** : Toggle this setting on if you need the X-Cart order and refund transactions to be imported into TaxJar automatically. Orders are imported immediately after they’re paid and delivered in a complete status, i.e. the orders are in a “Paid” payment status and “Shipped” or “Delivered” fulfillment status.
* **Do not create order in case of tax calculation error** : Toggle this setting on to stop order creation in case of the tax calculation fails. (The setting is available only if **Enable tax calculation** is enabled.)
* **Automatically calculate taxes for** : Choose the states the automatical taxes calculation will be available for.

Click **Submit** to make the settings active. 

When TaxJar is connected proceed to the **Store steup**-> **Taxes section** to configure the module further. Here you can set up your nexus addresses in TaxJar:

![manage-nexus.png]({{site.baseurl}}/attachments/ref_3aEqWYoS/manage-nexus.png)

Click the [_Manage your nexus adderess_](https://app.taxjar.com/account/?utm_source=xcart-module#states "Installing and Configuring the TaxJar Sales Tax Automation Module") link to be redirected to TaxJar where you can add state with nexus for that your store taxes will be automatically calculated and reported in your TaxJar account. 

Also you can assign TaxJar category tax codes to product tax classes to support product exemptions. For this purpose open the _Tax classes_ tab of the **Store setup** -> **Taxes** section, {% link "create your product tax classes" ref_pAWOdG8N %} (if they are not created as yet) and assign TaxJar category codes to your product tax classes:

![tax-classes.png]({{site.baseurl}}/attachments/ref_3aEqWYoS/tax-classes.png)
