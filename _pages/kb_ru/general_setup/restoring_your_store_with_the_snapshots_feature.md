---
lang: ru
layout: article_with_sidebar
updated_at: '2017-10-23 22:27 +0400'
identifier: ref_PTtxOzz4
title: Восстановление магазина с помощью мгновенного сохранения данных
order: 60
published: true
---


Функциональность магазина во многом зависит от модулей, которые вы {% link "устанавливаете из X-Cart Маркеиплейса" ref_gpeZtm28 %} или {% link "загружаете вручную" ref_zVq2VDyZ %}. Т.к. модули поступают из разных источников и не тестируются на взаимную совместимость, следует быть готовыми к тому, что магазин может перестать работать по причине несовместимости какого-нибудь нового модуля с конфигурацией магазина. Такие проблемы могут не проявляться сразу, поэтому, сложно сказать, какие именно изменения конфигурации магазина вызывают сбой.

Чтобы установить проблемный модуль, можно запустить магазин в {% link "безопасном режиме" ref_uLSlTTpi#section-3 %}. Защитный режим позволяет отключить недавно установленные модули посредством ссылок полного и частичного восстановления, после чего можно снова включать модули один за другим и проверять, который из них вызывает проблемы. Но есть инструмент, позволяющий решить проблему намного быстрее. Это функция "Мгновенное сохранение данных".

Данный инструмент автоматически сохраняет систему каждый раз, когда изменяется набор активных модулей, и записывает сохраненные данные в файл **files/service/.modules.migrations.php**.

Пример сохраненного магазина:


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


Новый снапшот создается при каждом изменении системы, поэтому, скорее всего, в файле **files/service/.modules.migrations.php** вы найдете несколько снапшотов. 

Изучив снапшот на предмет изменений конфигурации магазина, можно получить следующую информацию:

*   **дата:** дата сохранения данных (дата изменения в конфигурации)
*   **текущие модули:** список модулей, активированных до изменения конфигурации
*   **активные модули:** модули, включенные после изменения конфигурации
*   **неактивные модули:** модули, отключенные после изменения конфигурации
*   **удаленные модули:** модули, которые были удалены
*   **установленные модули:** модули, которые были установлены


Мгновенное сохранение данных позволяет не только отслеживать любые изменения и устанавливать, какие из них приводят к сбою, но и использовать сохраненные данные для восстановления магазина в состоянии на определенный момент в прошлом. 

Определенный снапшот можно открыть по следующей ссылке:

`http://<shop_domain>/admin.php?target=main&safe_mode=1&access_key=<shop_key>&date=<restore_date>`

Замените `<shop_domain>` на веб-адрес магазина, `<shop_key>` - своим ключом безопасного режима и `<restore_date>`  - датой снапшота, который нужно восстановить. Ключ безопасного режима можно найти в файле `var/data/.safeModeAccessKey` в директории установки магазина или в любой из ссылок восстановления, которые предоставляются администратору магазина по завершении установки магазина. Название сообщения "Ссылки частичного и полного восстановления магазина!".

Восстановление снапшота перезапустит магазин с набором модулей, активных на дату создания снапшота. При этом, модули, установленные после создания снапшота, не будут удалены, они будут просто отключены, а модули, удаленные после создания снапшота, не будут вновь установлены.  

После восстановления одного снапшота в файле хранения данных появится новый снапшот следующего формата: 

```php
'2015_06_22_10_56_56' => 
 array (
   'date' => '2015_06_22_10_56_56',
   'restoredTo' => '2015_06_22_10_50_27',
 ),
```

Новый снапшот предоставит следующую информацию:

*   **дата**: дата восстановления данных.
*   **возврат к**: дата снапшота, к которому вернулась система.

Такой снапшот носит информативный характер и не используется для восстановления. 

_Дополнительная информация:_

*  {% link "Что делать, если вместо магазина открывается страница с надписью "We are deploying new changes" " ref_uLSlTTpi %}
