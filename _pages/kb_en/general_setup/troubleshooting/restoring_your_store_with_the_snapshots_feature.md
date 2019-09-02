---
lang: en
layout: article_with_sidebar
updated_at: '2017-07-07 12:24 +0400'
identifier: ref_h7Oh5T8T
title: Restoring Your Store with the Snapshots Feature
version: X-Cart 5.2.5 and later (below 5.4.0.0)
categories:
  - User manual
published: true
order: 130
redirect_from:
  - /general_setup/restoring_your_store_with_the_snapshots_feature.html
  - >-
    /general_setup/maintenance/restoring_your_store_with_the_snapshots_feature.html
---
{% note info %}
This article applies to X-Cart 5 versions below 5.4.0.0.
{% endnote %}

A great deal of your store's functionality will depend on the addons that you will {% link "install from the X-Cart App Store" ref_Vn1mMUw9 %} or {% link "deploy using the «Upload add-on» feature" ref_GZQ9vTq6 %}. Since addons may come from different sources and not always be tested for mutual compatibility, you should expect that at some point your store may experience problems or even stop working completely after you enable an addon that does not work well with the rest of your store's configuration. Some problems caused by adding a new addon or enabling a new feature may not manifest themselves until a bit later, so it may be difficult to say which one of the recent configuration changes prevents your store from operating correctly.

