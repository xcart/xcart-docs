---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-18 13:51 +0400'
identifier: ref_781Rx48T
title: Настройка модуля MailChimp Integration with E-commerce support
order: 330
published: false
---
## Настройка модуля

Найдите модуль по названию **MailChimp** в разделе **Мои модули** и перейдите на страницу настроек.

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![1.jpg]({{site.baseurl}}/attachments/ref_781Rx48T/1.jpg)
</div>
  <div class="column" markdown="span">![2.jpg]({{site.baseurl}}/attachments/ref_781Rx48T/2.jpg)
</div>
</div>
   
   * **API ключ MailChimp**  - В этом поле хранится API ключ, созданный в панели управления **MailChimp** для подключения к магазину. Чтобы сменить учётную запись **MailChimp** или API ключ, заведите новый логин **MailChimp** или создайте в существующей учётной записи новый API ключ и нажмите **Переподключить аккаунт MailChimp** в настройках модуля в магазине.
   
   * **Включить аналитику Ecommerce** - Настройка включена по умолчанию, и лучше её не отключать. **MailChimp** будет собирать [аналитические данные по магазину](https://mailchimp.com/help/sell-more-stuff-with-mailchimp/ "Настройка модуля MailChimp Integration with E-commerce support"). 
   
 Когда эта настройка включена, на странице настройки модуля доступна вкладка **Настройка опций e-Commerce**. Также, необходимо включить опцию [E-Commerce Link Tracking](https://mailchimp.com/help/sell-more-stuff-with-mailchimp/ "Настройка модуля MailChimp Integration with E-commerce support") в настройках рассылок в панели управления **MailChimp**. 
 
  
   **Important:** Be sure also to enable [E-Commerce Link Tracking](http://kb.mailchimp.com/integrations/e-commerce/use-mailchimp-for-e-commerce "Use MailChimp for E-Commerce") for your campaigns and automations in your MailChimp account back end.
   
   * Enable Abandoned Carts:  This option enables the Abandoned Carts feature. For more info on this feature, see the [MailChimp site](https://mailchimp.com/features/abandoned-cart/ "Abandoned Cart")
   
   * Enable single opt-in for customers: This setting defines whether customers who opt in to subscribe to your news lists should be asked to confirm the subscription via email, or not. When this option is disabled, new subscribers get an email containing a subscription confirmation link that they need to click to be added to your list (Double opt-in). When this option is enabled, new subscribers are added to your list as soon as they opt in, without having to confirm the subscription by email (Single opt-in). Remember that abusing the single opt-in option may get your account banned by MailChimp.
   
* Subscription select element type (_Type:checkbox_ or _Type:select box_): This setting defines the way your customers select a subscription. If the select box option is enabled here, your customers can subscribe to only one mail list; if the checkbox option is enabled, your customers can subscribe to multiple lists.

* Update MailChimp lists every (_Never, 1 minute, 10 minutes, etc._): Select the time interval for the periodical list updates.

## E-Commerce features setup
![xc5_mailchimp_ecommerce_features.png]({{site.baseurl}}/attachments/ref_ST1QnErC/xc5_mailchimp_ecommerce_features.png)

The **E-Commerce features setup** section of the module settings page enables you to control the upload of store data (products, orders, carts and customers) to MailChimp. Uploading your store data to MailChimp enables you to take full advantage of MailChimp Product Recommendations and Abandoned Carts. For best performance of these features, the products, orders, carts and customers from your ecommerce store need to be uploaded to MailChimp and organized as a [Store](https://developer.mailchimp.com/documentation/mailchimp/reference/ecommerce/stores/). On the MailChimp end, a Store is the top-level e-commerce resource. Carts, Customers, Orders, and Products all exist inside of the scope of a Store. 
Each Store in MailChimp needs to be tied to a MailChimp list. In the **E-Commerce features setup** section of the module settings page in X-Cart, you specify the lists for which MailChimp Stores need to be created and initiate the upload/syncing of store data. First, you need to select the check boxes for the lists you require and click **Update**. This saves the set of MailChimp lists for which Stores should be created. To initiate the upload of store data for the selected lists, click **Upload store data to MailChimp**. MailChimp will create the Stores and will connect them to the MailChimp lists you have specified. Store data from X-Cart will be uploaded to these specific Stores. After the initial synchronization, further synchronization of store data will be done on the go automatically, without the need to click the **Upload store data to MailChimp** button; for example, when a new cart or a new order are created in your X-Cart store, the respective information will be automatically submitted to MailChimp. The button **Upload store data to MailChimp** remains in the **E-Commerce features setup** section just in case you need to redo the synchronizion; for example, you may need to use the button again if things get desynchronized between your store and your MailChimp account after you disable the module in X-Cart temporarily. Another button - **Update store data** - will help you to update your company information on the MailChimp end (for example, if your company name or address change).

_Related pages:_

*   {% link "Getting started with 'MailChimp Integration with E-commerce support'" ref_w5MRyybe %}
