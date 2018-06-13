---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-13 15:41 +0400'
identifier: ref_08L2zVtq
title: Неоплаченные заказы (Not Finished Orders)
order: 290
published: false
---
Когда покупатель оплачивает покупку, его корзина очищается, а в панели управления магазина создаётся заказ с товарами, которые находились в корзине на момент совершения оплаты. Возможна ситуация, когда покупатель переходит на страницу оплаты, но не оплачивает заказ по какой-то причине (передумал, отвлёкся, сломался компьютер и т.п.). В этом случае заказ не регистрируется в панели управления. Если администратор желает знать обо всех незавершённых заказах, поможет модуль [Неоплаченные заказы (Not Finished Orders)](https://market.x-cart.com/addons/not-finished-orders.html "Неоплаченные заказы (Not Finished Orders)"). Модуль входит в _X-Cart Бизнес_, _X-Cart Мультивендор_ и _X-Cart Всё включено_ и требует только активации. В _X-Cart Базовый_ модуль нельзя установить, чтобы использовать модуль, следует обновить лицензию с X-Cart Базовый на _X-Cart Бизнес_, _X-Cart Мультивендор_ или _X-Cart Всё включено_.

Модуль регистрирует неоплаченные заказы, для которых был выбран **онлайн** способ оплаты. Если покупатель выбрал **оффлайн** способ оплаты, заказ регистрируется в любом случае, как только покупатель нажимает **Разместить заказ**, и получает статус **Ожидается оплата**. 

To set up the **Not Finished Orders** module use the _Settings_ link.

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
