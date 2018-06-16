---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-15 17:29 +0400'
identifier: ref_6sRMggED
title: Установка модуля и подключение к сервису рассылок MailChimp
order: 100
published: false
---
## Установка модуля 

[https://market.x-cart.com/addons/mailchimp-integration-with-e-commerce.html](https://market.x-cart.com/addons/mailchimp-integration-with-e-commerce.html "Установка модуля и подключение к сервису рассылок MailChimp") - бесплатный модуль. Он установлен и активирован по умолчанию. Найдите модуль и ссылку на его настройки в разделе **Мои модули**.

Чтобы подключить магазин к сервису **MailChimp**, активируйте модуль.

Для настройки рассылок понадобится и стандартный модуль рассылок **Newsletter subscriptions**.

Модуль **Newsletter subscriptions** отвечает за блок **Подписаться на новости**, где покупатели подписываются на новостную рассылку магазина.

Если активbрован только модуль **Newsletter subscriptions**, адреса, введённые в этой форме, вносятся в списки подписчиков в разделе **Каналы продаж / Рассылка** в панели управления магазина.

Если активирован и модуль **MailChimp**, списки подписчиков больше не сохраняются в панели управления магазина. Управление списками и группами подписчиков происходит в учётной записи **MailChimp**.

Если на момент подключения к **MailChimp** в магазине уже существовал список подписчиков, сформированный модулем **Newsletter subscriptions**, он не будет автоматически перенесён в **MailChimp**. Экспортируйте готовые списки из магазина и [https://mailchimp.com/help/import-subscribers-to-a-list/](https://mailchimp.com/help/import-subscribers-to-a-list/ "Установка модуля и подключение к сервису рассылок MailChimp"). 

## Подключение магазина к сервису MailChimp

### Регистрация в **MailChimp**

Для подключения магазина к сервису **MailChimp** откройте настройки модуля по ссылке в разделе магазина **Мои модули** и учётную запись **MailChimp** на соседних вкладках браузера. Так выгладит страница настроек модуля до подключения к сервису. Если у вас уже есть учётная запись **MailChimp**, переходите к настройкам ниже, если нет - [https://login.mailchimp.com/signup/](https://login.mailchimp.com/signup/ "Установка модуля и подключение к сервису рассылок MailChimp"). 

### Подключение магазина к **MailChimp**

- В учётной записи **MailChimp** настройте [https://mailchimp.com/help/about-api-keys/](https://mailchimp.com/help/about-api-keys/ "Установка модуля и подключение к сервису рассылок MailChimp"), необходимый для связи с X-Cart.

- 1 способ
В настройках модуля в магазине нажмите Подключить аккаунт М, авторизуйтесь в М  

Step 1. Go to the “MailChimp Integration with Ecommerce support” addon settings page in your X-Cart store’s Admin area. You can do so by selecting the Settings link for the addon “MailChimp Integration with Ecommerce support” in your store’s Installed Addons section.
![xc5_mailchimp_settings_link.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_settings_link.png)

Before you have connected the integration to your MailChimp account, the addon settings page provides a form for connecting:
![xc5_mailchimp_connecting.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connecting.png)

Step 2. Use one of the following methods to connect to MailChimp:

   * Method 1
       Step 1. Click on the link “Connect with your MailChimp account”. 
       ![xc5_mailchimp_connecting1.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connecting1.png)

       Step 2. On the MailChimp authorization page, enter your MailChimp login and password and click **Log In**.
       ![xc5_mailchimp_connect2account.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connect2account.png)

       Provided that the authorization goes successfully, your X-Cart MailChimp integration will be connected to your MailChimp account.
            
   * Method 2
       Step 1. In your MailChimp account, copy the API key you have set up for your X-Cart store.
       Step 2. On the MailChimp Integration addon settings page in your X-Cart store, paste the API key into the field that says “Enter your MailChimp API key manually” and press Enter.
       ![xc5_mailchimp_connecting2.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connecting2.png)

       Provided that a valid API key has been used, your X-Cart MailChimp integration will be connected to your MailChimp account.

Regardless of the connection method that has been used, after a successful connection you will be able to see the “MailChimp Integration with E-commerce support” module settings page with your MailChimp API key showing in the field of the same name:
![xc5_mailchimp_successfully_authenticated.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_successfully_authenticated.png)

Should you need to change the MailChimp account or the API key used for the connection, you will be able to do so at any time using the “Reset MailChimp connection” link provided next to the MailChimp API key field (See [Disconnect Integration](#disconnect-integration) for more info).

Once your integration has been connected to your MailChimp account, you should configure it. For example, you will be able to toggle the E-commerce analytics and Abandoned carts features, choose how your customers should be able to subscribe to your MailChimp lists (whether a customer should be able to choose more than one list when subscribing, whether an additional confirmation should be required after a customer opts in to subscribe, etc.) For more info, see {% link "Configuring the addon 'MailChimp Integration with E-commerce support'" ref_ST1QnErC %}

If you've already had some lists and list groups configured in your MailChimp account before connecting your X-Cart store to MailChimp, you should expect to find these lists and groups imported into your X-Cart store as soon as the connection between the store and your MailChimp account has been established. To view and manage the lists imported from your account, go to the **Sales channels** > **MailChimp lists** page. At the least, you will need to visit this page and make sure that the lists to which you would like your store users to be able to subscribe are active for your store. For more info on managing lists in X-Cart, see {% link "Managing your MailChimp lists" ref_dHGZpSCX %}. If you haven't yet created any lists on the MailChimp end and need more information on this topic, see the MailChimp Knowledge Base [article on Lists](https://kb.mailchimp.com/lists). 

As soon as your lists/groups are ready, your store's users will be able to subscribe to them via the subscription form on the checkout and registration pages. Registered customers will be able to change their subscriptions (add more lists/groups or unsubscribe completely) via the Account details page. You as the store administrator will also be able to edit the subscription preferences of your store users by editing the profiles of these users via your X-Cart store's Admin area. 

After setting up your lists in MailChimp, you will be able to create and send [Campaigns](http://kb.mailchimp.com/campaigns).

To make the most of MailChimp's e-commerce features, be sure to enable e-commerce link tracking when configuring your campaigns or automations to track purchases. 
To turn on e-commerce link tracking for a campaign, follow these steps:

   1.  Navigate to the Setup step of the Campaign Builder.
   2.  In the Tracking section, check the box next to E-commerce link tracking. 
   
This way you will be able to track individual visitors of your website attracted by your MailChimp campaigns, capture customers purchasing activity, and pass it all back to MailChimp. You will be able to view purchase details, conversions, and total sales on the Reports page in your MailChimp account. 

Note that MailChimp mailing lists support segmentation based on your subscribers' purchase activity: Orders amount (Biggest Spenders/Tiny spenders), Frequency of ordering (Frequent Buyers/We Miss You), Series of purchasing (after a specific product purchase). Based on your customers' purchasing activity, MailChimp will recommend products to your newsletter recipients. Every recipient will see a set of products that are more likely to be interesting particularly to them.

With the advanced Email Automation capabilities of MailChimp, you will be able to set emails or series of emails to be sent to your customers right away as soon as they take particular actions in your store, i.e. just subscribed, abandoned cart, made a first purchase, bought any/specific product, bought product from some category.

## Disconnect Integration
Should you need to disconnect your X-Cart MailChimp integration from the currently used MailChimp account and to connect it to some other MailChimp account, or to connect it to the same MailChimp account using a different API key, use the “Reset MailChimp connection” feature:

   Step 1. You will need the username and password for the MailChimp account to which you will be connecting your MailChimp integration, so make sure you have them at the ready. You will also require an API key that your MailChimp integration will use to access that account on your behalf, so make sure an API key has been generated as per the instructions in the MailChimp knowledge base article [About API keys](http://kb.mailchimp.com/integrations/api-integrations/about-api-keys).

   Step 2. On the MailChimp Integration addon settings page in your X-Cart store, click on the “Reset MailChimp connection” link to the right of the MailChimp API key field.
![xc5_mailchimp_reset_connection.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_reset_connection.png)

   Step 3. On the page that opens, enter the username and password for the MailChimp account to which the integration needs to be connected and choose to log in.
![xc5_mailchimp_connect2account.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connect2account.png)

   Once you have been successfully authenticated, the integration will be disconnected from the current MailChimp account and connected to the account that has been specified.

If you wish to stop using X-Cart’s MailChimp integration, you can either deactivate or uninstall the addon in your X-Cart store. Deactivation stops the addon from operation, but it does not remove the settings you made to the addon configuration nor clear any data that was generated or collected during the period that the addon was in operation. If you wish to completely remove all the data related to using the addon, you need to uninstall it.

To deactivate or uninstall the MailChimp integration addon:

   Step 1. Log in to your X-Cart store’s Admin area.
   
   Step 2. Click the **My addons** menu item on the Admin menu to access your store’s Installed Addons section. 

   Step 3. In the list of your installed addons, find the one named  “MailChimp Integration with Ecommerce support” and choose the desired action:
To deactivate the addon, set the ON/OFF switch to the “OFF” position.
To uninstall the addon, click on the Trash icon.

   Step 4. Click **Save changes**.
   
Your X-Cart installation will take a few moments to deactivate / uninstall the addon and re-deploy your store. 

Once the process has been completed, MailChimp will no longer be used to handle newsletter subscriptions for your store.

_Related pages:_

* {% link "Configuring the addon 'MailChimp Integration with E-commerce support'" ref_ST1QnErC %}
