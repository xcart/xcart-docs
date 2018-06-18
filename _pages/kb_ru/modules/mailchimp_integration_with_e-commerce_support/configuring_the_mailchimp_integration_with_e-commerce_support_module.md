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
   
   * **API ключ MailChimp** - В этом поле хранится API ключ, созданный в панели управления **MailChimp** для подключения к магазину. Чтобы сменить учётную запись **MailChimp** или API ключ, заведите новый логин **MailChimp** или создайте в существующей учётной записи новый API ключ и нажмите **Переподключить аккаунт MailChimp** в настройках модуля в магазине.
   
   * **Включить аналитику Ecommerce** - Настройка включена по умолчанию, и лучше её не отключать. **MailChimp** будет собирать [аналитические данные по магазину](https://mailchimp.com/help/sell-more-stuff-with-mailchimp/ "Настройка модуля MailChimp Integration with E-commerce support"). 
   
 Когда эта настройка включена, на странице настройки модуля доступна вкладка **Настройка опций e-Commerce**. Также, необходимо включить опцию [E-Commerce Link Tracking](https://mailchimp.com/help/sell-more-stuff-with-mailchimp/ "Настройка модуля MailChimp Integration with E-commerce support") в настройках рассылок в панели управления **MailChimp**.  
 
   * **Включить Abandoned Carts** - Настройка включает **MailChimp** рассылку о [забытых корзинах](https://mailchimp.com/features/abandoned-cart/ "Настройка модуля MailChimp Integration with E-commerce support"), которая напоминает покупателям о выбранных товарах, предлагает похожие и способствует совершению покупки.  
   
   * **Включить режим подписки single opt-in** - Если опция включена, посетитель магазина моментально подписывается на рассылку без подтверждения адреса электронной почты. Если опция отключена, действует режим **double opt-in**, когда подписчик получает письмо со ссылкой для подтверждения email адреса, прежде чем будет подписан на рассылку магазина. 
   
   По умолчанию эта настройка отключена. Слишком частое или долгое использование режима регистрации без подтверждения адреса (**single opt-in**) может привести к блокировке учётной записи **MailChimp**.
   
* **Тип элемента выбора подписки** - Способ выбора рассылки для покупателей: **Список** - покупатель выбирает рассылки по одной; **галочка** - сразу несколько.

* **Обновлять список рассылок MailChimp каждые** - Установите, как часто будет происходить автоматическое обновление списка рассылок.

* **Тип купонов на скидку, который следует загружать в MailChimp** - Выберите тип скидочных купонов, которые будут включены в рассылки. **Все купоны** - любые из купонов, настроенных в магазине. **Только купоны, которые соответствуют промо-правилам MailChimp** - Купоны, отличные от стандарта **MailChimp**, не попадут в рассылки. 
Купон, составленный по промо-правилам MailChimp, содержит информацию: код, сумма скидки, активен с, активен по.

## Настройка опций e-Commerce

![3.jpg]({{site.baseurl}}/attachments/ref_781Rx48T/3.jpg)

Товары, заказы, корзины и покупатели загружаются в **MailChimp**, где сохраняются в виде [Магазина](https://developer.mailchimp.com/documentation/mailchimp/reference/ecommerce/stores/ "Настройка модуля MailChimp Integration with E-commerce support"). Предоставление такой информации **MailChimp** позволяет полностью использовать возможности **MailChimp** по предложению товаров и обработке забытых корзин.

В панели управления **MailChimp** Магазин - объект высшего уровня. Товары, корзины, заказы и покупатели хранятся внутри него. Каждый магазин в **MailChimp** привязан к списку рассылок, который выбраны в разделе **Настройка опций e-Commerce** на странице модуля в X-Cart.

The **E-Commerce features setup** section of the module settings page enables you to control the upload of store data (products, orders, carts and customers) to MailChimp. Uploading your store data to MailChimp enables you to take full advantage of MailChimp Product Recommendations and Abandoned Carts. For best performance of these features, the products, orders, carts and customers from your ecommerce store need to be uploaded to MailChimp and organized as a [Store](https://developer.mailchimp.com/documentation/mailchimp/reference/ecommerce/stores/). On the MailChimp end, a Store is the top-level e-commerce resource. Carts, Customers, Orders, and Products all exist inside of the scope of a Store. 
Each Store in MailChimp needs to be tied to a MailChimp list. In the **E-Commerce features setup** section of the module settings page in X-Cart, you specify the lists for which MailChimp Stores need to be created and initiate the upload/syncing of store data. First, you need to select the check boxes for the lists you require and click **Update**. This saves the set of MailChimp lists for which Stores should be created. To initiate the upload of store data for the selected lists, click **Upload store data to MailChimp**. MailChimp will create the Stores and will connect them to the MailChimp lists you have specified. Store data from X-Cart will be uploaded to these specific Stores. After the initial synchronization, further synchronization of store data will be done on the go automatically, without the need to click the **Upload store data to MailChimp** button; for example, when a new cart or a new order are created in your X-Cart store, the respective information will be automatically submitted to MailChimp. The button **Upload store data to MailChimp** remains in the **E-Commerce features setup** section just in case you need to redo the synchronizion; for example, you may need to use the button again if things get desynchronized between your store and your MailChimp account after you disable the module in X-Cart temporarily. Another button - **Update store data** - will help you to update your company information on the MailChimp end (for example, if your company name or address change).

_Related pages:_

*   {% link "Getting started with 'MailChimp Integration with E-commerce support'" ref_w5MRyybe %}
