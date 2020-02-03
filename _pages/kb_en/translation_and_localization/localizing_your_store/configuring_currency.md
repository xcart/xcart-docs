---
lang: en
layout: article_with_sidebar
updated_at: '2019-02-27 12:06 +0400'
identifier: ref_2dx6iFtL
title: Configuring Currency
order: 110
published: true
---
By default X-Cart supports two types of currencies - transactional currency and display currency.

Transactional (or default) currency is the currency in which the prices and all product-related costs in the store are set and kept in the database and in which all transactions are processed in X-Cart.  

Display currency is the currency in which prices are displayed to customers in the storefront. X-Cart can have different display currencies set up, provided the {% link "Multicurrency" ref_2tPJubPU %} addon is installed and enabled. Otherwise, all prices and product related costs are displayed in the default currency configured in the store.

To configure your store's default currency settings:

1.  Go to the **Currency** section of your store's Admin area (**Store setup** > **Localization**).
    ![540-default-currency.png]({{site.baseurl}}/attachments/ref_2dx6iFtL/540-default-currency.png)
    
2. Use the settings in this section to adjust the default currency parameters for your country:
   * **Hide trailing zeros in fractional part** : If this option is enabled, the zeros in the fractional part will be hidden for prices with decimals, e.g. a price of $1234.00 will be displayed as $1234; at the same time, a price of $1234.56 will be displayed as is - $1234.56.
   * **Store currency** : Select the currency you want to use in your store from the list.
   * **Format** : Set the appropriate format of the prices representation.
   * **Prefix** : The field is defined automatically based on the chosen **Store currency** field value.
   * **Suffix** : The field is defined automatically based on the chosen **Store currency** field value.
3. Click **Save changes** to submit the currency settings.

