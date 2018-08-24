---
lang: ru
layout: article_with_sidebar
updated_at: '2018-08-24 15:36 +0400'
identifier: ref_3iMuKmmv
title: Установка и настройка модуля Google Analytics
order: 100
published: false
---
Активируйте модуль по {% link "инструкциям" ref_gpeZtm28 %}.

Перейдите по ссылке **Настройки** рядом с названием модуля.

![installed.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/installed.png)

Настройки модуля:

![settings.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/settings.png)

* **Web Property ID**: Код отслеживания, который вы получили при регистрации в Google Аналитике. Идентификатор указывается в настройках модуля в магазине, чтобы система Google Аналитика получала данные о посещении сайта магазина.
  
  Где найти идентификатор отслеживания:
  1. Авторизуйтесь в системе [Google Аналитика](https://analytics.google.com "Установка и настройка модуля Google Analytics") через Google аккаунт, с которым связан аккаунт Google Аналитики.
  2. Нажмите на ссылку Google Аналитике, откроется список аккаунтов.
  3. Нажмите на название аккаунта, появится строка с названием сайта, где указан идентификатор отслеживания.
     
    ![id.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/id.png)
      
   Как создать идентификатор отслеживания:
   1. Зарегистрируйтесь в [Google Аналитике](https://analytics.google.com "Установка и настройка модуля Google Analytics") через свой Google аккаунт.
   2. Заполните настройки нового аккаунта и нажмите **Получить идентификатор отслеживания**
      <div class="ui stackable three column grid">
       <div class="column" markdown="span">![new-1.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/new-1.png)</div>
       <div class="column" markdown="span">![new-2.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/new-2.png)</div>
      </div>
    3. Подтвердите Принятие Условий использования Google Аналитикие и условий в отношении обработки данных в соответствии с требованиями Генерального регламента ЕС о защите персональных данных (GDPR).
    4. Аккаунт создан. На открывшейся странице вы найдёте идентификатор отслеживания.
    
    ![property-id.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/property-id.png)

* **What are you tracking** : Choose between _single domain_ / _one domain with multiple subdomains_ / _multiple top level domains_ depending on your preferences. 
* **Google Analytics code version** : A preset value is [Universal Analytics](https://support.google.com/analytics/answer/3450662?hl=en "Installing and Configuring  Google Analytics Module"). Also, it's possible to set the value to Traditional.
* **Enable eCommerce Google Analytics** : Enable/Disable submitting ecommerce data to Google Analytics
* **Register purchase only on Paid status change** : When enabled, order data is sent to Google Analytics when an order becomes ‘Paid’. When disabled, X-Cart sends order when an invoice page shows up to a customer regardless of the order status.
* **Debug mode** : Enable to check all actions submitted to Google Analytics in a browser JS console.

**Submit** changes when the module configuration is complete. Google Analytics will collect staistics based on the settings you specified.
