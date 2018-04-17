---
lang: ru
layout: article_with_sidebar
updated_at: '2018-04-17 15:21 +0400'
identifier: ref_6220Kq81
title: Миграция магазина на платформу X-Cart
order: 120
published: false
---
![migration.jpg]({{site.baseurl}}/attachments/ref_otTGssNZ/migration.jpg)

## Лицензия на использование X-Cart и уcтановка магазина

1. [Выберите подходящую версию X-Cart и приобретите лицензию](https://www.x-cart.ru/ceny.html "Миграция магазина на платформу X-Cart"), если это платная версия. [Скачайте](https://www.x-cart.ru/download.html) файл установки. 

2. Если вы уже приобрели сервер, проверьте, отвечает ли он {% link "системным требованиям X-Cart" ref_ZlmtdzS3#системные-требования %}. Если нет, воспользуйтесь [хостингом X-Cart](https://www.x-cart.ru/hosting.html "Миграция магазина на платформу X-Cart"), специально оптимизированным под платформу, или [сервисом партнёров](https://market.x-cart.com/experts-and-services/hosters/ "Миграция магазина на платформу X-Cart").

3. Когда хостинг готов, {% link "приступайте к установке магазина" ref_ZlmtdzS 3%}

4. После завершения установки откроется форма регистрации лицензии. {% link "Активируйте" ref_eqZRcCns#активация-базовой-лицензии-x-cart %} бесплатную версию или {% link "зарегистрируйте" ref_eqZRcCns#активация-платной-лицензии-x-cart-business-multivendor-или-ultimate %} платную лицензию.

## Перенос данных на платформу X-Cart 

Самый простой способ  - воспользоваться сервисом переноса данных [Cart2Cart](https://www.shopping-cart-migration.com/ "Миграция магазина на платформу X-Cart"). Партнёр X-Cart гарантирует бесперебойный перенос данных с существующего магазина в новый магазин X-Cart. Также, понадобится специальный модуль переноса данных.

1. В панели администратора X-Cart откройте страницу **Мои модули** и перейдите по ссылке  **Установить из Маркетплейса**. Сделайте поиск по слову _migrate_. 

2. Найдите модуль для текущей платформы магазина. Доступны модули для _Magento, WooCommerce, PrestaShop, Shopify, OsCommerce, BigCommerce, Interspire, ZenCart_. Полный список можно увидеть в [Маркетплейсе](https://market.x-cart.com/addons/migration/?substring=migrate&filter[edition]=all&filter[priceType]=all&filter[sortBy]=p.arrivalDate). 

3.   Зарегистрируйтесь или авторизуйтесь в Cart2Cart и установите модуль переноса данных.

4.   Укажите FTP логин и пароль к текущему магазину для загрузки соединительного моста.

5.   Cart2Cart загрузит соеинительный мост в X-Cart автоматически.

6.   Откроется сайт Cart2Cart, где необходимо выбрать данные для переноса.

7.   Отключите бесплатную демо версию и запустите полный перенос данных.


## Проверка товаров после переноса данных

Если вы использовали модуль миграции для переноса товаров в X-Cart, необходимо проверить товары после переноса.

1. {% link "Проверьте наличие информации о товарах" ref_REno3u9g %} - описаний, изображений, вариантов, мета описаний - в зависимости от структуры предыдущей платформы.

2.   {% link "Configure the taxes" ref_kJmd7K27 %} you require for your products or automate tax calculation via [Avatax Sales Tax calculation service](http://www.x-cart.com/extensions/addons/avatax-sales-tax-automation.html) by Avalara.

3.   Make sure the products are arranged in categories correctly and are easy to find (Admin back-end –> Catalog –> Categories).

4.   {% link "Add Featured products" ref_4iFdpTdv %} on the home page and/or category pages.

5.   If your products have options and variants, use the {% link "product classes and attributes feature" ref_T90ZcEpP %} to set them up. You may need them if your products have such parameters as color, size, material, country of origin, ISBN, technical specifications, etc.

6.   {% link "Optimize the store catalog pages for SEO" ref_OBh3V1k1 %}: define meta elements of your product and category pages - such as the page title, meta description and meta keywords; {% link "set up seo-friendly URLs" ref_nJxrzFEZ %}.


## Step 4: Configure the storefront

We love beautiful stores as much as you do. That’s why we offer a number of tools that help you to personalize your X-Cart store easily:

1.   {% link "Change X-Cart logo and favicon" ref_2VXSZhKE %} to your company’s ones. {% link "Change the default Welcome text and banner on the Front page" ref_Id69E4GT %} to the ones of your own. {% link "Change the theme" ref_GLqVdpgd %} if you like.  Add links to certain pages to the Primary or Footer menus on the storefront {% link "as explained here" ref_BDykFBbw %}.

2.   You may also choose to modify the text labels, say, rename the button “add to cart” to “add to bag”, as is explained by {% link "this instruction" ref_IyGxQ1DN %}. 

3.   {% link "Specify your company identity and contact information" ref_HcSs9eFL %}. Enable the {% link "Contact Us form" ref_hfZXkxzT %}. Edit the text on the Contact Us page {% link "as described here" ref_CsqC5DNX %}.To tell your customers about your company or to explain your store’s shipping and return policy, {% link "add static pages to your store" ref_Ptf5vaPn %}. To modify the dummy  “terms and conditions” text of ours, follow {% link "this instruction" ref_r5b4EKhF %}.

4.   {% link "Configure your store’s General look and feel settings" ref_qAZlJxZm %} like product sorting within a category, minimal image width, number of products per category listing page, etc. Define the {% link "localization" ref_cc4sCpa5 %} parameters like weight unit, time zone and weight format.

5. You may also {% link "switch the store language in Admin area" ref_x5oSN86B %} or {% link "add a custom translation to the storefront" ref_NH3w8sSS %}. 


## Step 5: Configure your Shipping and Payment methods

Intangible goods (software programs, documents, online cards and the like) do not require shipping, so if you sell such products, you need to {% link "disable shipping calculation for them" ref_z5KmbFAu %}. For the rest of your products you have a number of tools to estimate the shipping cost properly.

1.   First of all, X-Cart supports carrier-calculated shipping rates for the following carriers: FedEx, U.S.P.S., UPS, Canada Post, AustraliaPost, DHL, Pitney Bowes, EMS, ShippingCalc. {% link "Read how to enable this" ref_ybdiN8r0 %}.

2.   If you prefer custom table rates, {% link "follow this instruction" ref_3TG6AuN0 %}.

3.   It is also possible to set up an individual shipping cost per product using the {% link "Shipping freight" ref_kioKBJIM %} feature. To charge a handling fee, {% link "follow these steps" ref_nFJTxPMR %}. {% link "Free shipping" ref_rOT8GezP %} is also easy to enable.

Once the shipping settings have been configured, make sure you can accept payments from your customers.

1.   {% link "Enable at least one payment method" ref_Jq6Bsdrt %} and place a test order.

2.   To enable PCI compliant credit card saving and processing, {% link "connect your store to X-Payments" ref_NaZh0d1b %}.

3.   Specify the email addresses to receive {% link "notifications about new orders" ref_wKcxbiUf %}.

After the above steps have been completed, we recommend that you make several test orders. Try the entire customer’s journey from finding a product and adding it to cart (you can create a test product which costs $0.01 for the purpose) to making a payment and updating {% link "order statuses" ref_r4PbRx4Z %}.

Find more info in the [X-Cart user guide](http://kb.x-cart.com/), or [contact us](https://www.x-cart.com/migrate_me.html) for help.

If the migration process scares you a bit, and you do not feel confident in your strength, we will be happy to do the whole data migration for you, just [let us know](https://www.x-cart.com/migrate_me.html)!
