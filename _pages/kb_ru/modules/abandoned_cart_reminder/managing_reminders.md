---
lang: ru
layout: article_with_sidebar
updated_at: '2018-03-13 08:28 +0300'
identifier: ref_052L9Bhe
title: Напоминания об оставленных корзинах
order: 110
published: false
---
О чём эта статья:

*   [Создание напоминаний](#Создание-напоминаний);
*   [Просмотр напоминаний](#Просмотр-напоминаний);
*   [Редактирование напоминаний](#Редактирование-напоминаний)(изменение способа отправки, названия, скидки, шаблона письма);
*   [Удаление напоминаний](#Удаление-напоминаний).

## Создание напоминаний

Если модуль обнаружил оставленную корзину с товарами, сообщите посетителю магазина, что выбранные им товары сохранены и заказ может быть завершён. Настройте несколько писем-напоминаний с отправкой вручную или автоматически и включите в письма купоны на скидку, если в магазине работает модуль **Купоны**. 

Как создать письмо-напоминание:

1.  В зоне администратора откройте страницу **Настройка магазина / Уведомления по электронной почте** и нажмите **Шаблоны напоминаний о корзинах**: 
    ![]({{site.baseurl}}/attachments/7503950/8718924.png)

2.  Нажмите **Новое напоминание**:
    ![]({{site.baseurl}}/attachments/7503950/8718923.png)
    Откроется страница создания нового напоминания:
    ![]({{site.baseurl}}/attachments/7503950/8718927.png)

3.  Заполните поля деталями нового шаблона письма:

    *   **Название шаблона**: название шаблона сообщения в зоне администратора, его не видят покупатели. 
        
    *   **Отправлять автоматически**: поставьте галочку, чтобы сообщение отправлялось покупателю автоматически, или не ставьте, чтобы отправлять напоминания вручную. 

        Скрипт запланированных задач _console.php_ рассылает сообщения _автоматически_ (при соответствующей настройке сервера {% link "Sending reminders" ref_hkTTIuTr#sending-reminders %}Сonfiguring your server to run scheduled X-Cart tasks). _Администратор_ магазина или другой пользователь с правами на выполнение таких действий отправляет напоминания _вручную_. Дополнительная информация об отправке сообщений вручную: Sending reminders{% link "Sending reminders" ref_hkTTIuTr#sending-reminders %}.

        Выбор способа отправки зависит от целевой аудитории. Для массовой рассылки установите автоматическую отправку. Для оповещения избранных покупателей - отправку вручную. 

    *   **Пауза перед автоматической отправкой (в часах)**: промежуток времени, по истечении которого отправляется напоминание. Автоматическая отправка происходит при срабатывании скрипта _console.php_. Перед каждым новым запуском скрипт выбирает уведомления, для которых настало время отправки, и рассылает сообщения о тех корзинах, которые пребывали в статусе оставленных в течение или дольше времени, указанного в этой настройке.

    *   **Размер скидки по купону**: если указан размер скидки, для получателей уведомления будет автоматически создан и включён в письмо купон на скидку. Задайте фиксированную сумму скидки или процент от стоимости заказа. Если оставить значение поля без изменений (0), купон не будет создан.
    
    *   **Срок действия купона (в днях)**: это поле появляется, когда заполнено поле Р**азмер скидки по купону**. Количество дней, в течение которых действует купон, отправленный покупателям в напоминании о заказе.

4.  Для напоминаний со скидкой и без используются отдельные шаблоны сообщения.
    *   Заполните поля **Заголовок e-mail письма (без купона)** и **Текст e-mail напоминания (без купона)** для напоминаний, не содержащих купон на скидку.

    *   Заполните поля **Заголовок e-mail письма (с купоном)** и **Текст e-mail напоминания (с купоном)** для напоминаний, предлагающих скидку.

        Поля **Заголовок e-mail письма (без купона)** и **Текст e-mail напоминания (без купона)** обязательны и должны быть заполнены, даже если в напоминании будет купон на скидку. Если скидка активирована, заполните поля **Заголовок e-mail письма (без купона)** и **Текст e-mail напоминания (без купона)** так же, как **Заголовок e-mail письма (с купоном)** и **Текст e-mail напоминания (с купоном)**.

        В заголовке и теме письма уместны следующие ярлыки:

        *   [COMPANY_NAME] - Название магазина, как указано в настройках;

        *   [NAME] - Полное имя покупателя (не заполняется, если посетитель сайта не указал имя);

        *   [CART_ITEMS] - Товары в корзине;

        *   [RECOVERY_LINK] - Ссылка для возврата в корзину;

        *   [COUPON_CODE] - Код купона на скидку, созданного модулем;

        *   [COUPON_AMOUNT] - Размер скидки по купону;

        *   [COUPON_EXPIRES] - Срок истечения купона.

        Напоминание с названием **Default e-mail reminder**  - тестовое напоминание, пример использования ярлыков.

5.  Нажмите **Создать**. Новое напоминание появится на странице в [списке](#просмотр-напоминаний) **Уведомления по электронной почте / Шаблоны напоминаний о корзинах**.

## Просмотр напоминаний

Полный список настроенных напоминаний доступен на странице **Настройка магазина / Уведомления по электронной почте / Шаблоны напоминаний о корзинах**:
    ![]({{site.baseurl}}/attachments/7503950/8718928.png)

Информация о напоминаниях:

*   Значок часов слева от названия напоминания серого или зелёного цвета. _Зелёный_ цвет означает автоматическую отправку, _серый_ - вручную ![](attachments/7503950/8718929.png)
*   **Имя**: Название напоминания, которое видит и использует в работе только администратор, а покупатели не видят.
*   **Задержка (часы)**: минимальный промежуток времени, по истечении которого происходит автоматическая отправка напоминаний.
*   **Скидка по купону**: размер скидки по купону, приложенному к письму об оставленной корзине. Значение **0** в этой колонке означает, что напоминание не содержит купон на скидку.
*   **Срок (дни)**: количество дней до истечения срока действия купона.

## Редактирование напоминаний

You can edit any abandoned cart reminders that have been created in your store, including both the email message template and such parameters as the sending method, the coupon amount, etc.

To edit a reminder:

1.  In the [abandoned cart reminders list](#viewing-the-reminders-list), click on the name of the reminder that needs to be edited. This opens the page where you can review and edit the reminder details:
    ![]({{site.baseurl}}/attachments/7503950/8718932.png)

2.  Edit the parameters of the reminder and/or make changes to the email template.
3.  Click **Update** to save the changes. The reminder will be updated.

The sending method for a reminder can also be changed directly on the Abandoned cart reminders list page. To change the sending method:

1.  Use the Clock control  in the first column of the table opposite the reminder name to activate or deactivate the automatic sending of the reminder emails:
    ![]({{site.baseurl}}/attachments/7503950/8718929.png) (green icon) = the reminder must be sent automatically;
    ![]({{site.baseurl}}/attachments/7503950/8718931.png) (gray icon) = the reminder must be sent manually.
2.  Click the **Save changes** button at the bottom of the list to save the changes. The sending method will be updated.

It is also possible to quickly edit the numeric parameters of individual reminders straight from the Abandoned cart reminders list page. When you hover your cursor over a specific line in the Abandoned cart reminders list, the numeric fields in that line that can be edited directly on this page become highlighted. To start editing, simply click on the field you want to edit. This opens the field for editing:

![]({{site.baseurl}}/attachments/7503950/8718935.png)

Make the required change and click outside the field to close it. You can also use the Tab key to close the current field and open the next one for editing. When you're done editing, be sure to save the changes using the **Save changes** button at the bottom of the list.

## Deleting reminders

You can delete the abandoned cart reminders you no longer need.

To delete a reminder:

1.  In the [abandoned cart reminders list](#viewing-the-reminders-list), locate the reminder you wish to delete and select it for removal by clicking on the respective Trash icon ![]({{site.baseurl}}/attachments/7503950/7602228.png) at the right. 
2.  Click **Save changes**. The reminder will be removed.

_Related pages:_
