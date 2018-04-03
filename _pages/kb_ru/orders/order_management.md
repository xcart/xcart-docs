---
lang: ru
layout: article_with_sidebar
updated_at: '2018-04-03 13:47 +0300'
identifier: ref_4DhBdE0F
title: Управление заказами
order: 50
published: false
---
X-Cart хранит информацию о заказах в разделе **Заказы / Список заказов**.

![listing.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/listing.png)

Воспользуйтесь фильтрами, чтобы найти заказы по интересующим параметрам. X-Cart сохраняет однажды установленные фильтры как шаблон для поиска.

![advanced-search.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/advanced-search.png)

Найденные заказы можно редактировать по одному или все вместе с помощью панели внизу списка:
* **Распечатать выбранное**: нажмите на значок и выберите документ для печати - _Распечатать счёт_ или _Распечатать упаковочный лист_.
* **Изменить статус оплаты для выбранных** : нажмите на значок и выберите статус из списка (_Передан в службу доставки, Ожидается оплата, Частично оплачен, Оплачен, Платёж не принят, Заказ отменён, Возврат средств_).
* **Изменить статус доставки для выбранных** : нажмите на значок и выберите статус из списка (_Новый, В обработке, Отправлен, Доставлен, Доставка отменена, Заказ возвращён_).
* **Удалить выбранные**: выберите заказы, нажмите на значок корзины, и заказы будут удалены из списка.
* **Экспорт CSV**: если заказы выбраны, будет создан CSV файл с этими заказами, если не выбраны - со всеми заказами из списка.

![bulk-edit.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/bulk-edit.png)

Список заказов предоставляет следующую информацию о заказах
:
* **Номер заказа** : Заказы пронумерованы последовательно, начиная со значения, указанного в поле **Следующий номер** заказа  на странице **Настройка магазина / Корзина и оплата**.
* **Дата** : Дата и время размещения заказа.
* **Клиент** : Имя и адрес электронной почты покупателя. Если нажать на имя, откроется профиль покупателя.
* **Статус оплаты** : Передан в службу доставки, Ожидается оплата, Частично оплачен, Оплачен, Платёж не принят, Заказ отменён, Возврат средств.
* **Статус доставки** : Новый, В обработке, Отправлен, Доставлен, Доставка отменена, Заказ возвращён.
* **Сумма** : Стоимость заказа и количество купленных товаров.

Статусы оплаты и доставки можно изменить прямо на странице списка заказов. Выберите статус из выпадающего меню и нажмите **Сохранить**. 

For advanced order management open the order details page by clicking on the order number (e.g. #00020).

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![general-1.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/general-1.png)</div>
  <div class="column" markdown="span">![general-2.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/general-2.png)</div>
</div>

Advanced order management allows a store admin to change the following order details:
* **Customer e-mail address** : Info will be changed for this order only
* **Staff note** : Notes can be added in the field for comments
* **Payment method** : For [offline payment methods](https://kb.x-cart.com/payments/accepting_payments.html#offline-payment-methods "Managing Orders in X-Cart") only
* **Shipping method** : For any shipping method
* **Billing address** : Info will be changed for this order only
* **Shipping address** : Info will be changed for this order only
* **Fulfillment status** : Choose one of the available values
* **Payment status** : Choose one of the available values
* **Tracking number** : To add a tracking number click on the **'Add tracking number'** button. A tracking number can have up to 32 symbols.
* **Order items** : An admin can change the price and quantity of the ordered products and add new products to the order
* **Discount** : An admin can add a discount coupon by clicking the _Add coupon_ link or a cash discount
* **Shipping cost** : Change the shipping cost applied to the order
* **Gift wrapping** : If the Gift wrapping option is turned ON admin will be able to specify the gift wrapping cost

If changes are applied to the order items and associated costs, the admin should first click the **'Recalculate totals'** button and **save changes** after that. If no changes to the costs are applied, the admin can **save changes** right away. With the **Notify customer** checkbox enabled a customer will get notifications on all the changes apllied to the order. 

All order changes are recorded in the order history that can be checked on top of the page. Click the **View order history** link to display the info. 

![order-history.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/order-history.png)

Any changes made to the order will automatically result in the order invoice alteration, that can be checked in the **Invoice** tab of the order details page.

![invoice.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/invoice.png)

The **Messages** tab can be used if it's necessary to send notes about the order to a customer. 

![messages.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/messages.png)

