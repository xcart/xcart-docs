---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-19 12:28 +0400'
identifier: ref_16DRDxyb
title: Оформление и отслеживание выплат продавцам
order: 180
published: false
---
Возможны два способа распределения дохода с продаж между продавцами и владельцем торговой площадки:
   
   * Автоматически через платёжные системы, которые поддерживают распределение средств по разным счетам. Этот способ выплат не действует в магазинах на базе X-Cart, зарегистрированных в Российской Федерации, в связи со спецификой платёжных систем;
   * Вручную администратором магазина. Этот способ используется в магазинах на базе X-Cart, зарегистрированных в Российской Федерации. 

Независимо от способа выплаты, администратор отслеживает передвижение средств в разделе **Заказы / Платёжные операции продавцов** в панели управления магазина:
   ![xc5_vendor_transactions_admin_view.png]({{site.baseurl}}/attachments/ref_3uy1YgfD/xc5_vendor_transactions_admin_view.png)

При **автоматическом** распределении дохода с продаж операции появляются в этом списке автоматически. При распределении выплат **вручную** администратор создаёт новую платёжную операцию по каждому передвижению средств от владельца магазина к продавцам и наоборот.

## Просмотр списка платёжных операций

Раздел **Заказы / Платёжные операции продавцов** представляет платёжные операции в виде таблицы, содержащей следующую информацию:

   *   **Продавец** - Название компании и адрес электронной почты продавца, которому принадлежит операция.
   *   **Кем создана** - Происхождение платёжной операции. Возможные значения этой колонки:
       
       * **Номер заказа** - платёжная операция создана автоматически после оплаты/отмены указанного заказа (_не для Российской Федерации_); 
       * **Имя и адрес электронной почты администратора** - платёжная операция создана администратором.
       * **Логотип PayPal** - платёжная операция создана автоматически после оплаты/отмены заказа через метод оплаты **PayPal**, поддерживающий автоматическое распределение средств (_не для Российской Федерации_).
       * **Название компании и адрес электронной почты продавца** - платёжная операция представляет собой запрос продавца на выплату средств.
       
   *   **Дата** - дата совершения платёжной операции.
   *   **Заказ** - номер заказа, к которому относится платёжная операция.
   *   **Описание** - краткий комментарий к операции:
        
       * **Заказ оплачен** - Один или несколько товаров продавца оплачены, продавец получил выручку с продажи, но администратор ещё не перевёл заработанные средства продавцу.
       * **Заказ отклонён/отменён** - Оплата товаров продавца не прошла или отменена. Сумма, начисленная продавцу, будет списана с его счёта.
       * **Название метода оплаты: выплата комиссии (например, PayPal Adaptive: выплата комиссии)** - Заработанные продавцом средства перечислены на его счёт указанным методом оплаты. Комиссия продавца перечислена владельцу магазина за вычетом комиссии платёжной системы (не для РФ).
   *   **Доход** - Сумма, вырученная от продажи и поступившая на счёт администратора за вычетом комиссии администратора .
   *   **Расход** - Выплаченная продавцу сумма. Если продавец подавал запрос на выплату, то сумма, подлежащая выплате продавцу.

Администратор находит платёжные операции по фильтрам:
   * **Период времени** - Результаты поиска покажут операции между выбранными даты. 
   * **Продавец** - _Любой пользователь_ -  в результатах поиска будут все платёжные операции всех продавцов. _Название компании продавца_ - в результатах поиска появятся платёжные операции только выбранного продавца.
   * **Описание** - Поиск по полному описанию или нескольким словам из него. 
   * **Статус платёжной операции** - Все платёжные операции или только необработанные запросы на выплату.
   
   ![xc5_mv_transactions_filtered_by_vendor.png]({{site.baseurl}}/attachments/ref_3uy1YgfD/xc5_mv_transactions_filtered_by_vendor.png)

## Создание платёжной операции

The store admininstrator can manually create transactions in the Vendor transactions section. The transactions can be used to reflect the movement of funds both to and from the accounts of individual vendors.

Typically the store admininstrator pays out money to vendors based on payout requests. However, a payout request is not a requirement: the store administrator can create any type of transaction at any time, including payout transactions. For example, the store owner and the vendor can communicate and agree on the amount to be paid out to the vendor using personal communication outside X-Cart, and the administrator will be able to register such a transaction in X-Cart by manually creating a transaction using the method described below. 

Similarly, the administrator will be able to create transactions for partial refunds, transactions to correct erroneous transactions and so on.

To manually register a transaction in the X-Cart Admin area, the store administrator needs to click the **Create transaction** button. This adds a new line in the transactions table. The administrator must select the vendor profile to which the transaction pertains, provide a description that will allow both the vendor and themselves to identify this transaction at a later time, and adjust the Income/Expense fields as needed. Once they are done, they need to click **Save changes** to save the transaction. The transaction will be saved, and both the administrator and vendor balance will be re-calculated.

## Editing transactions
The store administrator can edit the Description, Income and Expense fields of: 
   * manually created transactions;
   * payout request transactions.
To edit a transaction, the administrator must click within the field that needs to be edited, make the changes they require, and save these changes using the **Save changes** button. Updating the contents of the Income and Expense fields will cause the money amounts on the administrator and vendor accounts to be re-calculated.   

Note that the administrator cannot delete previously created transactions. The recommended method of correcting transactions created in error is by creating corrective transactions.

## Handling payout requests
When a new payout request from a vendor comes in, the store administrator is notified about it by email (This is enabled by the "Vendor request for payment" {% link "email notification" ref_7DW1NMak %}). The administrator can see the request in the Vendor transactions section. A request is a pending transaction; it looks like a regular transaction, but its description says "Request for payout" and it has two buttons - Accept and Decline:
![xc5_mv_payout_request_in_admin.png]({{site.baseurl}}/attachments/ref_3uy1YgfD/xc5_mv_payout_request_in_admin.png)
If the administrator wants to make a payout based on a request, they need to use the Accept button. 
Once a payout request is accepted, it stops being a pending transaction and becomes a regular transaction (without the Accept/Decline buttons). The balance totals for both the administrator and vendor accounts are adjusted accordingly:
![xc5_mv_payout_request_accepted.png]({{site.baseurl}}/attachments/ref_3uy1YgfD/xc5_mv_payout_request_accepted.png)
If the administrator chooses to decline a payout request, they need to use the Decline button. Once this button is clicked, the request stops being a pending transaction and is marked as "Declined"; for example:
![xc5_mv_payout_request_declined_in_admin.png]({{site.baseurl}}/attachments/ref_3uy1YgfD/xc5_mv_payout_request_declined_in_admin.png)
If necessary, the administrator can do a partial payout. This can be done by creating a compensatory transaction. For example, if a vendor has requested a payout of $100, and the store owner wants to pay out $90 now and $10 at a later time, the administrator can accept the vendor's payout request for $100 and then create an additional transaction specifying $10 in the Income field. This way only $90 will be transferred to the vendor's balance, whereas the store owner will remain liable to pay $10 to the vendor at a later time. The comments to explain what amount is going where can be added via the Description field of the respective transactions.