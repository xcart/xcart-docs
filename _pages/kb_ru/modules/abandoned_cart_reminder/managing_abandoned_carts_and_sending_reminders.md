---
lang: ru
layout: article_with_sidebar
updated_at: '2018-03-15 14:12 +0300'
identifier: ref_4WG6xIIo
title: Управление оставленными корзинами и отправкой напоминаний
order: 120
published: false
---
*   [Просмотр списка оставленных корзин](#Просмотр-списка-оставленных-корзин);
*   [Рассылка напоминаний](#Рассылка-напоминаний);
*   [Удаление оставленных корзин](#Удаление-оставленных-корзин).

## Просмотр списка оставленных корзин

Корзина попадает в список оставленных, если посетитель сайта добавляет товары в корзину, но не размещает заказ и покидает страницу.

*   В панели администратора магазина откройте страницу **Заказы / Брошенные корзины**. Если посетитель магазина оставил товары в корзине и покинул сайт, вы увидите корзину в списке на этой странице. 

![]({{site.baseurl}}/attachments/7503954/8719192.png)

Записи списка можно отфильтровать по адресу электронной почте покупателя и/или дате создания корзины:

![]({{site.baseurl}}/attachments/7503954/8719193.png)

Список представлен в виде таблицы, в которой по каждой корзине доступна следующая информация:

*   **Email**: The email address of the abandoned cart owner.
*   **Products**: Information about the products contained in the abandoned cart (product names, quantities, selected options).
*   **Subtotal**: Subtotal amount of the abandoned order.
*   **Coupons**: (_This column is displayed only when Abandoned Cart Reminder is used in conjunction with the Coupons module_) The coupon codes that were generated for the abandoned cart.
*   **Date**: Since when the cart has been in the abandoned state.
*   **Notified**: Whether any abandoned cart reminder emails have been sent to the cart owner and how many times (+ the date when a reminder email was last sent for the cart).

## Sending reminders 

If a reminder needs to be sent not to all, but just some of the abandoned carts on your store's abandoned carts list, you must send it manually.

To send a reminder email to owners of specific carts:

1.  In the [Viewing/filtering the abandoned carts list](#viewingfiltering-the-abandoned-carts-list), locate the carts for which you wish to send the reminder message and select them by selecting the respective check boxes in the first column. The **Remind selected** **customers** button below the list becomes active:
    ![]({{site.baseurl}}/attachments/7503954/8719194.png)

2.  Click **Remind selected** **customers**. A popup titled **Choose reminder** appears: 
    ![]({{site.baseurl}}/attachments/7503954/8719195.png)

3.  In the popup, use the **Reminder** drop-down box to select the reminder message you wish to send and click **Send reminder**. The reminder message will be sent to the owners of all selected carts.

## Deleting abandoned carts

When you no longer need an abandoned cart to be stored, you can delete it.

To deleted an abandoned cart:

1.  In the [Viewing/filtering the abandoned carts list](#viewingfiltering-the-abandoned-carts-list), find the abandoned cart you wish to delete and select it by selecting the respective check box in the first column.
2.  Click the **More actions for selected** link below the list and select **Clear selected carts**. 

    ![]({{site.baseurl}}/attachments/7503954/8719196.png)

    The cart will be deleted.

_Related pages:_

*   {% link "Abandoned Cart Reminder" ref_Mf6yeSBE %}
*   {% link "Managing reminders" ref_i8rSfTrg %}
*   {% link "Viewing cart recovery statistics" ref_rg0Tct2p %}

