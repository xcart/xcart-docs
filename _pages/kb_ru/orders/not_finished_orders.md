---
lang: ru
layout: article_with_sidebar
updated_at: '2018-02-02 10:23 +0400'
identifier: ref_6K7lCFaI
title: Незавершённые заказы
order: 30
published: false
---
Когда покупатель завершает оплату покупки, его корзина в магазине обнуляется, и в интерфейсе администратора создаётся заказ. В заказ входят все товары, которые находились в корзине покупателя в момент оплаты покупки. Но если покупатель положил товары в корзину, перешёл к оплате, но не совершил платёж, в интерфейсе администратора не формируется заказ. С помощью модуля **Not Finished Orders** администратор магазина получает возможность видеть незавершённые заказы. Модуль **Not Finished Ordrs** входит в _X-Cart Business, X-Cart Multivendor_ и  _X-Cart Ultimate_, и {% link "включается" ref_IEo2gFuZ %} на странице **Мои модули**.

{% note info %}
Модуль **Not Finished Orders** работает только с заказами, оплачиваемыми онлайн через платёжные системы. В случае оффлайн способов оплаты, заказ создаётся в тот момент, когда покупатель нажимает кнопку **Разместить заказ**. В интерфейсе администратора появляется заказ в статусе **Ожидается оплата**. 
{% endnote %}

Найдите **Not Finished Orders** в списке установленных модулей на странице **Мои модули** и нажмите **Настройки**.

![payment-transactions.png]({{site.baseurl}}/attachments/ref_5TMbPwNQ/payment-transactions.png)

The settings of the module are as follows:

* _Not finished order will be created_  - in this drop-down the admin can choose the conditions that if met will result in a not finished order creation.

* _Clear cart if administrator changes order_ - YES/NO

{% note info %}
If this option is set to 'YES' a buyer's cart of a not finished order will be cleared as soon as the cart admin changes the order details, e.g. a payment status of a not finished order from "Status is not defined" to "Awaiting payment". By default the cart content is cleared only when an order is placed.  
{% endnote %}

* _Limit lifetime of not finished order_ - If enabled, the cart admin will be able to define the the time to use the cart at its current state for future attempts in days. 

Once enabled and set up, the cart admin will see the not finished orders in the **Orders** section of the admin back-end.

![order.png]({{site.baseurl}}/attachments/ref_5TMbPwNQ/order.png)

A not finished order won't have an order number and the payment status will be "Status is not defined". The order will get an orderID only when and if the cart admin changes the fulfilment status and payment status of the order.

The **Not Finished Orders** module is good for manual tracking of the purchases. If you want to automate the procedure use the {% link "Abandoned Cart Reminder" ref_Mf6yeSBE %} module. It works with any abandoned cart regardless of the payment method.

