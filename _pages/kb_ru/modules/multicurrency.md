---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-13 14:34 +0400'
identifier: ref_1EpoZue8
title: Многовалютность (Multicurrency)
order: 280
published: false
---
Если магазин предлагает товары покупателям за пределами Российской Федерации, модуль [Многовалютность (Multicurrency)](https://market.x-cart.com/addons/multicurrency-for-xcart5.html "Многовалютность (Multicurrency)") необходим: покупатели из других стран быстрее принимают решение о покупке, когда видят цены товаров в валюте своей страны.

{% note info %}
Для работы модуля **Многовалютность (Multicurrency)** требуется модуль **Geolocation**, подключающий бесплатную базу данных геопозиционирования IP-адресов **GeoLite2 Country** от **MaxMind**. Модуль определяет местонахождение посетителя магазина по IP адресу. Администратор может загрузить другую базу в настройках модуля **Geolocation**.

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![geolocation.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation.png)</div>
  <div class="column" markdown="span">![geolocation-settings.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation-settings.png)</div>
</div>
{% endnote %}

В X-Cart Бизнес, X-Cart Мультивендор и X-Cart Всё включено модуль доступен для установке в Маркетплейме. В X-Cart Базовый установить модуль нельзя, чтобы настроить несколько валют в магазине, следует приобрести лицензию на X-Cart Бизнес, X-Cart Мультивендор или X-Cart Всё включено и установить модуль из Маркетплейса.

Once installed the Multicurrency module will become available in the **Store setup** -> **Localization** section of your store admin area.

![currencies.png]({{site.baseurl}}/attachments/ref_2tPJubPU/currencies.png)

Please, refer to the **Currencies** tab to configure the module settings that are as follows:

* **Hide trailing zeros in fractional part** : If enabled a price will be displayed without decimals
* **Online currency rates service** : Choose a currency converter or set to NONE to define the conversion rates manually
* **Update online rates every** : Set a periodicity of the rates revision
* **Add currency** (button and drop-down): Choose a currency you want to add in a drop-down and click the 'Add currency' button

Each currency comes with a pre-set list of countries it's applicable to. If you want you can add/remove countries to/from the list by clicking the 'Countries' field. Each country can be assigned to one currency only.

{% note info %}
If you change the default store currency don't forget to update the rates using the 'Update Rates' button for the prices to be displayed correctly.
{% endnote %}

When installed and configured the module in action will look as follows in the store front-end:

![customer.png]({{site.baseurl}}/attachments/ref_2tPJubPU/customer.png)

A customer will see the currency and the language of the country his IP belongs to. A language switch will be available only if {% link "translations" ref_1frAlu26 %} are enabled in the store. If there are no particular currency and translation defined for the customers location the store content will be displayed in the default currency and language.

{% note warning %}
The currency that will be used for orders processing will depend on the payment gateway you are using. Some payments allow orders processing only in the default store currency. Others allow to accept payments in more than one currency. Please, check with your payment processing company for details.
{% endnote %}