To pinpoint the "bad" addon, you may try {% link "running X-Cart in safe mode" ref_3zSHgdQk#recover-your-store-using-safe-mode %} (This mode helps you to disable your store's recently installed addons using a Soft reset or Hard reset link, after which you can re-enable the addons one by one doing the necessary testing to see which of the addons is causing the problem). There is, however, a feature that can work as an ultimate time saver for you in this case. That feature is "Snapshots" introduced in X-Cart version 5.2.5.

The "Snapshots" feature allows X-Cart to automatically take a snapshot of your X-Cart system every time the list of your store's active addons changes and write this information to **files/service/.modules.migrations.php**.

A typical snapshot looks something like the following:

```php
<?php
return array (
  '2015_06_22_10_50_27' => 
  array (
    'date' => '2015_06_22_10_50_27',
    'current' => 
    array (
      4 => 'CDev\\GoSocial',
      5 => 'CDev\\FedEx',
      7 => 'CDev\\GoogleAnalytics',
      8 => 'CDev\\SimpleCMS',
      10 => 'CDev\\Paypal',
      11 => 'CDev\\XPaymentsConnector',
      12 => 'CDev\\UserPermissions',
      13 => 'CDev\\VAT',
      14 => 'CDev\\TwoCheckout',
      16 => 'CDev\\SalesTax',
      17 => 'CDev\\Bestsellers',
      18 => 'CDev\\Egoods',
      19 => 'CDev\\Moneybookers',
      21 => 'CDev\\Sale',
      22 => 'CDev\\Test',
      23 => 'CDev\\Quantum',
      26 => 'CDev\\FileAttachments',
      27 => 'CDev\\AustraliaPost',
      28 => 'CDev\\ContactUs',
      30 => 'CDev\\DeTranslation',
      31 => 'CDev\\RuTranslation',
      32 => 'CDev\\SocialLogin',
      33 => 'CDev\\XMLSitemap',
      35 => 'CDev\\MarketPrice',
      36 => 'CDev\\AmazonS3Images',
      37 => 'CDev\\Coupons',
      38 => 'CDev\\ProductAdvisor',
      39 => 'CDev\\PINCodes',
      40 => 'CDev\\FrTranslation',
      41 => 'CDev\\VolumeDiscounts',
      42 => 'CDev\\AuthorizeNet',
      43 => 'CDev\\FeaturedProducts',
      45 => 'XC\\VirtualMerchant',
      46 => 'XC\\ColorSchemes',
      47 => 'XC\\EBSIndia',
      48 => 'XC\\WebmasterKit',
      49 => 'XC\\Webmoney',
      50 => 'XC\\FreeShipping',
      51 => 'XC\\NextPreviousProduct',
      52 => 'XC\\PayUIndia',
      53 => 'XC\\ProductComparison',
      54 => 'XC\\ProductVariants',
      55 => 'XC\\YandexMoney',
      56 => 'XC\\ESelectHPP',
      57 => 'XC\\SofortBanking',
      58 => 'XC\\CustomProductTabs',
      59 => 'XC\\ThemeTweaker',
      61 => 'XC\\IdealPayments',
      62 => 'XC\\Robokassa',
      63 => 'XC\\MultiVendor',
      64 => 'XC\\Development',
      67 => 'XC\\Sitemap',
      70 => 'XC\\NlTranslation',
      71 => 'XC\\GbTranslation',
      72 => 'XC\\Stripe',
      73 => 'XC\\Qiwi',
      75 => 'XC\\Upselling',
      76 => 'XC\\CustomerAttachments',
      77 => 'XC\\CanadaPost',
      78 => 'XC\\ProductFilter',
      79 => 'XC\\InternetSecure',
      80 => 'XC\\Reviews',
      81 => 'XC\\NetbanxHostedPayment',
      82 => 'XC\\RESTAPI',
      83 => 'XC\\TwoFactorAuthentication',
      84 => 'XC\\DisqusComments',
      85 => 'XC\\UPS',
      86 => 'XC\\Add2CartPopup',
      87 => 'XC\\MightyCallReact',
      88 => 'XC\\Olark',
      89 => 'XC\\EMS',
      90 => 'XC\\Akismet',
      91 => 'XC\\SagePay',
      92 => 'XC\\PoliPayment',
      94 => 'XC\\VKComments',
      95 => 'XC\\OgoneEcommerce',
      96 => 'XC\\EPDQ',
      97 => 'XC\\SimplifyCommerce',
      98 => 'XC\\Beanstream',
      326 => 'XC\\AuctionInc',
      341 => 'XC\\MultiCurrency',
      342 => 'CDev\\TinyMCE',
      343 => 'CDev\\Wholesale',
      344 => 'XC\\News',
      345 => 'CDev\\USPS',
    ),
    'enabled' => 
    array (
      69 => 'XC\\CustomSkin',
    ),
    'disabled' => 
    array (
      50 => 'XC\\FreeShipping',
    ),
    'deleted' => 
    array (
      0 => 'CDev\\GoSocial',
    ),
    'installed' => 
    array (
    ),
  ),
);
```

A separate snapshot is created for each change, so you may find that your file **files/service/.modules.migrations.php** already contains more than one snapshot.

By studying a snapshot for a specific change of your strore's configuration, you can get the following information:

*   **date**: Date of snapshot creation (date when the configuration change took place);
*   **current**: Addons that were active before the configuration change;
*   **enabled**: Addons that became active after the configuration change;
*   **disabled**: Addons that were deactivated after the configuration change;
*   **deleted**: Addons that were deleted;
*   **installed**: Addons that were installed.

The "Snapshots" feature not only helps you to keep track of any changes to your store's configuration allowing you to look up the events that might have caused your store's malfunction; it also allows you to revert to a particular snapshot bringing your system back to a certain state in the past. 

To revert to a particular snapshot, enter the following link in your web browser address bar:

`http://<shop_domain>/admin.php?target=main&safe_mode=1&access_key=<shop_key>&date=<restore_date>`

Be sure to replace `<shop_domain>` with the actual address of your store, `<shop_key>` with your Safe Mode access key  and `<restore_date>` with the date of the snapshot you wish to restore. The Safe Mode access key can be copied from the file var/data/.safeModeAccessKey in your X-Cart installation folder or from any of the two reset links that were sent to your site administrator mailbox after X-Cart installation. The message subject reads “Soft and Hard reset links for your store!“; for X-Cart versions 5.1.8 and earlier the subject was “New safe mode access key has been generated!“.

Reverting to a snapshot will cause your store to be re-deployed with an addon set matching the one reflected by the snapshot. Note that your store will not remove any addons that were installed after the date of the snapshot - all it will do is disable any such addons. Neither will it re-install any addons that were active when the snapshot was taken but were removed later on.

After a snapshot restoration, a new snapshot will be written to the snapshots file. The format of this snapshot should be similar to the following:

```php
'2015_06_22_10_56_56' => 
 array (
   'date' => '2015_06_22_10_56_56',
   'restoredTo' => '2015_06_22_10_50_27',
 ),
```

This new snapshot will provide the following information:

*   **date**: Date when the restoration took place.
*   **restoredTo**: Date of the snapshot to which the system was reverted.

Such a snapshot serves purely informational purpose and cannot be used for restoration.

_Related pages:_

*   {% link "What to Do if Your Store Says «We Are Deploying New Changes» and You Cannot Access It" ref_3zSHgdQk %}
