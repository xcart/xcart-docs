---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-16 14:42 +0400'
identifier: ref_BhDJ3y0W
title: 'Импорт CSV: Заказы'
order: 60
published: true
---
{% note info %}
Функциональность импорта заказов является частью функциональности бесплатного модуля [Orders Import](https://market.x-cart.com/addons/orders-import.html). Она не входит в ядро X-Cart.
{% endnote %}

В таблице ниже представлены поля, которые можно импортировать, и их содержание.

<table class="ui celled padded compact small table">
  <thead>
    <tr>
      <th class="confluenceTh">Поле в CSV файле</th>
      <th colspan="1" class="confluenceTh">Что описывает это поле</th>
      <th colspan="1" class="confluenceTh" markdown="1">{% link 'Тип значения' ref_lKATu9rT %}</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля, поддерживаемые модулем <strong>Orders Import</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>orderNumber*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Номер заказа.Служит идентификатором покупки.</td>
      <td colspan="1" class="confluenceTd">
        <p>Целое число</p>
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">Поля адреса оплаты покупателя. Следующие поля могут быть представлены или не представлены в вашем магазине в зависимости от конфигурации записи адресов.
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerAnonymous</td>
      <td colspan="1" class="confluenceTd">Если значение Yes, покупатель - незарегистрированный (анонимный) пользователь.</td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerAddressSame</td>
      <td colspan="1" class="confluenceTd">Поставьте Yes, если адреса оплаты и доставки покупателя совпадают. Если не совпадают - поставьте No.</td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerFirstnameBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Имя покупателя в адресе оплаты.<br> </td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerLastnameBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Фамилия покупателя в адресе оплаты</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerStreetBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Улица в адресе оплаты</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerCityBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Город в адресе оплаты</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerCountryCodeBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Код страны (в формате ISO 3166-1 alpha-2 (два знака)) в адресе оплаты</td>
      <td colspan="1" class="confluenceTd">Текст,<br>Максимум 2 знака</td>
    </tr>

    <tr>
      <td colspan="1" class="confluenceTd">customerStateIdBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Название области, если в конфигурации магазина указана такая область. Если не указана, заполните поле customerCustomStateBillingAddressField. <br> Пример: Иркутская Область.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerCustomStateBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Название области, если в конфигурации магазина не указана область из адреса покупателя. </td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerZipcodeBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Индекс в адресе оплаты.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerPhoneBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Номер телефона покупателя в адресе оплаты.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerVatNumberBillingAddressField</td>
      <td colspan="1" class="confluenceTd"></td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">Поля адрес доставки покупателя.  Следующие поля могут быть представлены или не представлены в вашем магазине в зависимости от конфигурации записи адресов.</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerFirstnameShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Имя покупателя в адресе доставки.<br> </td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerLastnameShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Фамилия покупателя в адресе доставки</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerStreetShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Улица в адресе доставки</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerCityShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Город в адресе доставки</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerCountryCodeShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Код страны (в формате ISO 3166-1 alpha-2 (два знака)) в адресе доставки</td>
      <td colspan="1" class="confluenceTd">Текст,<br>Максимум 2 знака</td>
    </tr>

    <tr>
      <td colspan="1" class="confluenceTd">customerStateIdShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Название области, если в конфигурации магазина указана такая область. Если не указана, заполните поле customerCustomStateShippingAddressField. <br>Пример: Иркутская Область</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerCustomStateShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Название области, если в конфигурации магазина не указана область из адреса покупателя. </td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerZipcodeShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Индекс в адресе доставки.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerPhoneShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Номер телефона в адресе доставки.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerVatNumberShippingAddressField</td>
      <td colspan="1" class="confluenceTd"></td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">Поля покупаемых продуктов. Каждое поле содержит несколько строк, и каждая строка представляет отдельный продукт.</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>itemName*</strong></td>
      <td colspan="1" class="confluenceTd">Название покупаемого продукта.</td>
      <td colspan="1" class="confluenceTd">Текст,<br>несколько строк</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>itemSKU*</strong></td>
      <td colspan="1" class="confluenceTd">Артикул покупаемого продукта.</td>
      <td colspan="1" class="confluenceTd">Текст,<br>несколько строк,<br>Максимум 32 знака</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">itemAttributes</td>
      <td colspan="1" class="confluenceTd">Атрибуты покупаемого продукта.</td>
      <td colspan="1" class="confluenceTd">Несколько значений,<br>несколько строк</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>itemPrice*</strong></td>
      <td colspan="1" class="confluenceTd">Розничная цена продукта.</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой,<br>несколько строк</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>itemQuantity*</strong></td>
      <td colspan="1" class="confluenceTd">Количество продукта в заказе.</td>
      <td colspan="1" class="confluenceTd">Целое чсло,<br>несколько строк</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>itemSubtotal*</strong></td>
      <td colspan="1" class="confluenceTd">Промежуточная стоимость продукта (без учета наценок).</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой,<br>несколько строк</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>itemTotal*</strong></td>
      <td colspan="1" class="confluenceTd">Полная стоимость продукта.</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой,<br>несколько строк</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>subtotal*</strong></td>
      <td colspan="1" class="confluenceTd">Промежуточная сумма заказа (без учета наценок).</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">Наценки на заказы. В каждом поле наценки указан код наценки (большими буквами) и суффикс наценки. Пример наценки на заказ можно увидеть в двух следующих поля. В зависимости от конфигурации вашего магазина, такие же поля могут быть представлены или нет.</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DISCOUNT (surcharge)</td>
      <td colspan="1" class="confluenceTd">Абсолютная величина скидки на заказ. Пример: -100. Это означает, что на заказ действует скидка RUB100, если валюта заказа - RUB.</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPPING (surcharge)</td>
      <td colspan="1" class="confluenceTd">Наценка на доставку. Пример: 150.</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой</td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd"><strong>total*</strong></td>
      <td colspan="1" class="confluenceTd">Полная сумма заказа со всеми доплатами.</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>currency*</strong></td>
      <td colspan="1" class="confluenceTd">Код валюты заказа. Пример: RUB.</td>
      <td colspan="1" class="confluenceTd">Текст,<br>Максимум 3 знака</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">shippingMethod</td>
      <td colspan="1" class="confluenceTd">Название способа доставки заказа.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">trackingNumber</td>
      <td colspan="1" class="confluenceTd">Номер отслеживания заказа.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">Платежные транзакции по заказу. Следующие поля с префиксом paymentTransaction содержат несколько строк, и каждый ряд содержит одну транзакцию.</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>paymentTransactionMethod*</strong></td>
      <td colspan="1" class="confluenceTd">Внутреннее название способа оплаты заказа.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>paymentTransactionStatus*</strong></td>
      <td colspan="1" class="confluenceTd">Статус транзакции.<br>
        Возможные значения:
        <ul>
          <li>'I' (Начата оплата)</li>
          <li>'P' (В обработке)</li>
          <li>'S' (Успешная оплата)</li>
          <li>'W' (Незавершённый платеж)</li>
          <li>'F' (Оплата не прошла)</li>
          <li>'C' (Отмена)</li>
          <li>'V' (Аннулирован)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Текст,<br>Максимум 1 знак</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>paymentTransactionValue*</strong></td>
      <td colspan="1" class="confluenceTd">Сумма транзакции.</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">paymentTransactionNote</td>
      <td colspan="1" class="confluenceTd">Комментарии платежной системы к транзакции по заказу. Обычно, это сообщения об ошибках при оплате.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>paymentTransactionType*</strong></td>
      <td colspan="1" class="confluenceTd">Тип транзакции.<br>
        Возможные значения:
        <ul>
          <li>'auth' (Только авторизация)</li>
          <li>'sale' (Авторизация и удержание)</li>
          <li>'capture' (Удержание средств)</li>
          <li>'capturePart' (Частичное удержание средств с последующим завершением транзакции)</li>
          <li>'captureMulti' (Частичное удержание средств. Возможно повторение)</li>
          <li>'void' (Платеж аннулирован)</li>
          <li>'voidPart' (Частичная отмена платежа с последующим завершением транзакции)</li>
          <li>'voidMulti' (Частичная отмена платежа. Возможно повторение)</li>
          <li>'refund' (Возврат средств)</li>
          <li>'refundPart' (Частичный возврат средств с последующим завершением транзакции)</li>
          <li>'refundMulti' (Возврат средств. Возможно повторение)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>paymentTransactionId*</strong></td>
      <td colspan="1" class="confluenceTd">Идентификатор транзакции по оплате заказа.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd">paymentTransactionCurrency</td>
      <td colspan="1" class="confluenceTd">Валюта транзакции. Можно не указывать, в этом случае будет применена валюта заказа.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd">date</td>
      <td colspan="1" class="confluenceTd">Дата оформления заказа. Пример: Вторник, 12 января, 2017, 12:11:15 +0000</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd">recent</td>
      <td colspan="1" class="confluenceTd">Напишите Yes, если заказ был обработан администратором. Если нет - укажите No.</td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd"><strong>paymentStatus*</strong></td>
      <td colspan="1" class="confluenceTd">Статус платежа. <br>
        Возможные значения:
        <ul>
          <li>'A' (Авторизован)</li>
          <li>'P' (Оплачен)</li>
          <li>'PP' (Частично оплачен)</li>
          <li>'D' (Отклонен)</li>
          <li>'C' (Отменен)</li>
          <li>'Q' (В очереди на обработку)</li>
          <li>'R' (Возврат средств)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Текст,<br>Максимум 3 знака</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>shippingStatus*</strong></td>
      <td colspan="1" class="confluenceTd">Статус доставки. <br>
        Возможные значения:
        <ul>
          <li>'N' (Новый заказ)</li>
          <li>'P' (В обработке)</li>
          <li>'S' (Отправлен)</li>
          <li>'D' (Доставлен)</li>
          <li>'WND' (Нет доставки)</li>
          <li>'WFA' (Ожидает подтверждения)</li>
          <li>'R' (Возврат)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Текст,<br>Максимум 3 знака</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">notes</td>
      <td colspan="1" class="confluenceTd">Комментарии покупателя к заказу.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">adminNotes</td>
      <td colspan="1" class="confluenceTd">Комментарии администратора к заказу.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">История заказа. Следующие поля с префиксом detail содержат несколько строк, и в каждом ряду описан один факт из истории заказа.</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">detailCode</td>
      <td colspan="1" class="confluenceTd">Код записи из истории заказа</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">detailLabel</td>
      <td colspan="1" class="confluenceTd">Удобочитаемая метка записи из истории заказа</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">detailValue</td>
      <td colspan="1" class="confluenceTd">Текст записи из истории заказа</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля, добавленные модулем <strong>Multivendor</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>vendor*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Адрес электронной почты продавца.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>parent*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Номер родительского заказа.</td>
      <td colspan="1" class="confluenceTd">Целое число</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>children*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Номера дочерних заказов. Возможны несколько значений.</td>
      <td colspan="1" class="confluenceTd">Целое число,<br>Несколько значений</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля, добавленные модулем <strong>Custom Order Statuses</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">paymentStatusLabel</td>
      <td colspan="1" class="confluenceTd">Удобочитаемая запись статуса оплаты</td>
      <td colspan="1" class="confluenceTd">Текст,<br>Мультиязычный</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">shippingStatusLabel</td>
      <td colspan="1" class="confluenceTd">Удобочитаемая  запись статуса доставки</td>
      <td colspan="1" class="confluenceTd">Текст,<br>Мультиязычный</td>
    </tr>
  </tbody>
</table>

<sub>* Обязательное поле</sub>

<sub markdown="1">**Дополнительная информация {% link "Атрибуты полей CSV файла" ref_lKATu9rT %}</sub>

**Рекомендации**:

*   Если вы собираетесь импортировать данные в X-Cart и не хотите обновлять определенные поля во время импорта, эти поля не нужно вносить в CSV файл импорта. Просто удалите соответствующие столбцы из файла.
